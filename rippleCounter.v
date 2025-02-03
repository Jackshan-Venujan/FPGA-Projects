module up_down_counter (
    input clk,
    input reset,
    input up_down,  // 1 for up, 0 for down
    output [2:0] count
);
    reg [2:0] count_reg;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count_reg <= 3'b000;
        end else if (up_down) begin
            count_reg <= count_reg + 1;
        end else begin
            count_reg <= count_reg - 1;
        end
    end

    assign count = count_reg;

endmodule

