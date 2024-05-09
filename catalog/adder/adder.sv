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
    input logic [(n-1):0] pc
    input logic [(n-1):0] branch
    output logic [(n-1):0] adderresult

);
    //
    // ---------------- MODULE DESIGN IMPLEMENTATION ----------------
    //

always @* begin

end

endmodule

`endif // ADDER