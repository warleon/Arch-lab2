`timescale 1ns/1ns
module JKLatch_tb;
	reg		c,j,k;
	wire	q,nq;
	//integer i;
	
	JKLatch test(.j(j),.k(k),.c(c),.q(q),.nq(nq));

	initial begin
		j=1;k=0;c=1;
		#1
		j=0;k=1;c=1;
		#1
		j=0;k=0;c=1;
		#1
		j=1;k=0;c=1;
		#1
		j=1;k=1;c=1;
		#1
		j=1;k=1;c=0;

	end

	initial begin
		$dumpfile("JKLatch_tb.vcd");
		$dumpvars;
	end

endmodule


