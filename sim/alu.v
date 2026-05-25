module alu(
    input  [7:0] A,
    input  [7:0] B,
    input  [1:0] ALU_Sel,
    output reg [7:0] Result
);

always @(*) begin
    case(ALU_Sel)

        2'b00: Result = A + B; // ADD

        2'b01: Result = A - B; // SUB

        2'b10: Result = A & B; // AND

        2'b11: Result = A | B; // OR

        default: Result = 8'b00000000;

    endcase
end

endmodule