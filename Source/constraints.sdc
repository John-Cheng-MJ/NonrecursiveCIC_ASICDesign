
# Timing Specification Constraints
create_clock -name clk  -period 50.000 [get_ports clk]

set_clock_uncertainty -setup 5 [get_ports clk]
set_clock_uncertainty -hold 5 [get_ports clk]

#CREATE IN/OUT DELAYS according to clk default 0.5 or 0.333 of Tclk
#input/output delays for data input/output
set_input_delay -clock [get_clocks clk] -min -add_delay 5.0 [get_ports {{In1[0]} {In1[1]} {In1[2]} {In1[3]} {In1[4]} {In1[5]} {In1[6]} {In1[7]} {In1[8]} {In1[9]} {In1[10]} {In1[11]} {In1[12]} {In1[13]} {In1[14]} {In1[15]} {In1[16]} {In1[17]} {In1[18]}}]
set_input_delay -clock [get_clocks clk] -max -add_delay 16.0 [get_ports {{In1[0]} {In1[1]} {In1[2]} {In1[3]} {In1[4]} {In1[5]} {In1[6]} {In1[7]} {In1[8]} {In1[9]} {In1[10]} {In1[11]} {In1[12]} {In1[13]} {In1[14]} {In1[15]} {In1[16]} {In1[17]} {In1[18]}}]

set_output_delay -clock [get_clocks clk] -min -add_delay 5.0  [get_ports {{Out1[0]} {Out1[1]} {Out1[2]} {Out1[3]} {Out1[4]} {Out1[5]} {Out1[6]} {Out1[7]} {Out1[8]} {Out1[9]} {Out1[10]} {Out1[11]} {Out1[12]} {Out1[13]} {Out1[14]} {Out1[15]} {Out1[16]} {Out1[17]} {Out1[18]}}]
set_output_delay -clock [get_clocks clk] -max -add_delay 16.0 [get_ports {{Out1[0]} {Out1[1]} {Out1[2]} {Out1[3]} {Out1[4]} {Out1[5]} {Out1[6]} {Out1[7]} {Out1[8]} {Out1[9]} {Out1[10]} {Out1[11]} {Out1[12]} {Out1[13]} {Out1[14]} {Out1[15]} {Out1[16]} {Out1[17]} {Out1[18]}}]


