## Nexys 4

## Clock signal
##Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
#set_property PACKAGE_PIN E3 [get_ports clk]							
#	set_property IOSTANDARD LVCMOS33 [get_ports clk]
#	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
	
##Switches
##Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
#set_property PACKAGE_PIN U9 [get_ports {pulsador[0]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {pulsador[0]}]
	
##Bank = 34, Pin name = IO_25_34,							Sch name = SW1
#set_property PACKAGE_PIN U8 [get_ports {pulsador[1]}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {pulsador[1]}]
	
## LED
##Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
#set_property PACKAGE_PIN T8 [get_ports {pulse}]					
#	set_property IOSTANDARD LVCMOS33 [get_ports {pulse}]

##Pmod Header JB
##Bank = 15, Pin name = IO_L15N_T2_DQS_ADV_B_15,				Sch name = JB1
#set_property PACKAGE_PIN G14 [get_ports {pulse}]	
	
##Buttons
##Bank = 14, Pin name = IO_L21P_T3_DQS_14,					Sch name = BTND
#set_property PACKAGE_PIN V10 [get_ports rst]						
#	set_property IOSTANDARD LVCMOS33 [get_ports rst]	
	

##Nexys 4 DDR

## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];
	
##Switches
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { pulsador[0] }]; #IO_L24N_T3_RS0_15 Sch=sw[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { pulsador[1] }]; #IO_L3N_T0_DQS_EMCCLK_14 Sch=sw[1]	
	
## Leds
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { led }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { led_rst }]; #IO_L24P_T3_RS1_15 Sch=led[1]

##Pmod Header JB
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports { pulse }]; #IO_L1P_T0_AD0P_15 Sch=jb[1]
	
##Buttons
set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L9N_T1_DQS_D13_14 Sch=btnd	
	
	
	
	
	
	
	
	
	
	
	
	
	