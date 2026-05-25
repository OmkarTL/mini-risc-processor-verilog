module control_unit(
    input [3:0] opcode,
    output reg [1:0] alu_sel,
    output reg reg_write
);

always @(*) begin

    case(opcode)

        4'b0000: begin
            alu_sel = 2'b00;
            reg_write = 1'b1;
        end

        4'b0001: begin
            alu_sel = 2'b01;
            reg_write = 1'b1;
        end

        4'b0010: begin
            alu_sel = 2'b10;
            reg_write = 1'b1;
        end

        4'b0011: begin
            alu_sel = 2'b11;
            reg_write = 1'b1;
        end

        default: begin
            alu_sel = 2'b00;
            reg_write = 1'b0;
        end

    endcase

end

endmodule