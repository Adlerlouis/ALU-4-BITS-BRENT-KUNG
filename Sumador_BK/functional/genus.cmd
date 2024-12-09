# Cadence Genus(TM) Synthesis Solution, Version 21.18-s082_1, built Jul 18 2023 13:08:41

# Date: Wed Dec 04 01:02:42 2024
# Host: ccslvcbasselic (x86_64 w/Linux 3.10.0-1160.119.1.el7.x86_64) (1core*4cpus*7physical cpus*Intel(R) Xeon(R) Platinum 8268 CPU @ 2.90GHz 36608KB)
# OS:   CentOS Linux release 7.9.2009 (Core)

read_lib /home/al-labse15/SumadorBrentKung/Sumador_BK/functional/libCompleta.lib
read_hdl /home/al-labse15/SumadorBrentKung/Sumador_BK/functional/verilog.v
elaborate Sumador_BK
check_design -unresolved
syn_gen
syn_map
syn_opt
report area
report gates
report power
report timing -unconstrained
write_hdl -mapped > verilog_syin1.v
write_sdc  > verilog_syin1.sdc
gui_show
