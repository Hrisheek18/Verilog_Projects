`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2026 11:08:07 AM
// Design Name: 
// Module Name: RCA
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


module RCA(
    input [3:0]A,B,
    input Cin,
    output [3:0]S,
    output C
    );
    wire C1,C2,C3;
    full_adder x1(A[0],B[0],Cin,S[0],C1);
    full_adder x2(A[1],B[1],C1,S[1],C2);
    full_adder x3(A[2],B[2],C2,S[2],C3);
    full_adder x4(A[3],B[3],C3,S[3],C);


endmodule
