`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2026 11:21:18 AM
// Design Name: 
// Module Name: RCA_16
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


module RCA_16(
    input [15:0]a,b,
    input cin,
    output [15:0]s,
    output c
    );
    wire cout1,cout2,cout3;
    RCA x1(a[3:0],b[3:0],cin,s[3:0],cout1);
    RCA x2(a[7:4],b[7:4],cout1,s[7:4],cout2);
    RCA x3(a[11:8],b[11:8],cout2,s[11:8],cout3);
    RCA x4(a[15:11],b[15:11],cout3,s[15:11],c);
    
endmodule
