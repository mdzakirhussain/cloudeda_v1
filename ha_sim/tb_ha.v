`timescale 1ns/1ps

module tb_ha;

    // Inputs
    reg a;
    reg b;

    // Outputs
    wire sum;
    wire carry;

    // Instantiate the Half Adder (replace 'ha' with your module name if different)
    ha uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("tb_ha.vcd");
        $dumpvars(0, tb_ha);

        $display("A B | SUM CARRY");
        $display("--------------");
        // Test all input combinations
        a = 0; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 0; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 0; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        a = 1; b = 1; #10;
        $display("%b %b |  %b    %b", a, b, sum, carry);

        $finish;
    end

endmodule