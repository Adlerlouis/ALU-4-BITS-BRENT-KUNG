#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Thu Dec  5 21:15:26 2024                
#                                                     
#######################################################

#@(#)CDS: Innovus v20.15-s105_1 (64bit) 07/27/2021 14:15 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: NanoRoute 20.15-s105_1 NR210726-1341/20_15-UB (database version 18.20.554) {superthreading v2.14}
#@(#)CDS: AAE 20.15-s020 (64bit) 07/27/2021 (Linux 2.6.32-431.11.2.el6.x86_64)
#@(#)CDS: CTE 20.15-s024_1 () Jul 23 2021 04:46:45 ( )
#@(#)CDS: SYNTECH 20.15-s012_1 () Jul 12 2021 23:29:38 ( )
#@(#)CDS: CPE v20.15-s071
#@(#)CDS: IQuantus/TQuantus 20.1.1-s460 (64bit) Fri Mar 5 18:46:16 PST 2021 (Linux 2.6.32-431.11.2.el6.x86_64)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
define_proc_arguments ViaFillQor -info {This procedure extracts Viafill details from innovus db} -define_args {
        {-window "window coordinates" "" list optional}
        {-window_size "window size in microns" "" string optional}
    
    }
define_proc_arguments ProcessFills -info {This procedure processes Fill types} -define_args {
    {-fillInfo "Design Fill data" "" list required}
				{-csvName "File path for Fill Data csv file" "Path of CSV file" string required}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list required}
    {-output_data "Boolean Flag to output Fill Data for further processing" "" string required}
}
define_proc_arguments FillQor -info {This procedure extracts fill details from innovus db} -define_args {
    {-layers "Fills Cleanup on which all layers" "list of Metal/Routing layers" list optional}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list optional}
				{-outData "Boolean Flag to output Fill Data for further processing" "" boolean optional}
    {-outDataFile "File path for Fill Data csv file" "Path of CSV file" string optional}
}
define_proc_arguments ProcessFills_fast -info {This procedure processes Fill types} -define_args {
    {-fillInfo "Design Fill data" "" list required}
				{-csvName "File path for Fill Data csv file" "Path of CSV file" string required}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list required}
    {-output_data "Boolean Flag to output Fill Data for further processing" "" string required}
}
define_proc_arguments FillQor_fast -info {This procedure extracts fill details from innovus db} -define_args {
    {-layers "Fills Cleanup on which all layers" "list of Metal/Routing layers" list optional}
				{-selectFill "type of fill to be selected in session" "list of BRIDGE/EXTENSION/STAMP/FLOATING" list optional}
				{-outData "Boolean Flag to output Fill Data for further processing" "" boolean optional}
    {-outDataFile "File path for Fill Data csv file" "Path of CSV file" string optional}
}
define_proc_arguments ProcessFills_fast_stampOnly -info {This procedure processes Fill types} -define_args {
    {-fillInfo "Design Fill data" "" list required}
	
}
define_proc_arguments FillQor_fast_stampOnly -info {This procedure extracts fill details from innovus db} -define_args {
    {-layers "Fills Cleanup on which all layers" "list of Metal/Routing layers" list optional}
}
win
set init_gnd_net gnd
set init_lef_file Sumador_BK/functional/lib/libreria.lef
set init_design_settop 0
set init_verilog Sumador_BK/functional/synth/Sumador_BBKK.v
set init_pwr_net vdd
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site CoreSite -r 0.802816901408 0.699892 100 100 100 100
uiSetTool select
getIoFlowFlag
fit
clearGlobalNets
globalNetConnect gnd -type pgpin -pin gnd -instanceBasename *
globalNetConnect vdd -type pgpin -pin vdd -instanceBasename *
clearGlobalNets
globalNetConnect gnd -type pgpin -pin gnd -instanceBasename *
globalNetConnect vdd -type pgpin -pin vdd -instanceBasename *
clearGlobalNets
globalNetConnect gnd -type pgpin -pin gnd -instanceBasename *
globalNetConnect vdd -type pgpin -pin vdd -instanceBasename *
clearGlobalNets
globalNetConnect gnd -type pgpin -pin gnd -instanceBasename *
globalNetConnect vdd -type pgpin -pin vdd -instanceBasename *
clearGlobalNets
globalNetConnect gnd -type pgpin -pin gnd -instanceBasename *
globalNetConnect vdd -type pgpin -pin vdd -instanceBasename *
clearGlobalNets
globalNetConnect gnd -type pgpin -pin gnd -instanceBasename *
globalNetConnect vdd -type pgpin -pin vdd -instanceBasename *
clearGlobalNets
globalNetConnect gnd -type pgpin -pin gnd -instanceBasename *
globalNetConnect vdd -type pgpin -pin vdd -instanceBasename *
clearGlobalNets
globalNetConnect gnd -type pgpin -pin gnd -instanceBasename *
globalNetConnect vdd -type pgpin -pin vdd -instanceBasename *
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {gnd vdd} -type core_rings -follow core -layer {top metal1 bottom metal1 left metal2 right metal2} -width {top 8 bottom 8 left 8 right 8} -spacing {top 1 bottom 1 left 1 right 1} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {gnd vdd} -layer metal2 -direction vertical -width 8 -spacing 1 -set_to_set_distance 100 -start_from left -start_offset 20 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal3 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal3 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid Grid
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length stripe_width -stacked_via_top_layer metal10 -stacked_via_bottom_layer metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring } -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape   }
addStripe -nets {gnd vdd} -layer metal2 -direction vertical -width 8 -spacing 1 -set_to_set_distance 100 -start_from left -start_offset 20 -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit metal3 -padcore_ring_bottom_layer_limit metal1 -block_ring_top_layer_limit metal3 -block_ring_bottom_layer_limit metal1 -use_wire_group 0 -snap_wire_center_to_grid Grid
setPlaceMode -fp false
place_design
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeTopRoutingLayer 10
setNanoRouteMode -quiet -routeBottomRoutingLayer 1
setNanoRouteMode -quiet -drouteEndIteration 1
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
getFillerMode -quiet
addFiller -cell FILL -prefix FILLER -markFixed
selectWire 50.5650 146.6350 163.4700 154.6350 1 gnd
streamOut fsm1.gds -mapFile streamOut.map -libName DesignLib -merge { Sumador_BK/functional/INVX1.gds Sumador_BK/functional/NAND2X1.gds } -units 2000 -mode ALL
deselectAll
