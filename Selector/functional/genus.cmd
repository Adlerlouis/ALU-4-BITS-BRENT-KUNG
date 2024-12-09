# Cadence Genus(TM) Synthesis Solution, Version 21.18-s082_1, built Jul 18 2023 13:08:41

# Date: Fri Dec 06 19:39:34 2024
# Host: ccslvcbasselic (x86_64 w/Linux 3.10.0-1160.119.1.el7.x86_64) (1core*4cpus*7physical cpus*Intel(R) Xeon(R) Platinum 8268 CPU @ 2.90GHz 36608KB)
# OS:   CentOS Linux release 7.9.2009 (Core)

read_lib /home/al-labse15/SumadorBrentKung/Selector/functional/libCompleta.lib
read_hdl /home/al-labse15/SumadorBrentKung/Black_Cell_Impar/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Black_Cell_Par/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Buffer_Impar/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Buffer_Par/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Estructura_Final/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Estructura_Inicial/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Gray_Cell_Impar/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Gray_Cell_Par/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Restador_BK/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Selector/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Selector/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Selector/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Selector/functional/verilog.v
read_hdl /home/al-labse15/SumadorBrentKung/Selector/functional/verilog.v
elabotate Selector
elaborate Selector
set_db [get_db modules Co_0*] .boundary_opto strict_no
set_db [get_db modules Co_1*] .boundary_opto strict_no
syn_gen
syn_map
syn_opt
report area
report gates
report power
report timing -unconstrained
write_hdl -mapped > ProyectoFinal4Bits_syn.v
write sdc > ProyectoFinal4Bits.sdc
write_sdc > ProyectoFinal4Bits.sdc
gui_show
