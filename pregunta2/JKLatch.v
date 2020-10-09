module JKLatch(j,k,c,q,nq);
	input j,k,c;
	output q,nq;


	//assign q=(~c&q)|(~k&q)|(~q&c&j);
	//assign nq=(~c&nq)|(~j&nq)|(k&~nq&c);
	//assign #1 q=(~k&~nq)|(nq&c&j)|(~c&~nq);
	//assign #1 nq=(~q&~c)|(~j&~q)|(c&k&q);
	//assign nq=~q;

	wire r,s;

	assign #1 s=~(c&j&nq);
	assign #1 r=~(c&k&q);

	RSLatch rs(.r(r),.s(s),.q(q),.qn(nq));

endmodule

