`timescale 1ns/1ns
module DLatch_tb;
	reg		d,e;
	wire	q,qn;

	DLatch test(.d(d),.e(e),.q(q),.qn(qn));
	
	initial begin
		e=1;d=1;
		#1
		e=1;d=0;
		#1
		e=0;d=1;
	end

	initial begin
		$dumpfile("DLatch_tb.vcd");
		$dumpvars;
	end

endmodule


