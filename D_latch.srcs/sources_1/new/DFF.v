`timescale 1ns / 1ps

// DFF with SET and RESET
module DFF(
    input RESET, SET, EN, CLK, D,
    output reg Q
  );
  
  initial Q = 1'b0;

  
  always @(posedge  CLK) begin              //  Considering every positive edge
        if(EN == 1) begin                               // If DFF is enabled, begin used for more than one statements
            if (RESET == 0)                              //  If RESET is pressed
                Q <= 1'b0;                                  // RESET Q as 0   --- RESET has higher priority
            else begin
                if(SET == 0)                                //  If SET is pressed
                    Q <= 1'b1;                               // SET Q as 0
                else
                    Q <= D;     
            end   
        end          
        else
            Q <= Q;
  end                       
endmodule
