## Setup technology files
include ../Source/Technology/X-FAB_typ.tcl
## Setup variables
set DESIGN Non_recursive_CIC1
set PARAMS {}
## Read in Verilog HDL files
read_hdl -v2001 ../Source/Non_recursive_CIC1_tc.v
read_hdl -v2001 ../Source/First_Block_H2_z.v
read_hdl -v2001 ../Source/First_Block_H2_z_1.v
read_hdl -v2001 ../Source/Third_Block_H3_z.v
# Top module
read_hdl -v2001 ../Source/Non_recursive_CIC1.v
## Compile our code (create a technology-independent schematic)
elaborate -parameters $PARAMS $DESIGN
gui_show
## Setup design constraints
read_sdc ../Source/constraints.sdc
## Synthesize our schematic (create a technology-dependent schematic)
#synthesize -to_generic
synthesize -to_mapped
synthesize -incremental
## Write out area and timing reports
report area > ../Reports/Non_recursive_CIC1_synth_area_report
report timing > ../Reports/Non_recursive_CIC1_synth_timing_report
## Write out synthesized Verilog netlist
write_hdl -mapped > ../Source/Top/Synthesis/Non_recursive_CIC1_synth.v
## Write out the SDC file we will take into the place n route tool
write_sdc > ../Source/Top/Synthesis/Non_recursive_CIC1_out.sdc
gui_show
