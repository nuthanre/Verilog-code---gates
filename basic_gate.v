module basic_gates(not_out, and_out, or_out, buff_out, xor_out, xnor_out, a, b);

output not_out, and_out, or_out, buff_out, xor_out, xnor_out;     //ports declaration
input a, b;

assign not_out = ~a;
assign and_out = a & b;
assign or_out = a | b;
assign buff_out = a;
assign xor_out = a ^ b;
assign xnor_out = ~(a ^ b);

endmodule
