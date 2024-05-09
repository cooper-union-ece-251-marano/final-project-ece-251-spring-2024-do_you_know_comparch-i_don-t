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
        case (aluop)
            4'b0001: begin
                alucontrol <= 4'b0000;
            end
            4'b0010: begin
                alucontrol <= 4'b0001;
            end

            4'b0100: begin
                alucontrol <= 4'b0000;
            end

            4'b0101: begin
                alucontrol <= 4'b0000;
            end

            4'b1000: begin
                alucontrol <= 4'b0001;
            end

            4'b0000: begin
                alucontrol <= funct;
            end

        endcase

    end
endmodule

`endif // ALUDEC