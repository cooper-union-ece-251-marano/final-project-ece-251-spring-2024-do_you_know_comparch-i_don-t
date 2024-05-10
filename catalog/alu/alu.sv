//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: YOUR NAMES
// 
//     Create Date: 2023-02-07
//     Module Name: alu
//     Description: 32-bit RISC-based CPU alu (MIPS)
//
// Revision: 1.0
// see https://github.com/Caskman/MIPS-Processor-in-Verilog/blob/master/ALU32Bit.v
//////////////////////////////////////////////////////////////////////////////////
`ifndef ALU
`define ALU

`timescale 1ns/100ps

module alu
    #(parameter n = 32)(
    input logic clk, 
    input logic [(n-1):0] srca,
    input logic [(n-1):0] srcb,
    input logic [3:0] alucontrol,
    output logic [(n-1):0] aluout,
    output logic zero
    
);

//
//ALUcode for each function
//add           0000
//sub           0001
//sll           0010
//slr           0011
//and           0100
//or            0101
//

always @* begin

    case(alucontrol)
    
        4'b0000: begin  //add
        aluout <= srca + srcb;
        end

        4'b0001: begin  //sub
        aluout <= srca - srcb;
        end

        4'b0010: begin   //sll
        aluout <= srca << srcb;
        end

        4'b0011: begin   //slr
        aluout <= srca >> srcb;
        end

        4'b0100: begin  //and
        aluout <= srca & srcb;
        end

        4'b0101: begin  //or
        aluout <= srca | srcb;
        end

        if (src-srcb) begin
            zero <= 1'b0;
        end else begin
            zero <= 1'b1;
        end

    endcase

end


endmodule

`endif // ALU
