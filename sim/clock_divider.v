module clock_divider(
    input clk,
    input reset,
    output reg slow_clk
);

reg [24:0] counter;

always @(posedge clk or posedge reset) begin

    if (reset) begin
        counter <= 0;
        slow_clk <= 0;
    end

    else begin

        counter <= counter + 1;

        if(counter == 5) begin
            slow_clk <= ~slow_clk;
            counter <= 0;
        end

    end

end

endmodule