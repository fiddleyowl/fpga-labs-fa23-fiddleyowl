module z1top(
  input CLK_50MHZ_FPGA,
  input [3:0] BUTTONS,
  // input [1:0] SWITCHES,
  output [3:0] LEDS
);
  and(LEDS[0], BUTTONS[0], BUTTONS[1]);
  assign LEDS[3:1] = 0;
endmodule
