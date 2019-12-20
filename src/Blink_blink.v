module Blink_blink
  (
    input wire clk,
    input wire rst,
    output reg led = 0
  );

  //localparams
  localparam Blink_blink_main_bz_b1_INIT = 0;
  localparam Blink_blink_main_bz_b1_S1 = 1;
  localparam Blink_blink_main_bz_b1_FINISH = 2;
  localparam Blink_blink_main_bz_L1_while2_S0 = 3;
  localparam Blink_blink_main_bz_L1_while2_S1 = 4;
  localparam Blink_blink_main_bz_L1_forelse6_S0 = 5;
  localparam Blink_blink_main_bz_L1_forelse6_S1 = 6;
  localparam Blink_blink_main_bz_L2_fortest4_S0 = 7;
  localparam Blink_blink_main_bz_L2_forbody5_S0 = 8;
  localparam Blink_blink_main_bz_L2_forbody5_S1 = 9;
  
  //signals: 
  wire blink_main_bz_c532_inl1;
  wire blink_main_bz_led_bit3;
  reg blink_main_bz_led_bit2;
  reg        [3:0] blink_main_bz_state;
  wire signed [31:0] blink_main_bz_i_inl14;
  wire signed [31:0] blink_main_bz_t530_inl1;
  wire signed [31:0] interval;
  reg signed [31:0] blink_main_bz_i_inl13;
  //combinations: 
  assign blink_main_bz_c532_inl1 = (blink_main_bz_i_inl13 < blink_main_bz_t530_inl1);
  assign blink_main_bz_i_inl14 = (blink_main_bz_i_inl13 + 1);
  assign blink_main_bz_led_bit3 = (1 - blink_main_bz_led_bit2);
  assign blink_main_bz_t530_inl1 = (interval / 2);
  assign interval = 10;
  
  always @(posedge clk) begin
    if (rst) begin
      blink_main_bz_i_inl13 <= 0;
      blink_main_bz_led_bit2 <= 0;
      led <= 0;
      blink_main_bz_state <= Blink_blink_main_bz_b1_INIT;
    end else begin //if (rst)
      case(blink_main_bz_state)
      Blink_blink_main_bz_b1_INIT: begin
        blink_main_bz_led_bit2 <= 1;
        blink_main_bz_state <= Blink_blink_main_bz_L1_while2_S0;
      end
      Blink_blink_main_bz_L1_while2_S0: begin
        led <= blink_main_bz_led_bit2;
        /* blink_main_bz_led_bit3 <= (1 - blink_main_bz_led_bit2); */
        /* blink_main_bz_t530_inl1 <= (interval / 2); */
        blink_main_bz_i_inl13 <= 0;
        blink_main_bz_state <= Blink_blink_main_bz_L2_fortest4_S0;
      end
      Blink_blink_main_bz_L2_fortest4_S0: begin
        /* blink_main_bz_c532_inl1 <= (blink_main_bz_i_inl13 < blink_main_bz_t530_inl1); */
        if (blink_main_bz_c532_inl1) begin
          /* blink_main_bz_i_inl14 <= (blink_main_bz_i_inl13 + 1); */
          blink_main_bz_i_inl13 <= blink_main_bz_i_inl14;
          blink_main_bz_state <= Blink_blink_main_bz_L2_fortest4_S0;
        end else begin
          blink_main_bz_led_bit2 <= blink_main_bz_led_bit3;
          blink_main_bz_state <= Blink_blink_main_bz_L1_while2_S0;
        end
      end
      endcase
    end
  end
  

endmodule

