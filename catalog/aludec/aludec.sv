//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: YOUR NAMES
// 
//     Create Date: 2023-02-07
//     Module Name: aludec
//     Description: 32-bit RISC ALU decoder
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef ALUDEC
`define ALUDEC

`timescale 1ns/100ps

module aludec
    #(parameter n = 32)(
        input logic [3:0] funct,
        input logic [3:0] aluop, 
        output logic [3:0] alucontrol
    ):
    
    
    //
    // ---------------- PORT DEFINITIONS ----------------
    //

    //
    // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
    //
    always @* begin
        
    end
endmodule

`endif // ALUDEC