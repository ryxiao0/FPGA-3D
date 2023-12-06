create_project -force -part xc7s50csga324-1 transform_tb transform_tb

read_verilog -sv [ glob ./hdl/*.sv ]
read_verilog [ glob ./hdl/*.v ]
read_verilog -sv [ glob ./sim/*.sv ]

read_ip ./ip/adder/adder.xci
read_ip ./ip/multiplier/multiplier.xci
read_ip ./ip/reciprocal/reciprocal.xci
generate_target all [get_ips]
synth_ip [get_ips]

set_property top transformation_tb [get_fileset sim_1]
launch_simulation
restart

open_vcd
log_vcd *
run all
flush_vcd
close_vcd
