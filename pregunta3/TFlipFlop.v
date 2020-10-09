module TFlipFlop(set,reset,t,c,q,qn);
	input t,c;
	output reg q,qn;

	TLatch T(.t(t),.c(c),.q(q),.qn(qn));
	//DLatch T(.d(d),.e(c),.q(q),.qn(qn));
	
	always @(posedge c)begin
		if(set==1 & reset==0)
		begin	q=1;qn=0; end
		else if(set==0 & reset==1)
		begin	q=0;qn=1; end
		else if(set==1 & reset==1)
			//pendiente
	end

endmodule

