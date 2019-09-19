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
    //ȫ�ֺ궨��
    `define True                1'b1            //True
    `define False               1'b0            //False
    
    `define High                1'b1            //High
    `define Low                 1'b0            //Low    
    
    `define RstEnable           1'b1            //��λ�ź���Ч
    `define RstDisable          1'b0            //��λ�ź���Ч
    
    `define WriteEnable         1'b1            //дʹ��
    `define WriteDisable        1'b0            //д��ֹ
    
    `define ReadEnable          1'b1            //��ʹ��
    `define ReadDisable         1'b0            //����ֹ
    
    `define InstValid           1'b0            //ָ����Ч
    `define InstInvalid         1'b1            //ָ����Ч
    
    `define ChipEnable          1'b1            //оƬ��Ч
    `define ChipDisable         1'b0            //оƬ��ֹ
    
    //��dds_controller�йصĺ궨��
    `define ByteWidth           7:0             //1 Byte = 8 bit
    `define DDSWidth            17:0            //17 bit
    `define ModeWidth           1:0             //4 bit
    `define DataWidth           15:0            //16 bit
    `define AMPLITUDE           2'b00           //14 bit Amplitude
    `define PHASE               2'b01           //16 bit Phase
    `define FREQUENCY           2'b10           //32 bit Frequency
    `define AMP_PHASE           2'b11           //8 bit Amplitude and 8 bit Phase
    
    
    //����
    `define NoStall             1'b0            //��������ˮ��
    `define Stall               1'b1            //������ˮ��    
    `define DataAddrBus         31:0            //RAM�ĵ�ַ���߿��
    `define DataBus             31:0            //RAM���������߿��    
    `define DataMemNum          110             //ROM��ʵ�ʴ�СΪ64B
    `define DataMemNumLog2      8               //ROMʵ��ʹ�õĵ�ַ�߿��
    `define Interrupt           1'b1            //������ʱ�ж�
    `define NoInterrupt         1'b0            //��������ʱ�ж�
endmodule
