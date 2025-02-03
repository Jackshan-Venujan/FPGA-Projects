`timescale 1ns / 1ps

module binaryCounter4Bit(
    input RESET, CLK, 
    output reg [3:0] COUNT
    );
    
    always @ (posedge CLK) begin
        if(RESET == 0)
                COUNT <= 0;
        else begin
                if(COUNT == 4'b1010)
                        COUNT <= 0;
                else
                        COUNT <= COUNT + 1;               
        end
     end   
endmodule
