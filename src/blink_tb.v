`timescale 1ns/1ns
module blink_tb;

reg  clk, rst;
wire led;

Blink_blink blink(clk, rst, led);
 

initial begin
  // $dumpfile("blink_test.vcd");
  // $dumpvars(1, blink_tb);

  #0 clk = 1;
  #50 rst = 1;
  #50 rst = 0;

  // #100 $finish;
  #2000 $stop;
end

always begin
  #25 clk = ~clk;
end

endmodule
