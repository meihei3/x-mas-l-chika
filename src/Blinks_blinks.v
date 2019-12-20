module Blinks_blinks
  (
    input wire clk,
    input wire rst,
    output reg led00 = 0,
    output reg led01 = 0,
    output reg led02 = 0,
    output reg led03 = 0,
    output reg led04 = 0,
    output reg led05 = 0,
    output reg led06 = 0,
    output reg led07 = 0,
    output reg led08 = 0,
    output reg led09 = 0,
    output reg led10 = 0,
    output reg led11 = 0,
    output reg led12 = 0,
    output reg led13 = 0,
    output reg led14 = 0,
    output reg led15 = 0,
    output reg led16 = 0,
    output reg led17 = 0,
    output reg led20 = 0,
    output reg led21 = 0,
    output reg led22 = 0,
    output reg led23 = 0,
    output reg led24 = 0,
    output reg led25 = 0,
    output reg led26 = 0,
    output reg led27 = 0
  );

  //localparams
  localparam Blinks_blinks_main_c0_b1_INIT = 0;
  localparam Blinks_blinks_main_c0_b1_S1 = 1;
  localparam Blinks_blinks_main_c0_b1_FINISH = 2;
  localparam Blinks_blinks_main_c0_L1_while2_S0 = 3;
  localparam Blinks_blinks_main_c0_L1_while2_S1 = 4;
  localparam Blinks_blinks_main_c0_L1_while2_S2 = 5;
  localparam Blinks_blinks_main_c0_L1_while2_S3 = 6;
  localparam Blinks_blinks_main_c0_L1_while2_S4 = 7;
  localparam Blinks_blinks_main_c0_L1_while2_S5 = 8;
  localparam Blinks_blinks_main_c0_L1_while2_S6 = 9;
  localparam Blinks_blinks_main_c0_L1_while2_S7 = 10;
  localparam Blinks_blinks_main_c0_L1_while2_S8 = 11;
  localparam Blinks_blinks_main_c0_L1_while2_S9 = 12;
  localparam Blinks_blinks_main_c0_L1_while2_S10 = 13;
  localparam Blinks_blinks_main_c0_L1_while2_S11 = 14;
  localparam Blinks_blinks_main_c0_L1_while2_S12 = 15;
  localparam Blinks_blinks_main_c0_L1_while2_S13 = 16;
  localparam Blinks_blinks_main_c0_L1_while2_S14 = 17;
  localparam Blinks_blinks_main_c0_L1_while2_S15 = 18;
  localparam Blinks_blinks_main_c0_L1_while2_S16 = 19;
  localparam Blinks_blinks_main_c0_L1_while2_S17 = 20;
  localparam Blinks_blinks_main_c0_L1_while2_S18 = 21;
  localparam Blinks_blinks_main_c0_L1_while2_S19 = 22;
  localparam Blinks_blinks_main_c0_L1_while2_S20 = 23;
  localparam Blinks_blinks_main_c0_L1_while2_S21 = 24;
  localparam Blinks_blinks_main_c0_L1_while2_S22 = 25;
  localparam Blinks_blinks_main_c0_L1_while2_S23 = 26;
  localparam Blinks_blinks_main_c0_L1_while2_S24 = 27;
  localparam Blinks_blinks_main_c0_L1_while2_S25 = 28;
  localparam Blinks_blinks_main_c0_L1_while2_S26 = 29;
  localparam Blinks_blinks_main_c0_L1_forelse6_S0 = 30;
  localparam Blinks_blinks_main_c0_L1_forelse6_S1 = 31;
  localparam Blinks_blinks_main_c0_L2_fortest4_S0 = 32;
  localparam Blinks_blinks_main_c0_L2_forbody5_S0 = 33;
  localparam Blinks_blinks_main_c0_L2_forbody5_S1 = 34;
  
  //signals: 
  wire blinks_main_c0_c564_inl3;
  wire blinks_main_c0_switch_result1;
  wire blinks_main_c0_switch_result2;
  reg blinks_main_c0_led_bit_ptn02;
  reg blinks_main_c0_led_bit_ptn12;
  reg        [5:0] blinks_main_c0_state;
  wire signed [31:0] blinks_main_c0_i_inl34;
  wire signed [31:0] blinks_main_c0_t562_inl3;
  wire signed [31:0] interval;
  reg signed [31:0] blinks_main_c0_i_inl33;
  //combinations: 
  assign blinks_main_c0_c564_inl3 = (blinks_main_c0_i_inl33 < blinks_main_c0_t562_inl3);
  assign blinks_main_c0_i_inl34 = (blinks_main_c0_i_inl33 + 1);
  assign blinks_main_c0_switch_result1 = (1 - blinks_main_c0_led_bit_ptn02);
  assign blinks_main_c0_switch_result2 = (1 - blinks_main_c0_led_bit_ptn12);
  assign blinks_main_c0_t562_inl3 = interval;
  assign interval = 49999996;
  
  always @(posedge clk) begin
    if (rst) begin
      blinks_main_c0_i_inl33 <= 0;
      blinks_main_c0_led_bit_ptn02 <= 0;
      blinks_main_c0_led_bit_ptn12 <= 0;
      led00 <= 0;
      led01 <= 0;
      led02 <= 0;
      led03 <= 0;
      led04 <= 0;
      led05 <= 0;
      led06 <= 0;
      led07 <= 0;
      led08 <= 0;
      led09 <= 0;
      led10 <= 0;
      led11 <= 0;
      led12 <= 0;
      led13 <= 0;
      led14 <= 0;
      led15 <= 0;
      led16 <= 0;
      led17 <= 0;
      led20 <= 0;
      led21 <= 0;
      led22 <= 0;
      led23 <= 0;
      led24 <= 0;
      led25 <= 0;
      led26 <= 0;
      led27 <= 0;
      blinks_main_c0_state <= Blinks_blinks_main_c0_b1_INIT;
    end else begin //if (rst)
      case(blinks_main_c0_state)
      Blinks_blinks_main_c0_b1_INIT: begin
        blinks_main_c0_led_bit_ptn02 <= 0;
        blinks_main_c0_led_bit_ptn12 <= 1;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S0;
      end
      Blinks_blinks_main_c0_L1_while2_S0: begin
        led00 <= blinks_main_c0_led_bit_ptn02;
        /* blinks_main_c0_switch_result1 <= (1 - blinks_main_c0_led_bit_ptn02); */
        /* blinks_main_c0_switch_result2 <= (1 - blinks_main_c0_led_bit_ptn12); */
        /* blinks_main_c0_t562_inl3 <= interval; */
        blinks_main_c0_i_inl33 <= 0;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S1;
      end
      Blinks_blinks_main_c0_L1_while2_S1: begin
        led01 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S2;
      end
      Blinks_blinks_main_c0_L1_while2_S2: begin
        led02 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S3;
      end
      Blinks_blinks_main_c0_L1_while2_S3: begin
        led03 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S4;
      end
      Blinks_blinks_main_c0_L1_while2_S4: begin
        led04 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S5;
      end
      Blinks_blinks_main_c0_L1_while2_S5: begin
        led05 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S6;
      end
      Blinks_blinks_main_c0_L1_while2_S6: begin
        led06 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S7;
      end
      Blinks_blinks_main_c0_L1_while2_S7: begin
        led07 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S8;
      end
      Blinks_blinks_main_c0_L1_while2_S8: begin
        led08 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S9;
      end
      Blinks_blinks_main_c0_L1_while2_S9: begin
        led09 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S10;
      end
      Blinks_blinks_main_c0_L1_while2_S10: begin
        led10 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S11;
      end
      Blinks_blinks_main_c0_L1_while2_S11: begin
        led11 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S12;
      end
      Blinks_blinks_main_c0_L1_while2_S12: begin
        led12 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S13;
      end
      Blinks_blinks_main_c0_L1_while2_S13: begin
        led13 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S14;
      end
      Blinks_blinks_main_c0_L1_while2_S14: begin
        led14 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S15;
      end
      Blinks_blinks_main_c0_L1_while2_S15: begin
        led15 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S16;
      end
      Blinks_blinks_main_c0_L1_while2_S16: begin
        led16 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S17;
      end
      Blinks_blinks_main_c0_L1_while2_S17: begin
        led17 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S18;
      end
      Blinks_blinks_main_c0_L1_while2_S18: begin
        led20 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S19;
      end
      Blinks_blinks_main_c0_L1_while2_S19: begin
        led21 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S20;
      end
      Blinks_blinks_main_c0_L1_while2_S20: begin
        led22 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S21;
      end
      Blinks_blinks_main_c0_L1_while2_S21: begin
        led23 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S22;
      end
      Blinks_blinks_main_c0_L1_while2_S22: begin
        led24 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S23;
      end
      Blinks_blinks_main_c0_L1_while2_S23: begin
        led25 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S24;
      end
      Blinks_blinks_main_c0_L1_while2_S24: begin
        led26 <= blinks_main_c0_led_bit_ptn02;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S25;
      end
      Blinks_blinks_main_c0_L1_while2_S25: begin
        led27 <= blinks_main_c0_led_bit_ptn12;
        blinks_main_c0_state <= Blinks_blinks_main_c0_L2_fortest4_S0;
      end
      Blinks_blinks_main_c0_L2_fortest4_S0: begin
        /* blinks_main_c0_c564_inl3 <= (blinks_main_c0_i_inl33 < blinks_main_c0_t562_inl3); */
        if (blinks_main_c0_c564_inl3) begin
          /* blinks_main_c0_i_inl34 <= (blinks_main_c0_i_inl33 + 1); */
          blinks_main_c0_i_inl33 <= blinks_main_c0_i_inl34;
          blinks_main_c0_state <= Blinks_blinks_main_c0_L2_fortest4_S0;
        end else begin
          blinks_main_c0_led_bit_ptn02 <= blinks_main_c0_switch_result1;
          blinks_main_c0_led_bit_ptn12 <= blinks_main_c0_switch_result2;
          blinks_main_c0_state <= Blinks_blinks_main_c0_L1_while2_S0;
        end
      end
      endcase
    end
  end
  

endmodule

