module rca #(parameter N = 8) (
    input  [N-1:0] a,
    input  [N-1:0] b,
    input          cin,
    output [N-1:0] sum,
    output         cout
);

    wire [N:0] carry;
    assign carry[0] = cin;

    genvar i;
    generate
        for (i = 0; i < N; i = i + 1) begin : full_adder_block
            assign {carry[i+1], sum[i]} = a[i] + b[i] + carry[i];
        end
    endgenerate

    assign cout = carry[N];

endmodule