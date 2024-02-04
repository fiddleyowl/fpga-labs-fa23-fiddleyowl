## This file is a general .xdc for the AX7035 board Rev. C
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal 50 MHz

set_property -dict { PACKAGE_PIN Y18   IOSTANDARD LVCMOS33 } [get_ports { CLK_50MHZ_FPGA }]; #IO_L13P_T2_MRCC_14 Sch=FPGA_GCLK1
#create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { sysclk }];

# AX7035 no RGB LEDs

# set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { LEDS[4] }]; #IO_L22N_T3_AD7N_35 Sch=led4_b
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { led4_g }]; #IO_L16P_T2_35 Sch=led4_g
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { led4_r }]; #IO_L21P_T3_DQS_AD14P_35 Sch=led4_r
#set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { led5_b }]; #IO_0_35 Sch=led5_b
#set_property -dict { PACKAGE_PIN L14   IOSTANDARD LVCMOS33 } [get_ports { led5_g }]; #IO_L22P_T3_AD7P_35 Sch=led5_g
# set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { LEDS[5] }]; #IO_L23N_T3_35 Sch=led5_r

## LEDs

set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports { LEDS[0] }]; #IO_L18P_T2_16 Sch=LED1
set_property -dict { PACKAGE_PIN E21   IOSTANDARD LVCMOS33 } [get_ports { LEDS[1] }]; #IO_L23P_T3_16 Sch=LED2
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { LEDS[2] }]; #IO_L19P_T3_16 Sch=LED3
set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports { LEDS[3] }]; #IO_L19N_T3_VREF_16 Sch=LED4

## Buttons

set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { BUTTONS[0] }]; #IO_L20P_T3_A20_15 Sch=KEY1
set_property -dict { PACKAGE_PIN K14   IOSTANDARD LVCMOS33 } [get_ports { BUTTONS[1] }]; #IO_L19N_T3_A21_VREF_15 Sch=KEY2
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { BUTTONS[2] }]; #IO_L19P_T3_A22_15 Sch=KEY3
set_property -dict { PACKAGE_PIN L13   IOSTANDARD LVCMOS33 } [get_ports { BUTTONS[3] }]; #IO_L20N_T3_A19_15 Sch=KEY4

# AX7035 no Switches

# set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { SWITCHES[0] }]; #IO_L7N_T1_AD2N_35 Sch=sw[0]
# set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports { SWITCHES[1] }]; #IO_L7P_T1_AD2P_35 Sch=sw[1]
