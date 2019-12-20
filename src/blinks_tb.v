`timescale 1ns/1ns
module blinks_tb;

reg  clk, rst;
wire led0, led1, led2, led3, led4, led5, led6, led7, led8, led9, led10, led11, led12, led13, led14, led15, led16, led17;

Blinks_blinks blinks(clk, rst, led0, led1, led2, led3, led4, led5, led6, led7, led8, led9, led10, led11, led12, led13, led14, led15, led16, led17);


initial begin
  $dumpfile("blinks_test.vcd");
  $dumpvars(1, blinks_tb);

  #0 clk = 1;
  #50 rst = 1;
  #50 rst = 0;

  #2000 $finish;
  // #2000 $stop;
end

always begin
  #25 clk = ~clk;
end

endmodule
