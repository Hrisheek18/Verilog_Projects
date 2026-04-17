`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2026 10:50:27 AM
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;
    reg [15:0]x,y;
    reg z;
    wire [15:0]s;
    wire c;
    RCA_16 x1(x,y,z,s,c);
    initial
    begin
    #5;
    x=16'h0000;
    y=16'h1011;
    z=1'b1;
    #5;
    x=16'h1001;
    y=16'h0111;
    z=1'b0;
    #5;
    x=16'h1111;
    y=16'h0000;
    z=1'b1;
    #10;
    
    $finish;
    end  
endmodule
