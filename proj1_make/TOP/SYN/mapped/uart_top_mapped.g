######################################################################

# Created by Genus(TM) Synthesis Solution 22.17-s071_1 on Tue Oct 20 05:55:12 KST 2026

# This file contains the Genus script for design:uart_top

######################################################################

set_db -quiet init_lib_search_path {../../../../../../GPDK045/digital/gsclib045_all_v4.4/gsclib045/timing ../../../../../../GPDK045/digital/giolib045_v3.5/timing ../../../../../../GPDK045/digital/gsclib045_all_v4.4/gsclib045/lef ../../../../../../GPDK045/digital/giolib045_v3.5/lef ../../../../../../GPDK045/digital/gsclib045_all_v4.4/gsclib045_tech/qrc/qx}
set_db -quiet operating_conditions_min PVT_1P1V_0C
set_db -quiet operating_conditions_min_library library:default_emulate_libset_max/fast_vdd1v0
set_db -quiet operating_conditions_library_given true
set_db -quiet design_mode_process 60.0
set_db -quiet phys_assume_met_fill 0.0
set_db -quiet map_placed_for_route_early_global false
set_db -quiet phys_use_invs_extraction true
set_db -quiet phys_route_time_out 120.0
set_db -quiet db_units 2000
set_db -quiet capacitance_per_unit_length_mmmc {}
set_db -quiet resistance_per_unit_length_mmmc {}
set_db -quiet runtime_by_stage {{PBS_Generic-Start 0 18 0.0 16.70869} {to_generic 3 21 2 19} {first_condense 1 22 1 21} {PBS_Generic_Opt-Post 4 22 3.7766969999999986 20.485387} {{PBS_Generic-Postgen HBO Optimizations} 0 22 0.0 20.485387} {PBS_TechMap-Start 0 24 0.0 21.477266} {{PBS_TechMap-Premap HBO Optimizations} 0 24 0.0 21.477266} {second_condense 1 25 0 23} {reify 1 26 1 24} {global_incr_map 0 26 0 25} {{PBS_Techmap-Global Mapping} 2 26 2.4401469999999996 23.917413} {{PBS_TechMap-Datapath Postmap Operations} 2 28 2.0 25.917413} {{PBS_TechMap-Postmap HBO Optimizations} 0 28 -0.0012380000000007385 25.916175} {{PBS_TechMap-Postmap Clock Gating} 0 28 0.0 25.916175} {{PBS_TechMap-Postmap Cleanup} 0 29 -0.0008889999999972531 25.915286000000002} {PBS_Techmap-Post_MBCI 0 29 0.0 25.915286000000002} {incr_opt 1 31 0 28} }
set_db -quiet timing_adjust_tns_of_complex_flops false
set_db -quiet hdl_array_naming_style %s_%d
set_db -quiet tinfo_tstamp_file .rs_hah011.tstamp
set_db -quiet metric_enable true
set_db -quiet auto_ungroup none
set_db -quiet max_cpus_per_server 2
set_db -quiet syn_generic_effort high
set_db -quiet use_area_from_lef true
set_db -quiet uniquify_naming_style uart_top_%s_%d
set_db -quiet optimize_merge_flops false
set_db -quiet optimize_merge_latches false
set_db -quiet phys_use_segment_parasitics true
set_db -quiet probabilistic_extraction true
set_db -quiet ple_correlation_factors {1.9000 2.0000}
set_db -quiet maximum_interval_of_vias inf
set_db -quiet layer_aware_buffer true
set_db -quiet ple_mode global
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/ANTENNA .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/HOLDX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIEHI .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIELO .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/ANTENNA .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY1X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY2X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY3X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/DLY4X4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/HOLDX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFQXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRHQX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFSXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFTRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/SDFFXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIEHI .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TIELO .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX12 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX16 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX20 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX3 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX6 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNTSCAX8 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATNXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATSRXL .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX1 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX2 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATX4 .avoid true
set_db -quiet lib_cell:default_emulate_libset_max/fast_vdd1v0/TLATXL .avoid true
set_db -quiet operating_conditions operating_condition:default_emulate_libset_max/slow_vdd1v0/PVT_0P9V_125C
set_db -quiet wireload_selection none
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/PVT_1P1V_0C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/PVT_0P9V_125C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/giolib045/slow .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/giolib045/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/PVT_1P1V_0C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/fast_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/PVT_0P9V_125C .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/slow_vdd1v0/_nominal_ .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/giolib045/slow .tree_type balanced_tree
set_db -quiet operating_condition:default_emulate_libset_max/giolib045/_nominal_ .tree_type balanced_tree
# BEGIN MSV SECTION
# END MSV SECTION
define_clock -name MAIN_CLOCK -domain domain_1 -period 8000.0 -divide_period 1 -rise 0 -divide_rise 1 -fall 1 -divide_fall 2 -remove -design design:uart_top port:uart_top/CLK
set_db -quiet clock:uart_top/MAIN_CLOCK .slew {100.0 100.0 100.0 100.0}
set_db -quiet clock:uart_top/MAIN_CLOCK .clock_network_late_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:uart_top/MAIN_CLOCK .clock_source_late_latency {200.0 200.0 200.0 200.0}
set_db -quiet clock:uart_top/MAIN_CLOCK .clock_setup_uncertainty {100.0 100.0}
define_cost_group -design design:uart_top -name MAIN_CLOCK
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del port:uart_top/RST_N
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_1_1 port:uart_top/UART_RX
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_2_1 {{port:uart_top/TX_DATA[7]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_3_1 {{port:uart_top/TX_DATA[6]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_4_1 {{port:uart_top/TX_DATA[5]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_5_1 {{port:uart_top/TX_DATA[4]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_6_1 {{port:uart_top/TX_DATA[3]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_7_1 {{port:uart_top/TX_DATA[2]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_8_1 {{port:uart_top/TX_DATA[1]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_9_1 {{port:uart_top/TX_DATA[0]}}
external_delay -accumulate -input {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name in_del_10_1 port:uart_top/TX_START
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_11_1 port:uart_top/RST_N
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_12_1 port:uart_top/UART_RX
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_13_1 {{port:uart_top/TX_DATA[7]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_14_1 {{port:uart_top/TX_DATA[6]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_15_1 {{port:uart_top/TX_DATA[5]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_16_1 {{port:uart_top/TX_DATA[4]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_17_1 {{port:uart_top/TX_DATA[3]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_18_1 {{port:uart_top/TX_DATA[2]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_19_1 {{port:uart_top/TX_DATA[1]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_20_1 {{port:uart_top/TX_DATA[0]}}
external_delay -accumulate -input {10.0 10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name in_del_21_1 port:uart_top/TX_START
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del port:uart_top/UART_TX
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_21_1 port:uart_top/TX_BUSY
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_22_1 port:uart_top/TX_DONE
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_23_1 {{port:uart_top/RX_DATA[7]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_24_1 {{port:uart_top/RX_DATA[6]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_25_1 {{port:uart_top/RX_DATA[5]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_26_1 {{port:uart_top/RX_DATA[4]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_27_1 {{port:uart_top/RX_DATA[3]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_28_1 {{port:uart_top/RX_DATA[2]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_29_1 {{port:uart_top/RX_DATA[1]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_30_1 {{port:uart_top/RX_DATA[0]}}
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_31_1 port:uart_top/RX_BUSY
external_delay -accumulate -output {no_value no_value 100.0 100.0} -clock clock:uart_top/MAIN_CLOCK -name ou_del_32_1 port:uart_top/RX_DONE
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_33_1 port:uart_top/UART_TX
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_34_1 port:uart_top/TX_BUSY
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_35_1 port:uart_top/TX_DONE
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_36_1 {{port:uart_top/RX_DATA[7]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_37_1 {{port:uart_top/RX_DATA[6]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_38_1 {{port:uart_top/RX_DATA[5]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_39_1 {{port:uart_top/RX_DATA[4]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_40_1 {{port:uart_top/RX_DATA[3]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_41_1 {{port:uart_top/RX_DATA[2]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_42_1 {{port:uart_top/RX_DATA[1]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_43_1 {{port:uart_top/RX_DATA[0]}}
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_44_1 port:uart_top/RX_BUSY
external_delay -accumulate -output {-10.0 -10.0 no_value no_value} -clock clock:uart_top/MAIN_CLOCK -name ou_del_45_1 port:uart_top/RX_DONE
path_group -paths [specify_paths -lenient -to clock:uart_top/MAIN_CLOCK]  -name MAIN_CLOCK -group cost_group:uart_top/MAIN_CLOCK -user_priority -1047552
# BEGIN DFT SECTION
set_db -quiet dft_scan_style muxed_scan
set_db -quiet dft_scanbit_waveform_analysis false
# END DFT SECTION
set_db -quiet design:uart_top .seq_reason_deleted_internal {}
set_db -quiet design:uart_top .qos_by_stage {{to_generic {wns -11111111} {tns -111111111} {vep -111111111} {area 361145} {cell_count 337} {utilization  0.00} {runtime 3 21 2 19} }{first_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 361067} {cell_count 315} {utilization  0.00} {runtime 1 22 1 21} }{second_condense {wns -11111111} {tns -111111111} {vep -111111111} {area 361067} {cell_count 315} {utilization  0.00} {runtime 1 25 0 23} }{reify {wns 5220} {tns 0} {vep 0} {area 360613} {cell_count 230} {utilization  0.00} {runtime 1 26 1 24} }{global_incr_map {wns 5219} {tns 0} {vep 0} {area 360574} {cell_count 217} {utilization  0.00} {runtime 0 26 0 25} }{incr_opt {wns 214748365} {tns 0} {vep 0} {area 360573} {cell_count 209} {utilization  0.00} {runtime 1 31 0 28} }}
set_db -quiet design:uart_top .seq_mbci_coverage 0.0
set_db -quiet design:uart_top .hdl_filelist {{default -v2001 {SYNTHESIS} {../RTL/uart_top.v ../RTL/uart_tx.v ../RTL/uart_rx.v} {../RTL} {}}}
set_db -quiet design:uart_top .verification_directory fv/uart_top
set_db -quiet port:uart_top/CLK .is_ideal_network true
set_db -quiet port:uart_top/CLK .original_name CLK
set_db -quiet port:uart_top/CLK .ideal_network true
set_db -quiet port:uart_top/RST_N .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/RST_N .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/RST_N .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/RST_N .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/RST_N .is_ideal_network true
set_db -quiet port:uart_top/RST_N .original_name RST_N
set_db -quiet port:uart_top/RST_N .ideal_network true
set_db -quiet port:uart_top/UART_RX .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/UART_RX .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/UART_RX .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/UART_RX .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/UART_RX .original_name UART_RX
set_db -quiet {port:uart_top/TX_DATA[7]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[7]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[7]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[7]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[7]} .original_name {TX_DATA[7]}
set_db -quiet {port:uart_top/TX_DATA[6]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[6]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[6]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[6]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[6]} .original_name {TX_DATA[6]}
set_db -quiet {port:uart_top/TX_DATA[5]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[5]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[5]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[5]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[5]} .original_name {TX_DATA[5]}
set_db -quiet {port:uart_top/TX_DATA[4]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[4]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[4]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[4]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[4]} .original_name {TX_DATA[4]}
set_db -quiet {port:uart_top/TX_DATA[3]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[3]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[3]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[3]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[3]} .original_name {TX_DATA[3]}
set_db -quiet {port:uart_top/TX_DATA[2]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[2]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[2]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[2]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[2]} .original_name {TX_DATA[2]}
set_db -quiet {port:uart_top/TX_DATA[1]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[1]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[1]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[1]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[1]} .original_name {TX_DATA[1]}
set_db -quiet {port:uart_top/TX_DATA[0]} .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[0]} .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[0]} .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[0]} .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet {port:uart_top/TX_DATA[0]} .original_name {TX_DATA[0]}
set_db -quiet port:uart_top/TX_START .driver_pin_rise_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/TX_START .driver_pin_fall_min lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/TX_START .driver_pin_rise_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/TX_START .driver_pin_fall_max lib_pin:default_emulate_libset_max/giolib045/PADDI/Y
set_db -quiet port:uart_top/TX_START .original_name TX_START
set_db -quiet port:uart_top/UART_TX .external_pin_cap_min 3.0
set_db -quiet port:uart_top/UART_TX .external_capacitance_max {3.0 3.0}
set_db -quiet port:uart_top/UART_TX .external_capacitance_min 3.0
set_db -quiet port:uart_top/UART_TX .original_name UART_TX
set_db -quiet port:uart_top/UART_TX .external_pin_cap {3.0 3.0}
set_db -quiet port:uart_top/TX_BUSY .external_pin_cap_min 3.0
set_db -quiet port:uart_top/TX_BUSY .external_capacitance_max {3.0 3.0}
set_db -quiet port:uart_top/TX_BUSY .external_capacitance_min 3.0
set_db -quiet port:uart_top/TX_BUSY .original_name TX_BUSY
set_db -quiet port:uart_top/TX_BUSY .external_pin_cap {3.0 3.0}
set_db -quiet port:uart_top/TX_DONE .external_pin_cap_min 3.0
set_db -quiet port:uart_top/TX_DONE .external_capacitance_max {3.0 3.0}
set_db -quiet port:uart_top/TX_DONE .external_capacitance_min 3.0
set_db -quiet port:uart_top/TX_DONE .original_name TX_DONE
set_db -quiet port:uart_top/TX_DONE .external_pin_cap {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[7]} .external_pin_cap_min 3.0
set_db -quiet {port:uart_top/RX_DATA[7]} .external_capacitance_max {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[7]} .external_capacitance_min 3.0
set_db -quiet {port:uart_top/RX_DATA[7]} .original_name {RX_DATA[7]}
set_db -quiet {port:uart_top/RX_DATA[7]} .external_pin_cap {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[6]} .external_pin_cap_min 3.0
set_db -quiet {port:uart_top/RX_DATA[6]} .external_capacitance_max {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[6]} .external_capacitance_min 3.0
set_db -quiet {port:uart_top/RX_DATA[6]} .original_name {RX_DATA[6]}
set_db -quiet {port:uart_top/RX_DATA[6]} .external_pin_cap {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[5]} .external_pin_cap_min 3.0
set_db -quiet {port:uart_top/RX_DATA[5]} .external_capacitance_max {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[5]} .external_capacitance_min 3.0
set_db -quiet {port:uart_top/RX_DATA[5]} .original_name {RX_DATA[5]}
set_db -quiet {port:uart_top/RX_DATA[5]} .external_pin_cap {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[4]} .external_pin_cap_min 3.0
set_db -quiet {port:uart_top/RX_DATA[4]} .external_capacitance_max {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[4]} .external_capacitance_min 3.0
set_db -quiet {port:uart_top/RX_DATA[4]} .original_name {RX_DATA[4]}
set_db -quiet {port:uart_top/RX_DATA[4]} .external_pin_cap {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[3]} .external_pin_cap_min 3.0
set_db -quiet {port:uart_top/RX_DATA[3]} .external_capacitance_max {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[3]} .external_capacitance_min 3.0
set_db -quiet {port:uart_top/RX_DATA[3]} .original_name {RX_DATA[3]}
set_db -quiet {port:uart_top/RX_DATA[3]} .external_pin_cap {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[2]} .external_pin_cap_min 3.0
set_db -quiet {port:uart_top/RX_DATA[2]} .external_capacitance_max {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[2]} .external_capacitance_min 3.0
set_db -quiet {port:uart_top/RX_DATA[2]} .original_name {RX_DATA[2]}
set_db -quiet {port:uart_top/RX_DATA[2]} .external_pin_cap {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[1]} .external_pin_cap_min 3.0
set_db -quiet {port:uart_top/RX_DATA[1]} .external_capacitance_max {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[1]} .external_capacitance_min 3.0
set_db -quiet {port:uart_top/RX_DATA[1]} .original_name {RX_DATA[1]}
set_db -quiet {port:uart_top/RX_DATA[1]} .external_pin_cap {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[0]} .external_pin_cap_min 3.0
set_db -quiet {port:uart_top/RX_DATA[0]} .external_capacitance_max {3.0 3.0}
set_db -quiet {port:uart_top/RX_DATA[0]} .external_capacitance_min 3.0
set_db -quiet {port:uart_top/RX_DATA[0]} .original_name {RX_DATA[0]}
set_db -quiet {port:uart_top/RX_DATA[0]} .external_pin_cap {3.0 3.0}
set_db -quiet port:uart_top/RX_BUSY .external_pin_cap_min 3.0
set_db -quiet port:uart_top/RX_BUSY .external_capacitance_max {3.0 3.0}
set_db -quiet port:uart_top/RX_BUSY .external_capacitance_min 3.0
set_db -quiet port:uart_top/RX_BUSY .original_name RX_BUSY
set_db -quiet port:uart_top/RX_BUSY .external_pin_cap {3.0 3.0}
set_db -quiet port:uart_top/RX_DONE .external_pin_cap_min 3.0
set_db -quiet port:uart_top/RX_DONE .external_capacitance_max {3.0 3.0}
set_db -quiet port:uart_top/RX_DONE .external_capacitance_min 3.0
set_db -quiet port:uart_top/RX_DONE .original_name RX_DONE
set_db -quiet port:uart_top/RX_DONE .external_pin_cap {3.0 3.0}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[0].u_pad_rx_data} .original_name {{GEN_RX_DATA_PAD[0].u_pad_rx_data}}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[0].u_pad_rx_data} .single_bit_orig_name {GEN_RX_DATA_PAD[0].u_pad_rx_data}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[0].u_pad_rx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[0].u_pad_rx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[0].u_pad_rx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[0].u_pad_rx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_RX_DATA_PAD[0].u_pad_rx_data/PAD} .original_name {GEN_RX_DATA_PAD[0].u_pad_rx_data/PAD}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[1].u_pad_rx_data} .original_name {{GEN_RX_DATA_PAD[1].u_pad_rx_data}}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[1].u_pad_rx_data} .single_bit_orig_name {GEN_RX_DATA_PAD[1].u_pad_rx_data}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[1].u_pad_rx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[1].u_pad_rx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[1].u_pad_rx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[1].u_pad_rx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_RX_DATA_PAD[1].u_pad_rx_data/PAD} .original_name {GEN_RX_DATA_PAD[1].u_pad_rx_data/PAD}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[2].u_pad_rx_data} .original_name {{GEN_RX_DATA_PAD[2].u_pad_rx_data}}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[2].u_pad_rx_data} .single_bit_orig_name {GEN_RX_DATA_PAD[2].u_pad_rx_data}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[2].u_pad_rx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[2].u_pad_rx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[2].u_pad_rx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[2].u_pad_rx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_RX_DATA_PAD[2].u_pad_rx_data/PAD} .original_name {GEN_RX_DATA_PAD[2].u_pad_rx_data/PAD}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[3].u_pad_rx_data} .original_name {{GEN_RX_DATA_PAD[3].u_pad_rx_data}}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[3].u_pad_rx_data} .single_bit_orig_name {GEN_RX_DATA_PAD[3].u_pad_rx_data}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[3].u_pad_rx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[3].u_pad_rx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[3].u_pad_rx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[3].u_pad_rx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_RX_DATA_PAD[3].u_pad_rx_data/PAD} .original_name {GEN_RX_DATA_PAD[3].u_pad_rx_data/PAD}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[4].u_pad_rx_data} .original_name {{GEN_RX_DATA_PAD[4].u_pad_rx_data}}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[4].u_pad_rx_data} .single_bit_orig_name {GEN_RX_DATA_PAD[4].u_pad_rx_data}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[4].u_pad_rx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[4].u_pad_rx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[4].u_pad_rx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[4].u_pad_rx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_RX_DATA_PAD[4].u_pad_rx_data/PAD} .original_name {GEN_RX_DATA_PAD[4].u_pad_rx_data/PAD}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[5].u_pad_rx_data} .original_name {{GEN_RX_DATA_PAD[5].u_pad_rx_data}}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[5].u_pad_rx_data} .single_bit_orig_name {GEN_RX_DATA_PAD[5].u_pad_rx_data}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[5].u_pad_rx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[5].u_pad_rx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[5].u_pad_rx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[5].u_pad_rx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_RX_DATA_PAD[5].u_pad_rx_data/PAD} .original_name {GEN_RX_DATA_PAD[5].u_pad_rx_data/PAD}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[6].u_pad_rx_data} .original_name {{GEN_RX_DATA_PAD[6].u_pad_rx_data}}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[6].u_pad_rx_data} .single_bit_orig_name {GEN_RX_DATA_PAD[6].u_pad_rx_data}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[6].u_pad_rx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[6].u_pad_rx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[6].u_pad_rx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[6].u_pad_rx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_RX_DATA_PAD[6].u_pad_rx_data/PAD} .original_name {GEN_RX_DATA_PAD[6].u_pad_rx_data/PAD}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[7].u_pad_rx_data} .original_name {{GEN_RX_DATA_PAD[7].u_pad_rx_data}}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[7].u_pad_rx_data} .single_bit_orig_name {GEN_RX_DATA_PAD[7].u_pad_rx_data}
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[7].u_pad_rx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[7].u_pad_rx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[7].u_pad_rx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_RX_DATA_PAD[7].u_pad_rx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_RX_DATA_PAD[7].u_pad_rx_data/PAD} .original_name {GEN_RX_DATA_PAD[7].u_pad_rx_data/PAD}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[0].u_pad_tx_data} .original_name {{GEN_TX_DATA_PAD[0].u_pad_tx_data}}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[0].u_pad_tx_data} .single_bit_orig_name {GEN_TX_DATA_PAD[0].u_pad_tx_data}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[0].u_pad_tx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[0].u_pad_tx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[0].u_pad_tx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[0].u_pad_tx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_TX_DATA_PAD[0].u_pad_tx_data/Y} .original_name {GEN_TX_DATA_PAD[0].u_pad_tx_data/Y}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[1].u_pad_tx_data} .original_name {{GEN_TX_DATA_PAD[1].u_pad_tx_data}}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[1].u_pad_tx_data} .single_bit_orig_name {GEN_TX_DATA_PAD[1].u_pad_tx_data}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[1].u_pad_tx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[1].u_pad_tx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[1].u_pad_tx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[1].u_pad_tx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_TX_DATA_PAD[1].u_pad_tx_data/Y} .original_name {GEN_TX_DATA_PAD[1].u_pad_tx_data/Y}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[2].u_pad_tx_data} .original_name {{GEN_TX_DATA_PAD[2].u_pad_tx_data}}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[2].u_pad_tx_data} .single_bit_orig_name {GEN_TX_DATA_PAD[2].u_pad_tx_data}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[2].u_pad_tx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[2].u_pad_tx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[2].u_pad_tx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[2].u_pad_tx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_TX_DATA_PAD[2].u_pad_tx_data/Y} .original_name {GEN_TX_DATA_PAD[2].u_pad_tx_data/Y}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[3].u_pad_tx_data} .original_name {{GEN_TX_DATA_PAD[3].u_pad_tx_data}}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[3].u_pad_tx_data} .single_bit_orig_name {GEN_TX_DATA_PAD[3].u_pad_tx_data}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[3].u_pad_tx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[3].u_pad_tx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[3].u_pad_tx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[3].u_pad_tx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_TX_DATA_PAD[3].u_pad_tx_data/Y} .original_name {GEN_TX_DATA_PAD[3].u_pad_tx_data/Y}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[4].u_pad_tx_data} .original_name {{GEN_TX_DATA_PAD[4].u_pad_tx_data}}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[4].u_pad_tx_data} .single_bit_orig_name {GEN_TX_DATA_PAD[4].u_pad_tx_data}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[4].u_pad_tx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[4].u_pad_tx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[4].u_pad_tx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[4].u_pad_tx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_TX_DATA_PAD[4].u_pad_tx_data/Y} .original_name {GEN_TX_DATA_PAD[4].u_pad_tx_data/Y}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[5].u_pad_tx_data} .original_name {{GEN_TX_DATA_PAD[5].u_pad_tx_data}}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[5].u_pad_tx_data} .single_bit_orig_name {GEN_TX_DATA_PAD[5].u_pad_tx_data}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[5].u_pad_tx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[5].u_pad_tx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[5].u_pad_tx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[5].u_pad_tx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_TX_DATA_PAD[5].u_pad_tx_data/Y} .original_name {GEN_TX_DATA_PAD[5].u_pad_tx_data/Y}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[6].u_pad_tx_data} .original_name {{GEN_TX_DATA_PAD[6].u_pad_tx_data}}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[6].u_pad_tx_data} .single_bit_orig_name {GEN_TX_DATA_PAD[6].u_pad_tx_data}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[6].u_pad_tx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[6].u_pad_tx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[6].u_pad_tx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[6].u_pad_tx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_TX_DATA_PAD[6].u_pad_tx_data/Y} .original_name {GEN_TX_DATA_PAD[6].u_pad_tx_data/Y}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[7].u_pad_tx_data} .original_name {{GEN_TX_DATA_PAD[7].u_pad_tx_data}}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[7].u_pad_tx_data} .single_bit_orig_name {GEN_TX_DATA_PAD[7].u_pad_tx_data}
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[7].u_pad_tx_data} .dont_touch_reason set_dont_touch
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[7].u_pad_tx_data} .dont_touch_file 0
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[7].u_pad_tx_data} .dont_touch true
set_db -quiet {inst:uart_top/GEN_TX_DATA_PAD[7].u_pad_tx_data} .preserve true
set_db -quiet {pin:uart_top/GEN_TX_DATA_PAD[7].u_pad_tx_data/Y} .original_name {GEN_TX_DATA_PAD[7].u_pad_tx_data/Y}
set_db -quiet inst:uart_top/u_pad_clk .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/u_pad_clk .dont_touch_file 0
set_db -quiet inst:uart_top/u_pad_clk .dont_touch true
set_db -quiet inst:uart_top/u_pad_clk .preserve true
set_db -quiet inst:uart_top/u_pad_rst_n .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/u_pad_rst_n .dont_touch_file 0
set_db -quiet inst:uart_top/u_pad_rst_n .dont_touch true
set_db -quiet inst:uart_top/u_pad_rst_n .preserve true
set_db -quiet inst:uart_top/u_pad_rx_busy .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/u_pad_rx_busy .dont_touch_file 0
set_db -quiet inst:uart_top/u_pad_rx_busy .dont_touch true
set_db -quiet inst:uart_top/u_pad_rx_busy .preserve true
set_db -quiet inst:uart_top/u_pad_rx_done .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/u_pad_rx_done .dont_touch_file 0
set_db -quiet inst:uart_top/u_pad_rx_done .dont_touch true
set_db -quiet inst:uart_top/u_pad_rx_done .preserve true
set_db -quiet inst:uart_top/u_pad_tx_busy .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/u_pad_tx_busy .dont_touch_file 0
set_db -quiet inst:uart_top/u_pad_tx_busy .dont_touch true
set_db -quiet inst:uart_top/u_pad_tx_busy .preserve true
set_db -quiet inst:uart_top/u_pad_tx_done .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/u_pad_tx_done .dont_touch_file 0
set_db -quiet inst:uart_top/u_pad_tx_done .dont_touch true
set_db -quiet inst:uart_top/u_pad_tx_done .preserve true
set_db -quiet inst:uart_top/u_pad_tx_start .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/u_pad_tx_start .dont_touch_file 0
set_db -quiet inst:uart_top/u_pad_tx_start .dont_touch true
set_db -quiet inst:uart_top/u_pad_tx_start .preserve true
set_db -quiet inst:uart_top/u_pad_uart_rx .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/u_pad_uart_rx .dont_touch_file 0
set_db -quiet inst:uart_top/u_pad_uart_rx .dont_touch true
set_db -quiet inst:uart_top/u_pad_uart_rx .preserve true
set_db -quiet inst:uart_top/u_pad_uart_tx .dont_touch_reason set_dont_touch
set_db -quiet inst:uart_top/u_pad_uart_tx .dont_touch_file 0
set_db -quiet inst:uart_top/u_pad_uart_tx .dont_touch true
set_db -quiet inst:uart_top/u_pad_uart_tx .preserve true
set_db -quiet module:uart_top/uart_rx_CLKS_PER_BIT417 .hdl_filelist {{default -v2001 {SYNTHESIS} {../RTL/uart_rx.v} {../RTL} {}}}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_busy_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_busy_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_busy_reg .original_name u_uart_rx/r_rx_busy
set_db -quiet inst:uart_top/u_uart_rx/r_rx_busy_reg .single_bit_orig_name u_uart_rx/r_rx_busy
set_db -quiet pin:uart_top/u_uart_rx/r_rx_busy_reg/Q .original_name u_uart_rx/r_rx_busy/q
set_db -quiet inst:uart_top/u_uart_rx/r_rx_done_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_done_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_done_reg .original_name u_uart_rx/r_rx_done
set_db -quiet inst:uart_top/u_uart_rx/r_rx_done_reg .single_bit_orig_name u_uart_rx/r_rx_done
set_db -quiet pin:uart_top/u_uart_rx/r_rx_done_reg/Q .original_name u_uart_rx/r_rx_done/q
set_db -quiet inst:uart_top/u_uart_rx/r_rx_sync_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_sync_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_sync_reg .original_name u_uart_rx/r_rx_sync
set_db -quiet inst:uart_top/u_uart_rx/r_rx_sync_reg .single_bit_orig_name u_uart_rx/r_rx_sync
set_db -quiet pin:uart_top/u_uart_rx/r_rx_sync_reg/Q .original_name u_uart_rx/r_rx_sync/q
set_db -quiet pin:uart_top/u_uart_rx/r_rx_sync_reg/QN .original_name u_uart_rx/r_rx_sync/q
set_db -quiet inst:uart_top/u_uart_rx/r_rx_meta_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_meta_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_meta_reg .original_name u_uart_rx/r_rx_meta
set_db -quiet inst:uart_top/u_uart_rx/r_rx_meta_reg .single_bit_orig_name u_uart_rx/r_rx_meta
set_db -quiet pin:uart_top/u_uart_rx/r_rx_meta_reg/Q .original_name u_uart_rx/r_rx_meta/q
set_db -quiet pin:uart_top/u_uart_rx/r_rx_meta_reg/QN .original_name u_uart_rx/r_rx_meta/q
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_0 .original_name {{u_uart_rx/r_baud_cnt[0]}}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_0 .single_bit_orig_name {u_uart_rx/r_baud_cnt[0]}
set_db -quiet pin:uart_top/u_uart_rx/r_baud_cnt_reg_0/Q .original_name {u_uart_rx/r_baud_cnt[0]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_1 .original_name {{u_uart_rx/r_baud_cnt[1]}}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_1 .single_bit_orig_name {u_uart_rx/r_baud_cnt[1]}
set_db -quiet pin:uart_top/u_uart_rx/r_baud_cnt_reg_1/Q .original_name {u_uart_rx/r_baud_cnt[1]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_2 .original_name {{u_uart_rx/r_baud_cnt[2]}}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_2 .single_bit_orig_name {u_uart_rx/r_baud_cnt[2]}
set_db -quiet pin:uart_top/u_uart_rx/r_baud_cnt_reg_2/Q .original_name {u_uart_rx/r_baud_cnt[2]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_3 .original_name {{u_uart_rx/r_baud_cnt[3]}}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_3 .single_bit_orig_name {u_uart_rx/r_baud_cnt[3]}
set_db -quiet pin:uart_top/u_uart_rx/r_baud_cnt_reg_3/Q .original_name {u_uart_rx/r_baud_cnt[3]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_4 .original_name {{u_uart_rx/r_baud_cnt[4]}}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_4 .single_bit_orig_name {u_uart_rx/r_baud_cnt[4]}
set_db -quiet pin:uart_top/u_uart_rx/r_baud_cnt_reg_4/Q .original_name {u_uart_rx/r_baud_cnt[4]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_5 .original_name {{u_uart_rx/r_baud_cnt[5]}}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_5 .single_bit_orig_name {u_uart_rx/r_baud_cnt[5]}
set_db -quiet pin:uart_top/u_uart_rx/r_baud_cnt_reg_5/Q .original_name {u_uart_rx/r_baud_cnt[5]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_6 .original_name {{u_uart_rx/r_baud_cnt[6]}}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_6 .single_bit_orig_name {u_uart_rx/r_baud_cnt[6]}
set_db -quiet pin:uart_top/u_uart_rx/r_baud_cnt_reg_6/Q .original_name {u_uart_rx/r_baud_cnt[6]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_7 .original_name {{u_uart_rx/r_baud_cnt[7]}}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_7 .single_bit_orig_name {u_uart_rx/r_baud_cnt[7]}
set_db -quiet pin:uart_top/u_uart_rx/r_baud_cnt_reg_7/Q .original_name {u_uart_rx/r_baud_cnt[7]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_8 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_8 .original_name {{u_uart_rx/r_baud_cnt[8]}}
set_db -quiet inst:uart_top/u_uart_rx/r_baud_cnt_reg_8 .single_bit_orig_name {u_uart_rx/r_baud_cnt[8]}
set_db -quiet pin:uart_top/u_uart_rx/r_baud_cnt_reg_8/Q .original_name {u_uart_rx/r_baud_cnt[8]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_0 .original_name {{u_uart_rx/r_bit_cnt[0]}}
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_0 .single_bit_orig_name {u_uart_rx/r_bit_cnt[0]}
set_db -quiet pin:uart_top/u_uart_rx/r_bit_cnt_reg_0/Q .original_name {u_uart_rx/r_bit_cnt[0]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_2 .original_name {{u_uart_rx/r_bit_cnt[2]}}
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_2 .single_bit_orig_name {u_uart_rx/r_bit_cnt[2]}
set_db -quiet pin:uart_top/u_uart_rx/r_bit_cnt_reg_2/Q .original_name {u_uart_rx/r_bit_cnt[2]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_0 .original_name {{u_uart_rx/r_rx_data[0]}}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_0 .single_bit_orig_name {u_uart_rx/r_rx_data[0]}
set_db -quiet pin:uart_top/u_uart_rx/r_rx_data_reg_0/Q .original_name {u_uart_rx/r_rx_data[0]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_1 .original_name {{u_uart_rx/r_rx_data[1]}}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_1 .single_bit_orig_name {u_uart_rx/r_rx_data[1]}
set_db -quiet pin:uart_top/u_uart_rx/r_rx_data_reg_1/Q .original_name {u_uart_rx/r_rx_data[1]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_2 .original_name {{u_uart_rx/r_rx_data[2]}}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_2 .single_bit_orig_name {u_uart_rx/r_rx_data[2]}
set_db -quiet pin:uart_top/u_uart_rx/r_rx_data_reg_2/Q .original_name {u_uart_rx/r_rx_data[2]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_3 .original_name {{u_uart_rx/r_rx_data[3]}}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_3 .single_bit_orig_name {u_uart_rx/r_rx_data[3]}
set_db -quiet pin:uart_top/u_uart_rx/r_rx_data_reg_3/Q .original_name {u_uart_rx/r_rx_data[3]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_4 .original_name {{u_uart_rx/r_rx_data[4]}}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_4 .single_bit_orig_name {u_uart_rx/r_rx_data[4]}
set_db -quiet pin:uart_top/u_uart_rx/r_rx_data_reg_4/Q .original_name {u_uart_rx/r_rx_data[4]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_5 .original_name {{u_uart_rx/r_rx_data[5]}}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_5 .single_bit_orig_name {u_uart_rx/r_rx_data[5]}
set_db -quiet pin:uart_top/u_uart_rx/r_rx_data_reg_5/Q .original_name {u_uart_rx/r_rx_data[5]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_6 .original_name {{u_uart_rx/r_rx_data[6]}}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_6 .single_bit_orig_name {u_uart_rx/r_rx_data[6]}
set_db -quiet pin:uart_top/u_uart_rx/r_rx_data_reg_6/Q .original_name {u_uart_rx/r_rx_data[6]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_7 .original_name {{u_uart_rx/r_rx_data[7]}}
set_db -quiet inst:uart_top/u_uart_rx/r_rx_data_reg_7 .single_bit_orig_name {u_uart_rx/r_rx_data[7]}
set_db -quiet pin:uart_top/u_uart_rx/r_rx_data_reg_7/Q .original_name {u_uart_rx/r_rx_data[7]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_state_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_state_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_state_reg_0 .original_name {{u_uart_rx/r_state[0]}}
set_db -quiet inst:uart_top/u_uart_rx/r_state_reg_0 .single_bit_orig_name {u_uart_rx/r_state[0]}
set_db -quiet pin:uart_top/u_uart_rx/r_state_reg_0/Q .original_name {u_uart_rx/r_state[0]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_1 .original_name {{u_uart_rx/r_bit_cnt[1]}}
set_db -quiet inst:uart_top/u_uart_rx/r_bit_cnt_reg_1 .single_bit_orig_name {u_uart_rx/r_bit_cnt[1]}
set_db -quiet pin:uart_top/u_uart_rx/r_bit_cnt_reg_1/Q .original_name {u_uart_rx/r_bit_cnt[1]/q}
set_db -quiet pin:uart_top/u_uart_rx/r_bit_cnt_reg_1/QN .original_name {u_uart_rx/r_bit_cnt[1]/q}
set_db -quiet inst:uart_top/u_uart_rx/r_state_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_rx/r_state_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_rx/r_state_reg_1 .original_name {{u_uart_rx/r_state[1]}}
set_db -quiet inst:uart_top/u_uart_rx/r_state_reg_1 .single_bit_orig_name {u_uart_rx/r_state[1]}
set_db -quiet pin:uart_top/u_uart_rx/r_state_reg_1/Q .original_name {u_uart_rx/r_state[1]/q}
set_db -quiet pin:uart_top/u_uart_rx/r_state_reg_1/QN .original_name {u_uart_rx/r_state[1]/q}
set_db -quiet module:uart_top/uart_tx_CLKS_PER_BIT417 .is_sop_cluster true
set_db -quiet module:uart_top/uart_tx_CLKS_PER_BIT417 .hdl_filelist {{default -v2001 {SYNTHESIS} {../RTL/uart_tx.v} {../RTL} {}}}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_reg .original_name u_uart_tx/r_tx
set_db -quiet inst:uart_top/u_uart_tx/r_tx_reg .single_bit_orig_name u_uart_tx/r_tx
set_db -quiet pin:uart_top/u_uart_tx/r_tx_reg/Q .original_name u_uart_tx/r_tx/q
set_db -quiet pin:uart_top/u_uart_tx/r_tx_reg/QN .original_name u_uart_tx/r_tx/q
set_db -quiet inst:uart_top/u_uart_tx/r_tx_busy_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_busy_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_busy_reg .original_name u_uart_tx/r_tx_busy
set_db -quiet inst:uart_top/u_uart_tx/r_tx_busy_reg .single_bit_orig_name u_uart_tx/r_tx_busy
set_db -quiet pin:uart_top/u_uart_tx/r_tx_busy_reg/Q .original_name u_uart_tx/r_tx_busy/q
set_db -quiet inst:uart_top/u_uart_tx/r_tx_done_reg .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_done_reg .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_done_reg .original_name u_uart_tx/r_tx_done
set_db -quiet inst:uart_top/u_uart_tx/r_tx_done_reg .single_bit_orig_name u_uart_tx/r_tx_done
set_db -quiet pin:uart_top/u_uart_tx/r_tx_done_reg/Q .original_name u_uart_tx/r_tx_done/q
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_8 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_8 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_8 .original_name {{u_uart_tx/r_baud_cnt[8]}}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_8 .single_bit_orig_name {u_uart_tx/r_baud_cnt[8]}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_8/Q .original_name {u_uart_tx/r_baud_cnt[8]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_7 .original_name {{u_uart_tx/r_baud_cnt[7]}}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_7 .single_bit_orig_name {u_uart_tx/r_baud_cnt[7]}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_7/Q .original_name {u_uart_tx/r_baud_cnt[7]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_6 .original_name {{u_uart_tx/r_baud_cnt[6]}}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_6 .single_bit_orig_name {u_uart_tx/r_baud_cnt[6]}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_6/Q .original_name {u_uart_tx/r_baud_cnt[6]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_4 .original_name {{u_uart_tx/r_baud_cnt[4]}}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_4 .single_bit_orig_name {u_uart_tx/r_baud_cnt[4]}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_4/Q .original_name {u_uart_tx/r_baud_cnt[4]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_3 .original_name {{u_uart_tx/r_baud_cnt[3]}}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_3 .single_bit_orig_name {u_uart_tx/r_baud_cnt[3]}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_3/Q .original_name {u_uart_tx/r_baud_cnt[3]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_state_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_state_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_state_reg_0 .original_name {{u_uart_tx/r_state[0]}}
set_db -quiet inst:uart_top/u_uart_tx/r_state_reg_0 .single_bit_orig_name {u_uart_tx/r_state[0]}
set_db -quiet pin:uart_top/u_uart_tx/r_state_reg_0/Q .original_name {u_uart_tx/r_state[0]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_state_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_state_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_state_reg_1 .original_name {{u_uart_tx/r_state[1]}}
set_db -quiet inst:uart_top/u_uart_tx/r_state_reg_1 .single_bit_orig_name {u_uart_tx/r_state[1]}
set_db -quiet pin:uart_top/u_uart_tx/r_state_reg_1/Q .original_name {u_uart_tx/r_state[1]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_2 .original_name {{u_uart_tx/r_baud_cnt[2]}}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_2 .single_bit_orig_name {u_uart_tx/r_baud_cnt[2]}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_2/Q .original_name {u_uart_tx/r_baud_cnt[2]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_1 .original_name {{u_uart_tx/r_bit_cnt[1]}}
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_1 .single_bit_orig_name {u_uart_tx/r_bit_cnt[1]}
set_db -quiet pin:uart_top/u_uart_tx/r_bit_cnt_reg_1/Q .original_name {u_uart_tx/r_bit_cnt[1]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_0 .original_name {{u_uart_tx/r_bit_cnt[0]}}
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_0 .single_bit_orig_name {u_uart_tx/r_bit_cnt[0]}
set_db -quiet pin:uart_top/u_uart_tx/r_bit_cnt_reg_0/Q .original_name {u_uart_tx/r_bit_cnt[0]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_2 .original_name {{u_uart_tx/r_tx_data[2]}}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_2 .single_bit_orig_name {u_uart_tx/r_tx_data[2]}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_2/Q .original_name {u_uart_tx/r_tx_data[2]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_0 .original_name {{u_uart_tx/r_tx_data[0]}}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_0 .single_bit_orig_name {u_uart_tx/r_tx_data[0]}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_0/Q .original_name {u_uart_tx/r_tx_data[0]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_3 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_3 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_3 .original_name {{u_uart_tx/r_tx_data[3]}}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_3 .single_bit_orig_name {u_uart_tx/r_tx_data[3]}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_3/Q .original_name {u_uart_tx/r_tx_data[3]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_4 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_4 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_4 .original_name {{u_uart_tx/r_tx_data[4]}}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_4 .single_bit_orig_name {u_uart_tx/r_tx_data[4]}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_4/Q .original_name {u_uart_tx/r_tx_data[4]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_1 .original_name {{u_uart_tx/r_baud_cnt[1]}}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_1 .single_bit_orig_name {u_uart_tx/r_baud_cnt[1]}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_1/Q .original_name {u_uart_tx/r_baud_cnt[1]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_6 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_6 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_6 .original_name {{u_uart_tx/r_tx_data[6]}}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_6 .single_bit_orig_name {u_uart_tx/r_tx_data[6]}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_6/Q .original_name {u_uart_tx/r_tx_data[6]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_7 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_7 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_7 .original_name {{u_uart_tx/r_tx_data[7]}}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_7 .single_bit_orig_name {u_uart_tx/r_tx_data[7]}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_7/Q .original_name {u_uart_tx/r_tx_data[7]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_0 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_0 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_0 .original_name {{u_uart_tx/r_baud_cnt[0]}}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_0 .single_bit_orig_name {u_uart_tx/r_baud_cnt[0]}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_0/Q .original_name {u_uart_tx/r_baud_cnt[0]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_1 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_1 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_1 .original_name {{u_uart_tx/r_tx_data[1]}}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_1 .single_bit_orig_name {u_uart_tx/r_tx_data[1]}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_1/Q .original_name {u_uart_tx/r_tx_data[1]/q}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_1/QN .original_name {u_uart_tx/r_tx_data[1]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_5 .original_name {{u_uart_tx/r_tx_data[5]}}
set_db -quiet inst:uart_top/u_uart_tx/r_tx_data_reg_5 .single_bit_orig_name {u_uart_tx/r_tx_data[5]}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_5/Q .original_name {u_uart_tx/r_tx_data[5]/q}
set_db -quiet pin:uart_top/u_uart_tx/r_tx_data_reg_5/QN .original_name {u_uart_tx/r_tx_data[5]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_5 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_5 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_5 .original_name {{u_uart_tx/r_baud_cnt[5]}}
set_db -quiet inst:uart_top/u_uart_tx/r_baud_cnt_reg_5 .single_bit_orig_name {u_uart_tx/r_baud_cnt[5]}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_5/Q .original_name {u_uart_tx/r_baud_cnt[5]/q}
set_db -quiet pin:uart_top/u_uart_tx/r_baud_cnt_reg_5/QN .original_name {u_uart_tx/r_baud_cnt[5]/q}
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_2 .orig_hdl_instantiated false
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_2 .gint_phase_inversion false
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_2 .original_name {{u_uart_tx/r_bit_cnt[2]}}
set_db -quiet inst:uart_top/u_uart_tx/r_bit_cnt_reg_2 .single_bit_orig_name {u_uart_tx/r_bit_cnt[2]}
set_db -quiet pin:uart_top/u_uart_tx/r_bit_cnt_reg_2/Q .original_name {u_uart_tx/r_bit_cnt[2]/q}
set_db -quiet pin:uart_top/u_uart_tx/r_bit_cnt_reg_2/QN .original_name {u_uart_tx/r_bit_cnt[2]/q}
# BEGIN PMBIST SECTION
# END PMBIST SECTION
# BEGIN PHYSICAL ANNOTATION SECTION
# END PHYSICAL ANNOTATION SECTION
# BEGIN GLO TBR TABLE
set_db -quiet design:uart_top .set_boundary_change_new {start restore}
set_db -quiet design:uart_top .set_boundary_change_new {finish restore}
# END GLO TBR TABLE
set_db -quiet source_verbose true
#############################################################
#####   FLOW WRITE   ########################################
##
## Written by Genus(TM) Synthesis Solution version 22.17-s071_1
## flowkit v22.15-s003_1
## Written on 05:55:12 20-Oct 2026
#############################################################
#####   Flow Definitions   ##################################

#############################################################
#####   Step Definitions   ##################################


#############################################################
#####   Attribute Definitions   #############################

if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}


#############################################################
#####   Flow History   ######################################

if {[is_attribute flow_user_templates -obj_type root]} {set_db flow_user_templates {}}
if {[is_attribute flow_plugin_steps -obj_type root]} {set_db flow_plugin_steps {}}
if {[is_attribute flow_template_type -obj_type root]} {set_db flow_template_type {}}
if {[is_attribute flow_template_tools -obj_type root]} {set_db flow_template_tools {}}
if {[is_attribute flow_template_version -obj_type root]} {set_db flow_template_version {}}
if {[is_attribute flow_template_feature_definition -obj_type root]} {set_db flow_template_feature_definition {}}
if {[is_attribute flow_remark -obj_type root]} {set_db flow_remark {}}
if {[is_attribute flow_features -obj_type root]} {set_db flow_features {}}
if {[is_attribute flow_feature_values -obj_type root]} {set_db flow_feature_values {}}
if {[is_attribute flow_write_db_args -obj_type root]} {set_db flow_write_db_args {}}
if {[is_attribute flow_write_db_sdc -obj_type root]} {set_db flow_write_db_sdc true}
if {[is_attribute flow_write_db_common -obj_type root]} {set_db flow_write_db_common false}
if {[is_attribute flow_post_db_overwrite -obj_type root]} {set_db flow_post_db_overwrite {}}
if {[is_attribute flow_step_order -obj_type root]} {set_db flow_step_order {}}
if {[is_attribute flow_step_begin_tcl -obj_type root]} {set_db flow_step_begin_tcl {}}
if {[is_attribute flow_step_end_tcl -obj_type root]} {set_db flow_step_end_tcl {}}
if {[is_attribute flow_step_last -obj_type root]} {set_db flow_step_last {}}
if {[is_attribute flow_step_current -obj_type root]} {set_db flow_step_current {}}
if {[is_attribute flow_step_canonical_current -obj_type root]} {set_db flow_step_canonical_current {}}
if {[is_attribute flow_step_next -obj_type root]} {set_db flow_step_next {}}
if {[is_attribute flow_working_directory -obj_type root]} {set_db flow_working_directory .}
if {[is_attribute flow_branch -obj_type root]} {set_db flow_branch {}}
if {[is_attribute flow_caller_data -obj_type root]} {set_db flow_caller_data {}}
if {[is_attribute flow_metrics_snapshot_uuid -obj_type root]} {set_db flow_metrics_snapshot_uuid {}}
if {[is_attribute flow_starting_db -obj_type root]} {set_db flow_starting_db {}}
if {[is_attribute flow_db_directory -obj_type root]} {set_db flow_db_directory dbs}
if {[is_attribute flow_report_directory -obj_type root]} {set_db flow_report_directory reports}
if {[is_attribute flow_log_directory -obj_type root]} {set_db flow_log_directory logs}
if {[is_attribute flow_mail_to -obj_type root]} {set_db flow_mail_to {}}
if {[is_attribute flow_exit_when_done -obj_type root]} {set_db flow_exit_when_done false}
if {[is_attribute flow_mail_on_error -obj_type root]} {set_db flow_mail_on_error false}
if {[is_attribute flow_summary_tcl -obj_type root]} {set_db flow_summary_tcl {}}
if {[is_attribute flow_history -obj_type root]} {set_db flow_history {}}
if {[is_attribute flow_step_last_status -obj_type root]} {set_db flow_step_last_status not_run}
if {[is_attribute flow_step_last_msg -obj_type root]} {set_db flow_step_last_msg {}}
if {[is_attribute flow_run_tag -obj_type root]} {set_db flow_run_tag {}}
if {[is_attribute flow_current_cache -obj_type root]} {set_db flow_current_cache {}}
if {[is_attribute flow_step_order_cache -obj_type root]} {set_db flow_step_order_cache {}}
if {[is_attribute flow_step_results_cache -obj_type root]} {set_db flow_step_results_cache {}}
if {[is_attribute flow_metadata -obj_type root]} {set_db flow_metadata {}}
if {[is_attribute flow_execute_in_global -obj_type root]} {set_db flow_execute_in_global true}
if {[is_attribute flow_overwrite_db -obj_type root]} {set_db flow_overwrite_db false}
if {[is_attribute flow_print_run_information -obj_type root]} {set_db flow_print_run_information false}
if {[is_attribute flow_verbose -obj_type root]} {set_db flow_verbose true}
if {[is_attribute flow_print_run_information_full -obj_type root]} {set_db flow_print_run_information_full false}
if {[is_attribute flow_header_tcl -obj_type root]} {set_db flow_header_tcl {}}
if {[is_attribute flow_footer_tcl -obj_type root]} {set_db flow_footer_tcl {}}
if {[is_attribute flow_init_header_tcl -obj_type root]} {set_db flow_init_header_tcl {}}
if {[is_attribute flow_init_footer_tcl -obj_type root]} {set_db flow_init_footer_tcl {}}
if {[is_attribute flow_edit_start_steps -obj_type root]} {set_db flow_edit_start_steps {}}
if {[is_attribute flow_edit_end_steps -obj_type root]} {set_db flow_edit_end_steps {}}
if {[is_attribute flow_step_last_number -obj_type root]} {set_db flow_step_last_number 0}
if {[is_attribute flow_autoload_applets -obj_type root]} {set_db flow_autoload_applets false}
if {[is_attribute flow_autoload_dir -obj_type root]} {set_db flow_autoload_dir error}
if {[is_attribute flow_skip_auto_db_save -obj_type root]} {set_db flow_skip_auto_db_save true}
if {[is_attribute flow_skip_auto_generate_metrics -obj_type root]} {set_db flow_skip_auto_generate_metrics false}
if {[is_attribute flow_top -obj_type root]} {set_db flow_top {}}
if {[is_attribute flow_hier_path -obj_type root]} {set_db flow_hier_path {}}
if {[is_attribute flow_schedule -obj_type root]} {set_db flow_schedule {}}
if {[is_attribute flow_step_check_tcl -obj_type root]} {set_db flow_step_check_tcl {}}
if {[is_attribute flow_script -obj_type root]} {set_db flow_script {}}
if {[is_attribute flow_yaml_script -obj_type root]} {set_db flow_yaml_script {}}
if {[is_attribute flow_cla_enabled_features -obj_type root]} {set_db flow_cla_enabled_features {}}
if {[is_attribute flow_cla_inject_tcl -obj_type root]} {set_db flow_cla_inject_tcl {}}
if {[is_attribute flow_error_message -obj_type root]} {set_db flow_error_message {}}
if {[is_attribute flow_error_errorinfo -obj_type root]} {set_db flow_error_errorinfo {}}
if {[is_attribute flow_exclude_time_for_init_flow -obj_type root]} {set_db flow_exclude_time_for_init_flow false}
if {[is_attribute flow_error_write_db -obj_type root]} {set_db flow_error_write_db true}
if {[is_attribute flow_advanced_metric_isolation -obj_type root]} {set_db flow_advanced_metric_isolation flow}
if {[is_attribute flow_yaml_root -obj_type root]} {set_db flow_yaml_root {}}
if {[is_attribute flow_yaml_root_dir -obj_type root]} {set_db flow_yaml_root_dir {}}
if {[is_attribute flow_setup_config -obj_type root]} {set_db flow_setup_config {HUDDLE {!!map {}}}}

#############################################################
#####   User Defined Attributes   ###########################

