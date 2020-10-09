module TLatch(t,c,q,qn);
	input t,c;
	output q,qn;

	wire r,s;

	assign #1 s=~(c&t&qn);
	assign #1 r=~(c&t&q);

	RSLatch rs(.r(r),.s(s),.q(q),.qn(qn));

endmodule

