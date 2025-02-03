`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2024 04:30:01 PM
// Design Name: 
// Module Name: HalfAdder_tb
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


module HalfAdder_tb;
    // Inputs
    reg a;
    reg b;
    
    // Outputs
    wire s;
    wire c;

    //Instantiate the Unit Under test (UUT)
    HalfAdder uut (
        .s(s),
        .c(c),
        .a(a), 
        .b(b)   
    );
    
    initial begin
    // Initialize Inputs
    //a = 0'b0;
    //b = 0'b0;
    #2 a=1'b0;  b=1'b0;
    #2 a=1'b0;  b=1'b1;
    #2 a=1'b1;  b= 1'b0;
    #2 a=1'b1;  b=1'b1;
    #2 a=1'b0;  b=1'b0;
    #2 a=1'b1;  b=1'b1;
 
end
    initial $monitor("time=%g, s=%b, c=%b, a=%b, b=%b", $time,s,c,a,b);
    initial #14 $finish;
endmodule


/*
module HalfAdder_tb();
    reg a,b;
    wire s,c;
    
    HalfAdder dut (.A(a), .B(b), .sum(s), .Cout(c));
    
    initial begin
        #10 a = 0; b = 0;
        #10 a = 0; b = 1;
        #10 a = 1; b = 0;
        #10 a = 1; b = 1;
        #10 a = 0; b = 0;
        #10 $finish;    // End simulation
    end
endmodule
*/