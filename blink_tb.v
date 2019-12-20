module blink_tb;

reg  clk, rst;
wire led;

Blink_blink blink(clk, rst, led);


initial begin
  $dumpfile("blink_test.vcd");
  $dumpvars(1, blink_tb);

  #0 clk = 0; rst = 1;
  #2 rst = 0;

  #100 $finish;
end

always begin
  #2 clk = ~clk;
end

endmodule
