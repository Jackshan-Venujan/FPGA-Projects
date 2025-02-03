`timescale 1ns / 1ps

module binaryCounter4Bit_tb;
        reg reset,clk;
        wire [3:0] count;
        
        binaryCounter4Bit uut (
                .RESET(reset),
                .CLK(clk),
                .COUNT(count)
         );
         
         always #5 clk = ~clk;
         
         initial begin
                $dumpfile("binaryCounter4Bit.vcd");
                $dumpvars;
                clk=0;
                #10 reset=1;
                #100 reset=0;
                #10 $finish;
        end        
                     
endmodule
