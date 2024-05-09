//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: Prof Rob Marano
// 
//     Create Date: 2023-02-07
//     Module Name: maindec
//     Description: 32-bit RISC-based CPU main decoder (MIPS)
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef MAINDEC
`define MAINDEC

`timescale 1ns/100ps

module maindec
    #(parameter n = 32)(
    //
    // ---------------- PORT DEFINITIONS ----------------
    //
    input  logic [3:0] op,
    output logic       memtoreg, memwrite,
    output logic       branch, alusrc,
    output logic       regdst, regwrite,
    output logic       jump,
    output logic [3:0] aluop
);
    //
    // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
    //
    logic [10:0] controls; // 9-bit control vector

    // controls has 9 logical signals
    assign {regwrite, regdst, alusrc, branch, memwrite,
            memtoreg, jump, aluop} = controls;

    always @* begin
        case(op)
            4'b0000: controls <= 11'b; // RTYPE
            4'b0001: controls <= 11'b; // ADDI
            4'b0010: controls <= 11'b; // subi
            4'b0100: controls <= 11'b; // LW
            4'b0101: controls <= 11'b; // SW
            4'b1000: controls <= 11'b; // beg
            4'b1001: controls <= 11'b; // JUMP
            default:   controls <= 9'bxxxxxxxxx; // illegal operation
        endcase
    end

endmodule

`endif // MAINDEC
