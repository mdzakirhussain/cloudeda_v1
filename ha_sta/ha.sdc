# SDC constraints for ha (half adder) module with a virtual clock

# Create a virtual clock named 'virt_clk' with a 10ns period
create_clock -name virt_clk -period 10.0

# Set input delay for 'a' and 'b' relative to the virtual clock
set_input_delay 1.0 -clock virt_clk [get_ports {a b}]

# Set output delay for 'sum' and 'carry' relative to the virtual clock
set_output_delay 1.0 -clock virt_clk [get_ports {sum carry}]