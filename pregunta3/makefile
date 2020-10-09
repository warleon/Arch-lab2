RSlatchFiles = RSLatch.v RSLatch_tb.v
TFlipFlopFiles = TFlipFlop_tb.v TFlipFlop.v TLatch.v RSLatch.v
DLatchFiles= DLatch.v DLatch_tb.v RSLatch.v

DLatch:
	iverilog -o DLatch ${DLatchFiles}
	./DLatch
	gtkwave DLatch_tb.vcd
	rm Dlatch
	rm DLatch_tb.vcd


RSLatch:
	iverilog -o rslatch ${RSlatchFiles}
	./rslatch
	gtkwave RSLatch_tb.vcd
	rm rslatch
	rm RSLatch_tb.vcd

TFlipFlop:
	iverilog -o TFlipFlop ${TFlipFlopFiles}
	./TFlipFlop
	gtkwave TFlipFlop_tb.vcd
	rm TFlipFlop
	rm TFlipFlop_tb.vcd
