`timescale 1ns / 1ps
/*
module DFF_tb;
    reg reset, set, en, clk, d;
    wire q;
    
    DFF uut (
            .RESET(reset),
            .SET(set),
            .EN(en),
            .CLK(clk),
            .D(d),
            .Q(q)
    );
    
    
    // This block generates a clock signal (clk) that toggles every 5 time units (ns), creating a clock period of 10 ns (5 ns for high, 5 ns for low).
    always #5 clk = ~clk;   
    
    initial  begin 
        $dumpfile ("DFF.vcd");          // Creates a output file to record simulation data
        $dumpvars;                              // Record all data in above file
        
        clk = 0; d = 0; reset= 0; set = 0; en = 0;
        #20 en = 1;                  // enable the ENABLE
        #10 reset = 0;           // set the RESET as HIGH
        #20 reset = 1;          // set the RESET to LOW
        #10 set = 1;           // set the SET as HIGH
        #20 set = 0;            // set the SET as LOW
        #10 d =1;                
        #10 d =0;
        #30 en = 0;
        #30 $finish;
   end      
endmodule
*/


module DFF_tb;
    reg reset, set, en, clk, d;
    wire q;

    // Instantiate the DFF module
    DFF uut (
        .RESET(reset),
        .SET(set),
        .EN(en),
        .CLK(clk),
        .D(d),
        .Q(q)
    );

    // Generate a clock signal with a period of 10ns
    always #5 clk = ~clk;

    initial begin
        $dumpfile ("DFF.vcd");          // Creates a waveform dump file
        $dumpvars;                      // Records all variables in the file

        // Initialize all inputs
        clk = 0; d = 0; reset = 1; set = 1; en = 0;

        // Test sequence
        #20 en = 1;                     // Enable the flip-flop
        #10 reset = 1;                  // Keep reset inactive (HIGH)
        #20 set = 1;                    // Deactivate SET (HIGH)
        #10 d = 0;                      // Set D to 0
        #10 set = 0;                    // Activate SET briefly to force Q = 1
        #10 set = 1;                    // Deactivate SET again
        #10 d = 1;                      // Set D to 1
        #10 d = 0;                      // Set D to 0 (observe behavior)
        #30 en = 0;                     // Disable the flip-flop
        #30 $finish;                    // End the simulation
    end
endmodule
