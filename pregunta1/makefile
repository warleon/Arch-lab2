RSlatchFiles = RSLatch.v RSLatch_tb.v
TlatchFiles = TLatch_tb.v RSLatch.v TLatch.v

RSLatch:
	iverilog -o rslatch ${RSlatchFiles}
	./rslatch
	gtkwave RSLatch_tb.vcd
	rm rslatch
	rm RSLatch_tb.vcd

TLatch:
	iverilog -o Tlatch ${TlatchFiles}
	./Tlatch
	gtkwave TLatch_tb.vcd
	rm Tlatch
	rm TLatch_tb.vcd
