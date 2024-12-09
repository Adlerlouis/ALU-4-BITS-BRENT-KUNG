# ####################################################################

#  Created by Genus(TM) Synthesis Solution 21.18-s082_1 on Thu Dec 05 19:13:18 CST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design Sumador_BK

set_clock_gating_check -setup 0.0 
set_wire_load_mode "enclosed"
