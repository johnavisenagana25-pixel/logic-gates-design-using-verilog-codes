// Common Testbench for Logic Gates
module testbench;

// Inputs
reg a;
reg b;

// Outputs
wire and_y;
wire or_y;
wire not_y;
wire nand_y;
wire nor_y;
wire xor_y;

// Instantiate module
logic_gates uut(

    .a(a),
    .b(b),

    .and_y(and_y),
    .or_y(or_y),
    .not_y(not_y),
    .nand_y(nand_y),
    .nor_y(nor_y),
    .xor_y(xor_y)

);

// Simulation block
initial begin

    // Create waveform file
    $dumpfile("dump.vcd");

    // Dump variables
    $dumpvars(0, testbench);

    // Display outputs
    $monitor(
    "A=%b B=%b | AND=%b OR=%b NOT=%b NAND=%b NOR=%b XOR=%b",
    a,b,and_y,or_y,not_y,nand_y,nor_y,xor_y
    );

    // Test case 1
    a = 0;
    b = 0;
    #10;

    // Test case 2
    a = 0;
    b = 1;
    #10;

    // Test case 3
    a = 1;
    b = 0;
    #10;

    // Test case 4
    a = 1;
    b = 1;
    #10;

    // End simulation
    $finish;

end

endmodule
