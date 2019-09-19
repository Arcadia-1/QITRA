`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/18 14:04:42
// Design Name: 
// Module Name: dds_controller
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

//输入要改动的参数类型（幅度、频率、相位）和数值（16位）
module dds_controller(
    input clk,
    input rst,
    input [`ModeWidth] type,
    input [`DataWidth] data_in,
    output [`DDSWidth] sig_to_dds_out  //18 bit parellel data output
    );
    reg [`ByteWidth] sig_to_dds_data;           //D[15:0]
    reg [`ModeWidth] sig_to_dds_address;        //F[1:0]
    assign sig_to_dds_out = {sig_to_dds_data,sig_to_dds_address};
    
//    F[1:0]=00, D=[15:2], 14 bit Amplitude
//    F[1:0]=01, D=[15:0], 16 bit Phase
//    F[1:0]=10, D=[15:0], 32 bit Frequency
//          controlled by FM gain word, address = CFR2[3:0], Control Function Register(0x01)
//    F[1:0]=11, D=[15:8][7:0], 8 bit Amplitude and 8 bit Phase
    
    
    //需要写入CFR寄存器
    //确定范围，如果频率超出16位所能控制的范围，就需要改变 FM gain word
    always @ (posedge clk) begin
        if () begin
        end
    end
    
    always @ (posedge clk) begin
        if () begin
        end
    end
    
    always @ (posedge clk) begin
        if () begin
        end
    end
    
    always @ (posedge clk) begin
        if (rst == `RstEnable) begin
            sig_to_dds_data <= 16'h0000;
            sig_to_dds_address <= 2'b00;
        end else begin
            case (type)
                `AMPLITUDE: begin
                    sig_to_dds_data <= {data_in[15:2],2'b00};
                end
                
                `PHASE: begin
                    sig_to_dds_data <= data_in;
                end
                
                `FREQUENCY: begin
                    sig_to_dds_data <= data_in;
                end
                
                `AMP_PHASE: begin
                    sig_to_dds_data <= data_in;
                end
                
                default: begin end
            endcase
        end
    end
    
endmodule
