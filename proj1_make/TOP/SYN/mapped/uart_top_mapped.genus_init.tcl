################################################################################
#
# Init setup file
# Created by Genus(TM) Synthesis Solution on 10/20/2026 05:55:14
#
################################################################################
if { ![is_common_ui_mode] } { error "ERROR: This script requires common_ui to be active."}

read_physical -lef {/home/hah011/PROJ1/proj1_make/TOP/SYN/../../../../../../GPDK045/digital/gsclib045_all_v4.4/gsclib045/lef/gsclib045_tech.lef /home/hah011/PROJ1/proj1_make/TOP/SYN/../../../../../../GPDK045/digital/gsclib045_all_v4.4/gsclib045/lef/gsclib045_macro.lef /home/hah011/PROJ1/proj1_make/TOP/SYN/../../../../../../GPDK045/digital/giolib045_v3.5/lef/giolib045.lef}

read_netlist ./mapped/uart_top_mapped.v

init_design
