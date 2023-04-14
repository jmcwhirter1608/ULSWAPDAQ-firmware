/* ============================================================================*/
/**
 * @file main.c
 * @author John McWhirter
 * @date 11/2022
 * @brief main file for Data Acquisition Unit
 * 
*/
/* ============================================================================*/
/*! \mainpage Ultra Low Size Weight and Power Data Acquisition
 * 
 * \section Introduction
 * The following page will be a useful guide in navigating the comments and code
 *  of this project. The main function of the PIC32 programmed with this code is 
 *  to adjust the gains of each of the PGAs, Read and Write SPI messages to the 
 *  LTC2373 for data acquisition, and output the message onto UART. 
 * 
 * \section Gain Configuration Table
 * | config #| Gain dB | Gain V/V |
 * |---------|---------|----------|
 * |   0     |   -22   |   0.08   |
 * |   1     |   -16   |   0.16   |
 * |   2     |   -10   |   0.32   |
 * |   3     |    -4   |   0.63   |
 * |   4     |     2   |   1.26   |
 * |   5     |     8   |   2.52   |
 * |   6     |    14   |   5.01   |
 * |   7     |    20   |   10.0   |
 *   
 * \section Navigation
 * The Table of Contents to the Left will be the main tool for guiding through
 * this documentation. Notice the Files tab. The main.c file can be found in
 * Files > File List > firmware > src. In addition, here you will find most of 
 * the code I have written. In the config folder, you will find the MPLAB X IDE
 * Harmony v3 generated Modules for SPI, UART, GPIO, etc. 
*/
// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <stdio.h>
#include "definitions.h"                // SYS function prototypes
#include <string.h>
#include <pgaConfigure.h>


// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************

/**
 * These are defined to shutdown PGAs in use
 * True for Shutdown, False for On
 */
uint8_t A_shdn = 1;
uint8_t B_shdn = 1;
uint8_t C_shdn = 1;
uint8_t D_shdn = 0;


/*! 
 */

/**
 * PGA Configuration Members
 */
uint8_t A_config = 0;
uint8_t B_config = 0;
uint8_t C_config = 0;
uint8_t D_config = 4;

/**
 * Configuration word is used to switch the mux within the ADC
 * The word will work as our "State" machine
 * Note: It is not what is sent to the ADC. It is 4 bits in the word that will
 * be sent.
 */

uint8_t reset_word = 0;
uint16_t temp = 0;
bool next = false;
bool CNV_IsHigh = true;

char txBuffer[60];
//uint8_t rxBuffer[10];

bool tmr1_alarm = false;
void TMR1_InterruptRoutine(uint32_t status, uintptr_t context){
    tmr1_alarm = true;
}

bool tmr2_alarm = false;
void TMR2_InterruptRoutine(uint32_t status, uintptr_t context){
    tmr2_alarm = true;
}

bool tmr3_alarm = false;
void TMR3_InterruptRoutine(uint32_t status, uintptr_t context){
    tmr3_alarm = true;
}

//bool uart1_alarm = false;
//void UART1_InterruptRoutine(uint32_t status, uintptr_t context){
//    uart1_alarm = true;
//}

int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    /* Initialize TMR2 Callback Register for 10kHz Frequency*/
    TMR1_CallbackRegister(TMR1_InterruptRoutine, (uintptr_t) NULL);
    TMR2_CallbackRegister(TMR2_InterruptRoutine, (uintptr_t) NULL);
    TMR3_CallbackRegister(TMR3_InterruptRoutine, (uintptr_t) NULL);
    
//    UART1_WriteCallbackRegister(UART1_InterruptRoutine, (uintptr_t) NULL);
    
    
    TMR1_Start();
    TMR2_Start();
    TMR3_Start();
    
    /* Configure PGAs refer to PGA datasheet for combinations */
    configureA(A_config, A_shdn);
    configureB(B_config, B_shdn);
    configureC(C_config, C_shdn);
    configureD(D_config, D_shdn);
    
    RESET_Set();
    for(int i = 0; i < 100; i++);
    RESET_Clear();
    RDL_Set();
    
    
    
    /**
    * \section Possible Configuration Word Table
    * | channel | BINARY  | INTEGER  |
    * |---------|---------|----------|
    * |   A     | X010011 |     35   |
    * |   B     | X010111 |     39   |
    * |   C     | X011011 |     51   |
    * |   D     | X011111 |     55   |
    * @return 
    */
    int config_words[4] = {35 << 8, 39 << 8, 51 << 8, 55 << 8}; //0x01100111
