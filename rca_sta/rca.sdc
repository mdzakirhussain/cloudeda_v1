# SDC constraints for rca (Ripple Carry Adder) module

# Create a virtual clock with a 10ns period
create_clock -name virt_clk -period 10.0

# Set input delay for all input ports relative to the virtual clock
set_input_delay 1.0 -clock virt_clk [get_ports {a[*] b[*] cin}]

# Set output delay for all output ports relative to the virtual clock
set_output_delay 1.0 -clock virt_clk [get_ports {sum[*] cout}]