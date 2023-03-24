#include <xc.h>
#include <device.h>
#include <definitions.h>

void configureA(uint8_t config, uint8_t shdn){
    if(shdn){
        A_GP0_Clear();
        A_GP1_Clear();
        A_GP2_Clear();
        A_SHDN_Set();
        return;
    }
    if(config & 0x01){
        A_GP0_Set();
    } 
    else{
        A_GP0_Clear();
    }
    if(config & 0x02){
        A_GP1_Set();
    }
    else{
        A_GP1_Clear();
    }
    
    if(config & 0x04){
        A_GP2_Set();
    }
    else{
        A_GP2_Clear();
    }
    return;
}

void configureB(uint8_t config, uint8_t shdn){
    if(shdn){
        B_GP0_Clear();
        B_GP1_Clear();
        B_GP2_Clear();
        B_SHDN_Set();
        return;
    }
    if(config & 0x01){
        B_GP0_Set();
    } 
    else{
        B_GP0_Clear();
    }
    if(config & 0x02){
        B_GP1_Set();
    }
    else{
        B_GP1_Clear();
    }
    
    if(config & 0x04){
        B_GP2_Set();
    }
    else{
        B_GP2_Clear();
    }
    return;
    return;
}

void configureC(uint8_t config, uint8_t shdn){
    if(shdn){
        C_GP0_Clear();
        C_GP1_Clear();
        C_GP2_Clear();
        C_SHDN_Set();
        return;
    }
    if(config & 0x01){
        C_GP0_Set();
    } 
    else{
        C_GP0_Clear();
    }
    
    if(config & 0x02){
        C_GP1_Set();
    }
    else{
        C_GP1_Clear();
    }
    
    if(config & 0x04){
        C_GP2_Set();
    }
    else{
        A_GP2_Clear();
    }
    return;
}

void configureD(uint8_t config, uint8_t shdn){
    if(shdn){
        D_GP0_Clear();
        D_GP1_Clear();
        D_GP2_Clear();
        D_SHDN_Set();
        return;
    }
    if(config & 0x01){
        D_GP0_Set();
    } 
    else{
        D_GP0_Clear();
    }
    if(config & 0x02){
        D_GP1_Set();
    }
    else{
        D_GP1_Clear();
    }
    
    if(config & 0x04){
        D_GP2_Set();
    }
    else{
        D_GP2_Clear();
    }
    return;
}