//    char tx_buffer[30]; //"3.33 V, 2.70 V, 2.80V, 1.90V"
    uint8_t curr_channel = config_words[0];
    
    
    
    typedef enum{
                A,
                B,
                C,
                D,
                END_OF_LIST
    } CHANNEL; // 4 channels for the 4 different sensors
    CHANNEL CURR_CHANNEL = A;
    
//    float txdata[4];    
    
    typedef enum{
                        START,
                        CONVERSION,
                        WRSPI_STATE,
                        WAIT_SPI,
                        SEND_UART,
                        WAIT_UART,
                        WAIT_STATE_TMR1,
                        WAIT_STATE_TMR3,
                        BUSY_STATE,
                        END
    }STATE;
    
    STATE CURR_STATE = START;
    STATE NEXT_STATE = START;
    STATE AFTER_WAIT_STATE;
    uint16_t spi_data; // Used to store 2 bytes of data from ADC
    float txData[5];
    char txBuffer[200];
    
    while(true){
        
        switch(CURR_STATE){
            case START:
                tmr2_alarm = false;
                CNV_Set();
                AFTER_WAIT_STATE = CONVERSION;
                NEXT_STATE = WAIT_STATE_TMR1;
                tmr1_alarm = false;
                TMR1_Start();
            
            case CONVERSION:
                CNV_Clear();
                NEXT_STATE = BUSY_STATE;
                
            case BUSY_STATE:
                if(BUSY_Get() == false){
                    NEXT_STATE = WAIT_STATE_TMR3;
                    tmr3_alarm = false;
                    TMR3_Start();
                    AFTER_WAIT_STATE = WRSPI_STATE;
                    RDL_Clear();
                }
                else{
                    NEXT_STATE = BUSY_STATE;
                }
                
                
            
            case WRSPI_STATE:
                SPI1_WriteRead(&curr_channel, 2, &spi_data, 2);
                NEXT_STATE = WAIT_SPI;
            
            case WAIT_SPI:
                LED1_Set();
                if(SPI1_IsBusy() == false){
                    txData[CURR_CHANNEL] = spi_data / 65536.0 * 4.096;
                    if(CURR_CHANNEL != D){
                        NEXT_STATE = END;
                    }
                    else{
                        NEXT_STATE = SEND_UART;
                    }
                }
                else{
                    NEXT_STATE = WAIT_SPI;
                }
                
            case SEND_UART:
                sprintf(txBuffer, "%0.2f,%0.2f,%0.2f,%0.2f\r\n", txData[0], txData[1], txData[2], txData[3]);
                UART1_Write(&txBuffer, strlen(txBuffer));
                NEXT_STATE = WAIT_UART;
                
            case WAIT_UART: // Not sure if I want to wait for UART
                if(UART1_TransmitComplete()){ // probably more reliable than UART1_WriteIsBusy())
                    NEXT_STATE = END;
                }
                else {
                    NEXT_STATE = WAIT_UART;
                }
            
            case WAIT_STATE_TMR1:
                if(tmr1_alarm){
                    NEXT_STATE = AFTER_WAIT_STATE;
                    TMR1_Stop();
                }
                else{
                    NEXT_STATE = WAIT_STATE_TMR1;
                }
                
            case WAIT_STATE_TMR3:
                if(tmr3_alarm){
                    NEXT_STATE = AFTER_WAIT_STATE;
                    TMR3_Stop();
                }
                else{
                    NEXT_STATE = WAIT_STATE_TMR3;
                }
                
            case END:
                RDL_Set();
                if(tmr2_alarm){
                    NEXT_STATE = START;
//                    TMR2_Stop();
                    tmr2_alarm = false;
                    CURR_CHANNEL = CURR_CHANNEL + 1;
                    if(CURR_CHANNEL == END_OF_LIST){
                        CURR_CHANNEL = A;
                    }
                }
                else{
                    NEXT_STATE = END;
                }
                
        }
        
        CURR_STATE = NEXT_STATE; 
    }
    //
    
    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/
