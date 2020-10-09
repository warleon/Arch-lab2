module RSLatch(r,s,q,qn);
	input r,s;
	output reg q,qn;

	//assign q=~(s&nq);
	//assign nq=~(r&q);

	always @(r,s)begin
			if(s == 0 & r==1)
	           begin
                q <= 1;
                qn <= 0;
	           end
            else if(r == 0 & s==1)
	           begin
                q <= 0;
                qn <= 1;
	           end
            else if (s == 1  & r == 1)
	           begin
	       	    q <= q;
                qn<= qn;
			end
			else if(s==0 & r==0)
			begin
				q=1;
				qn=1;
			end
			else
			begin
				q=0;
				qn=1;
			end
			
		end

endmodule

