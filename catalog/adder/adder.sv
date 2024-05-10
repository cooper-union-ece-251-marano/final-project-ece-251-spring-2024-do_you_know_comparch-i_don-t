//////////////////////////////////////////////////////////////////////////////////
// The Cooper Union
// ECE 251 Spring 2024
// Engineer: YOUR NAMES
// 
//     Create Date: 2023-02-07
//     Module Name: adder
//     Description: simple behavorial adder
//
// Revision: 1.0
//
//////////////////////////////////////////////////////////////////////////////////
`ifndef ADDER
`define ADDER

`timescale 1ns/100ps

module adder
    #(parameter n = 32)(
    input logic [(n-1):0] a
    input logic [(n-1):0] b
    output logic [(n-1):0] addrlt

);
    //
    // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
    //

always @* begin

addrlt <= a + b

end

endmodule

`endif // ADDER