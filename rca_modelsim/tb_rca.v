`timescale 1ns/1ps

module tb_rca;

    // Parameters (adjust width as per your RCA)
    parameter WIDTH = 4;

    // Inputs
    reg [WIDTH-1:0] a, b;
    reg cin;

    // Outputs
    wire [WIDTH-1:0] sum;
    wire cout;

    // Instantiate the RCA module (replace 'rca' with your module name if different)
    rca #(WIDTH) uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

initial begin
        $dumpfile("tb_rca.vcd");
        $dumpvars(1, tb_rca);
    end

    initial begin
      //  $dumpfile("tb_rca.vcd");
      //  $dumpvars(1, tb_rca);
$monitor($time, "a=%b b=%b cin=%b cout=%b sum=%b",a,b,cin,cout,sum);
        // Test vectors
        a = 4'b0000; b = 4'b0000; cin = 0; #10;
        a = 4'b0011; b = 4'b0101; cin = 0; #10;
        a = 4'b1111; b = 4'b0001; cin = 1; #10;
        a = 4'b1010; b = 4'b0101; cin = 0; #10;
        a = 4'b1111; b = 4'b1111; cin = 1; #10;

        $finish;
    end

endmodule