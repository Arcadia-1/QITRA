`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/18 14:05:09
// Design Name: 
// Module Name: defines
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module defines;
    //全局宏定义
    `define True                1'b1            //True
    `define False               1'b0            //False
    
    `define High                1'b1            //High
    `define Low                 1'b0            //Low    
    
    `define RstEnable           1'b1            //复位信号有效
    `define RstDisable          1'b0            //复位信号无效
    
    `define WriteEnable         1'b1            //写使能
    `define WriteDisable        1'b0            //写禁止
    
    `define ReadEnable          1'b1            //读使能
    `define ReadDisable         1'b0            //读禁止
    
    `define InstValid           1'b0            //指令有效
    `define InstInvalid         1'b1            //指令无效
    
    `define ChipEnable          1'b1            //芯片有效
    `define ChipDisable         1'b0            //芯片禁止
    
    //与dds_controller有关的宏定义
    `define ByteWidth           7:0             //1 Byte = 8 bit
    `define DDSWidth            17:0            //17 bit
    `define ModeWidth           1:0             //4 bit
    `define DataWidth           15:0            //16 bit
    `define AMPLITUDE           2'b00           //14 bit Amplitude
    `define PHASE               2'b01           //16 bit Phase
    `define FREQUENCY           2'b10           //32 bit Frequency
    `define AMP_PHASE           2'b11           //8 bit Amplitude and 8 bit Phase
    
    
    //备用
    `define NoStall             1'b0            //不阻塞流水线
    `define Stall               1'b1            //阻塞流水线    
    `define DataAddrBus         31:0            //RAM的地址总线宽度
    `define DataBus             31:0            //RAM的数据总线宽度    
    `define DataMemNum          110             //ROM的实际大小为64B
    `define DataMemNumLog2      8               //ROM实际使用的地址线宽度
    `define Interrupt           1'b1            //发生定时中断
    `define NoInterrupt         1'b0            //不发生定时中断
endmodule
