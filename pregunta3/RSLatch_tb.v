`timescale 1ns/1ns
module RSLatch_tb;
	reg		r,s;
	wire	q,qn;
	
	RSLatch test(.r(r),.s(s),.q(q),.qn(nq));

	initial begin
		r=0;s=0;
		#1
		r=0;s=1;
		#1
		r=1;s=1;
		#1
		r=1;s=0;
		#1
		r=1;s=1;
		#1
		r=0;s=0;
	end

	initial begin
		$dumpfile("RSLatch_tb.vcd");
		$dumpvars;
	end

endmodule


