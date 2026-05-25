`timescale 1ns / 1ps

module risc_tb;

reg clk;
reg reset;

risc_top uut (
    .clk(clk),
    .reset(reset)
);

always #5 clk = ~clk;

initial begin

    clk = 0;
    reset = 1;

    #10;
    reset = 0;

    #100;

    $finish;

end

endmodule