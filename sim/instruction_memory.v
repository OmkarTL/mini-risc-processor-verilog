module instruction_memory(
    input [7:0] address,
    output [15:0] instruction
);

reg [15:0] memory [255:0];

initial begin

    // Example Instructions

    memory[0] = 16'b0000_00_01_10_000000; // ADD
    memory[1] = 16'b0001_00_01_10_000000; // SUB
    memory[2] = 16'b0010_00_01_10_000000; // AND
    memory[3] = 16'b0011_00_01_10_000000; // OR

end

assign instruction = memory[address];

endmodule