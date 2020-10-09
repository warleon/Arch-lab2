RSlatchFiles = RSLatch.v RSLatch_tb.v
TlatchFiles = TLatch_tb.v RSLatch.v TLatch.v
JKlatchFiles = JKLatch_tb.v JKLatch.v RSLatch.v

RSLatch:
	iverilog -o rslatch ${RSlatchFiles}
	./rslatch
	gtkwave RSLatch_tb.vcd
	rm rslatch
	rm RSLatch_tb.vcd

JKLatch:
	iverilog -o JKlatch ${JKlatchFiles}
	./JKlatch
	gtkwave JKLatch_tb.vcd
	rm JKlatch
	rm JKLatch_tb.vcd
