## Nexys 4

## Clock signal
#Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
set_property PACKAGE_PIN E3 [get_ports clk]							
	set_property IOSTANDARD LVCMOS33 [get_ports clk]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports clk]
	
##Switches
#Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
set_property PACKAGE_PIN U9 [get_ports {pulsador[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {pulsador[0]}]
	
#Bank = 34, Pin name = IO_25_34,							Sch name = SW1
set_property PACKAGE_PIN U8 [get_ports {pulsador[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {pulsador[1]}]
	
## LED
#Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
set_property PACKAGE_PIN T8 [get_ports {pulse}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {pulse}]

##Pmod Header JB
#Bank = 15, Pin name = IO_L15N_T2_DQS_ADV_B_15,				Sch name = JB1
set_property PACKAGE_PIN G14 [get_ports {pulse}]	
	
##Buttons
#Bank = 14, Pin name = IO_L21P_T3_DQS_14,					Sch name = BTND
set_property PACKAGE_PIN V10 [get_ports rst]						
	set_property IOSTANDARD LVCMOS33 [get_ports rst]	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	