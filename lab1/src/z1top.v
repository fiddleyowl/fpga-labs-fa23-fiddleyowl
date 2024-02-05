module z1top(
  input CLK_50MHZ_FPGA,
  input [3:0] BUTTONS,
  // input [1:0] SWITCHES,
  output [3:0] LEDS
);

  wire a,b,c,d;
  not(a, BUTTONS[0]);
  not(b, BUTTONS[1]);
  not(c, BUTTONS[2]);
  not(d, BUTTONS[3]);
  
  wire outA,outB,outC,outD;
  and(outA, a, b);
  and(outB, b, c);
  and(outC, c, d);
  and(outD, outA, outC);
  
  wire LEDA,LEDB,LEDC,LEDD;
  not(LEDA, outA);
  not(LEDB, outB);
  not(LEDC, outC);
  not(LEDD, outD);
  
  assign LEDS[0] = LEDA;
  assign LEDS[1] = LEDB;
  assign LEDS[2] = LEDC;
  assign LEDS[3] = LEDD;
endmodule
