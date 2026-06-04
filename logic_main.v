// Common Logic Gates Module
module logic_gates(

    input a,
    input b,

    output and_y,
    output or_y,
    output not_y,
    output nand_y,
    output nor_y,
    output xor_y

);

// AND gate
assign and_y = a & b;

// OR gate
assign or_y = a | b;

// NOT gate
assign not_y = ~a;

// NAND gate
assign nand_y = ~(a & b);

// NOR gate
assign nor_y = ~(a | b);

// XOR gate
assign xor_y = a ^ b;

endmodule
