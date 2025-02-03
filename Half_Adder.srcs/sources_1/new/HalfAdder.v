`timescale  1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/06/2024 04:10:21 PM
// Design Name: 
// Module Name: HalfAdder
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


module HalfAdder(s,c,a,b);
input a,b;
output s,c;

//  gate level implementation
xor (s,a,b);
and (c,a,b);
endmodule


/*
module HalfAdder(
    input A,B,
    output sum,Cout
);

assign sum = A ^ B;
assign Cout = A & B;

endmodule
*/





// BEHAVIORAL LEVEL DESCRIPTION
/*module HalfAdder(
    input A, B,
    output reg sum, Cout
);

// Behavioral level using an always block
always @ (A or B) begin
    sum = A ^ B;       // XOR operation for sum
    Cout = A & B;      // AND operation for carry-out
end
endmodule
*/