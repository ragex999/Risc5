// Progarm Counter Module
// Stores the address of the next instruction (8 bits/1 byte) to be executed 
//

module ProgramCounter(
    input logic clk, rst,
    input logic [7:0] pc_in, 
    output logic [7:0] pc_out,
    input logic pc_en
);
    // PC register
    logic [7:0] pc_reg;

    // PC register update
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            pc_reg <= 8'b0; // Reset PC to 0
        end else if (pc_en) begin
            pc_reg <= pc_in; // Update PC with input value
        end
    end

    // Output the current value of the PC register
    assign pc_out = pc_reg;
endmodule
