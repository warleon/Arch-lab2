module DLatch(d,e,q,qn);
	input d,e;
	output q,qn;

	wire r,s;

	assign s=~(e&d);
	assign r=(e&~s);

	RSLatch rs(.r(r),.s(s),.q(q),.qn(qn));

endmodule

