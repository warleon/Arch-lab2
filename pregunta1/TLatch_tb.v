`timescale 1ns/1ns
module TLatch_tb;
	reg		c,t;
	wire	q,qn;
	integer i;

	
	TLatch test(.t(t),.c(c),.q(q),.qn(qn));
	initial begin
		c=0;
		for(i=0;i<8;i=i+1) begin
			#1
			assign c=~c;
		end
	end

	initial begin
		t=1;
		#1
		for(i=0;i<8;i=i+1) begin
			#1
			assign t=~t;
		end
	end

	initial begin
		$dumpfile("TLatch_tb.vcd");
		$dumpvars;
	end

endmodule


