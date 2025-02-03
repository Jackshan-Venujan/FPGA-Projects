module testbench;
    reg clk, reset, up_down;
    wire [2:0] count;
    up_down_counter udc ( .clk(clk), .reset(reset), .up_down(up_down), .count(count));
    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    // Stimulus
    initial begin
        // Initialize inputs
        reset = 1;
        up_down = 1;
        #10 reset = 0;
        #50 up_down = 1;
        #50 up_down = 0;
        #30 reset = 1;
        #10 reset = 0;
        #100 $finish;
    end

    initial begin
        $monitor("At time %t, count = %d, up_down = %b", $time, count, up_down);
    end

    initial begin
        $dumpfile("waveform.vcd");
        $dumpvars(0, testbench);
    end

endmodule

