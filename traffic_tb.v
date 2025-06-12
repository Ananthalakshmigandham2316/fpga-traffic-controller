`timescale 1ns/1ps

module tb;

    reg clk = 0;
    reg reset;
    wire [2:0] NS, EW;

    traffic_controller uut (
        .clk(clk),
        .reset(reset),
        .NS(NS),
        .EW(EW)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(1, tb);  // ✅ Ensure all top-level tb signals are dumped

        reset = 1;
        #10;
        reset = 0;

        #300;
        $finish;
    end

endmodule
