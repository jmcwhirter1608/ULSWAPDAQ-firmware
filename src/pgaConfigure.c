#include <xc.h>
#include <device.h>
#include <definitions.h>

void configurePGA1A(uint8_t config, uint8_t shdn){
    if(shdn){
        PGA1G0A_Clear();
        PGA1G1A_Clear();
        PGA1G2A_Clear();
        PGA1SHDNA_Set();
        return;
    }
    if(config & 0x01){
        PGA1G0A_Set();
    } 
    else{
        PGA1G0A_Clear();
    }
    if(config & 0x02){
        PGA1G1A_Set();
    }
    else{
        PGA1G1A_Clear();
    }
    
    if(config & 0x04){
        PGA1G2A_Set();
    }
    else{
        PGA1G2A_Clear();
    }
    return;
}

void configurePGA1B(uint8_t config, uint8_t shdn){
    if(shdn){
        PGA1G0B_Clear();
        PGA1G1B_Clear();
        PGA1G2B_Clear();
        PGA1SHDNB_Set();
        return;
    }
    if(config & 0x01){
        PGA1G0B_Set();
    } 
    else{
        PGA1G0B_Clear();
    }
    if(config & 0x02){
        PGA1G1B_Set();
    }
    else{
        PGA1G1B_Clear();
    }
    
    if(config & 0x04){
        PGA1G2B_Set();
    }
    else{
        PGA1G2B_Clear();
    }
    return;
    return;
}

void configurePGA2A(uint8_t config, uint8_t shdn){
    if(shdn){
        PGA2G0A_Clear();
        PGA2G1A_Clear();
        PGA2G2A_Clear();
        PGA2SHDNA_Set();
        return;
    }
    if(config & 0x01){
        PGA2G0A_Set();
    } 
    else{
        PGA2G0A_Clear();
    }
    
    if(config & 0x02){
        PGA2G1A_Set();
    }
    else{
        PGA2G1A_Clear();
    }
    
    if(config & 0x04){
        PGA2G2A_Set();
    }
    else{
        PGA1G2A_Clear();
    }
    return;
}

void configurePGA2B(uint8_t config, uint8_t shdn){
    if(shdn){
        PGA2G0B_Clear();
        PGA2G1B_Clear();
        PGA2G2B_Clear();
        PGA2SHDNB_Set();
        return;
    }
    if(config & 0x01){
        PGA2G0B_Set();
    } 
    else{
        PGA2G0B_Clear();
    }
    if(config & 0x02){
        PGA2G1B_Set();
    }
    else{
        PGA2G1B_Clear();
    }
    
    if(config & 0x04){
        PGA2G2B_Set();
    }
    else{
        PGA2G2B_Clear();
    }
    return;
}