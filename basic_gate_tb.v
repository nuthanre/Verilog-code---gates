module basic_tb();                 

reg a, b;
wire not_out, and_out, or_out, buff_out, xor_out, xnor_out;

basic_gates inst(.a(a), .b(b), .not_out(not_out), .and_out(and_out), .or_out(or_out), .buff_out(buff_out), .xor_out(xor_out), .xnor_out(xnor_out));

initial                            // different test cases to check funcionality
 begin
            a = 1'b0; b = 1'b0;
	#10 a = 1'b0; b = 1'b1;
	#10 a = 1'b1; b = 1'b0;
	#10 a = 1'b1; b = 1'b1;
	 
	#10 $finish;
 end

initial
	$monitor($time," ns, a = %b, b = %b, not_out = %b, and_out = %b, or_out = %b, buff_out = %b, xor_out = %b, xnor_out = %b", a, b, not_out, and_out, or_out, buff_out, xor_out, xnor_out);  // to print the output

initial
 begin
	$dumpfile("basic_gate_tb.vcd");
	$dumpvars;
 end
endmodule
