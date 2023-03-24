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
uint8_t C_shdn = 0;
uint8_t D_shdn = 1;


/*! 
 */

/**
 * PGA Configuration Members
 */
uint8_t A_config = 0;
uint8_t B_config = 0;
uint8_t C_config = 4;
uint8_t D_config = 0;

/**
 * Configuration word is used to switch the mux within the ADC
 * The word will work as our "State" machine
 * Note: It is not what is sent to the ADC. It is 4 bits in the word that will
 * be sent.
 */
uint8_t config = 0;
uint8_t reset_word = 0;
uint16_t temp = 0;
bool next = false;
bool CNV_IsHigh = true;

void check_TMR2(uint32_t status, uintptr_t context){
    CNV_Clear();
    while(BUSY_Get());
    RDL_Clear();
    SPI1_Write(&reset_word, 1);
//    while(SPI1_IsBusy());
}

void reset_ADC(){
    RESET_Set();
    TMR3_Start();
}

void check_TMR3(uint32_t status, uintptr_t context){
    RESET_Clear();
    RDL_Set();
    CNV_Set();
    TMR2_Start();
}

void check_TMR1(uint32_t status, uintptr_t context){
    CNV_IsHigh = false;
    TMR1_Stop();
}

/**
 * main
 * @return 
 */
int main ( void )
{
    /* Initialize all modules */
    SYS_Initialize ( NULL );
    
    /* Initialize TMR2 Callback Register for 10kHz Frequency*/
//    TMR1_CallbackRegister(check_TMR1, (uintptr_t) NULL);
//    TMR2_CallbackRegister(check_TMR2, (uintptr_t) NULL);
//    TMR3_CallbackRegister(check_TMR3, (uintptr_t) NULL);
    
    /* Configure PGAs refer to PGA datasheet for combinations */
    configureA(A_config, A_shdn);
    configureB(B_config, B_shdn);
    configureC(C_config, C_shdn);
    configureD(D_config, D_shdn);
    
    RESET_Set();
    for(int i = 0; i < 100; i++);
    RESET_Clear();
    RDL_Set();
    
    uint16_t ch78config = (28 << 8 );
    while(true){
        
        CNV_Set();
//        while(!CNV_Get()); //Delay
        for(int i = 0; i < 500; i++);//Delay
        CNV_Clear();
//        for(int i = 0; i < 25; i++);//Delay
        while(BUSY_Get());
        RDL_Clear(); 
        for(int i = 0; i < 50; i++);
//        while(BUSY_Get());
        SPI1_WriteRead(&ch78config, 2, &temp, 2);
                       
        while(SPI1_IsBusy());
        RDL_Set();
        while(!RDL_Set());
//        CNV_Set();
//        RDL_Set();
//        for(int i = 0; i < 1000; i++);
//        CNV_Clear();
//        
//        while(BUSY_Get());
//        RDL_Clear();
//        SPI1_Read(&temp, 2);
//        while(SPI1_IsBusy());
        
        
        
    };
    
    /* Reset ADC */
//    reset_ADC();
//    
//    RESET_Set();
//    RESET_Clear();
//    RDL_Set();
//    CNV_Set();
//    for(int i = 0; i < 1000; i++);
//    CNV_Clear();
//    while(BUSY_Get());
//    RDL_Clear();
//    SPI1_Write(&reset_word, 1);
//    //while(SPI1_IsBusy());
//
//    RDL_Set();
//    while(true){
//        // Write Result onto UART1 
//        char tx_buffer[100];
//        sprintf(tx_buffer, "Hello World");
//        UART1_Write(&tx_buffer, strlen(tx_buffer));
//    };
//    
//    
//    /* Program Sequencer */
//
////    for( uint8_t i = 0; i < 15; i++){
////        // configuration word is config left shifted by 3 bits plus
////        //  the input range selection bits (10) and Digital Gain Compression (0)
////        uint8_t config_word = (i << 3) + 4; // 0x0AAAA100 where A is config
////        RDL_Set();
////        CNV_Set();
////        CNV_Clear();
////        while(BUSY_Get());
////        RDL_Clear();
////        SPI1_Write(&config_word, 1);
////        while(SPI1_IsBusy());
////    }
//    
//    /* Read From ADC*/
//    while ( true )
//    {
//        /**
//         * If statements will skip Mux channels if they are not populated
//         * Note: If we are on this state and this state's PGA is shutdown, skip
//         */
//        if(pga1A_shdn && config == 0){ 
//            config = config + 1; 
//        } 
//        if(pga1B_shdn && config == 1){
//            config = config + 1;
//        }
//        if(pga2A_shdn && config == 2){
//            config = config + 1;
//        }
//        if(pga2B_shdn && config == 3){
//            config = 0;
//        }
//        // configuration word is config left shifted by 3 bits plus
//        //  the input range selection bits (10) and Digital Gain Compression (0)
//        //uint8_t config_word = (config << 3) + 4; // 0x0AAAA100 where A is config
//        //RDL_Set();
//        //CNV_Set();
//        //CNV_Clear();
//        //while(BUSY_Get());
//        //RDL_Clear();
//        //SPI1_Write(&config_word, 1);
//        //while(SPI1_IsBusy());
//        
//        char miso_buff[3];
//        RDL_Set();
//        CNV_Set();
//        CNV_Clear();
//        while(BUSY_Get());
//        RDL_Clear();
//        SPI1_Read(&miso_buff, 3);
//        while(SPI1_IsBusy());
//        
//        // Split Received Buffer into Data and Configuration word
//        uint16_t rxdata = (miso_buff[2] << 8) + miso_buff[1];
//        
//        // Create float percentage of rxdata and multiply it by 
//        //  Input Range from Data Sheet [-4.096, 4.096]
//        float txdata = (rxdata / 65535.0) * 8.192 - 4.096;
//        
//        // Write Result onto UART1 
//        char tx_buffer[50];
//        sprintf(tx_buffer, "%0.2f", txdata);
//        UART1_Write(&tx_buffer, strlen(tx_buffer));
//        
//        // Increment config
//        config = config + 1; 
//        while(!next);
//        next = false;
//        /* Maintain state machines of all polled MPLAB Harmony modules. */
//        SYS_Tasks ( );
//    }
//
//    /* Execution should not come here during normal operation */

    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/
