
################################################################
# This is a generated script based on design: ember_fpga
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source ember_fpga_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# clkmux

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7k325tffg900-2
   set_property BOARD_PART digilentinc.com:genesys2:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name ember_fpga

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set mclk_pause_in [ create_bd_port -dir I mclk_pause_in ]
  set mclk_pause_led [ create_bd_port -dir O mclk_pause_led ]
  set mclk_pause_out [ create_bd_port -dir O mclk_pause_out ]
  set mosi_in [ create_bd_port -dir I mosi_in ]
  set mosi_led [ create_bd_port -dir O mosi_led ]
  set mosi_out [ create_bd_port -dir O mosi_out ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set reset_led [ create_bd_port -dir O -type rst reset_led ]
  set rram_busy_ember_led [ create_bd_port -dir O rram_busy_ember_led ]
  set rram_busy_in [ create_bd_port -dir I rram_busy_in ]
  set rram_busy_out [ create_bd_port -dir O rram_busy_out ]
  set rst_n_led [ create_bd_port -dir O -from 0 -to 0 rst_n_led ]
  set rst_n_out [ create_bd_port -dir O -from 0 -to 0 -type rst rst_n_out ]
  set sa_do [ create_bd_port -dir I -from 47 -to 0 sa_do ]
  set sa_rdy [ create_bd_port -dir I sa_rdy ]
  set sc_in [ create_bd_port -dir I sc_in ]
  set sc_led [ create_bd_port -dir O sc_led ]
  set sc_out [ create_bd_port -dir O sc_out ]
  set sclk_in [ create_bd_port -dir I -type clk -freq_hz 5000000 sclk_in ]
  set sclk_led [ create_bd_port -dir O sclk_led ]
  set sclk_out [ create_bd_port -dir O sclk_out ]
  set sysclk_n [ create_bd_port -dir I -type clk -freq_hz 200000000 sysclk_n ]
  set sysclk_p [ create_bd_port -dir I -type clk -freq_hz 200000000 sysclk_p ]
  set trig_in_ack [ create_bd_port -dir O trig_in_ack ]
  set use_mmcm [ create_bd_port -dir I use_mmcm ]
  set use_mmcm_led [ create_bd_port -dir O use_mmcm_led ]

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.AXI_DRP {true} \
   CONFIG.CLKFB_IN_SIGNALING {SINGLE} \
   CONFIG.CLKIN1_JITTER_PS {50.0} \
   CONFIG.CLKIN2_JITTER_PS {83.33} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {112.316} \
   CONFIG.CLKOUT1_PHASE_ERROR {89.971} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {Custom} \
   CONFIG.ENABLE_CLOCK_MONITOR {false} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.INTERFACE_SELECTION {Enable_AXI} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {5.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {5.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.PHASE_DUTY_CONFIG {false} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.RESET_BOARD_INTERFACE {Custom} \
   CONFIG.RESET_PORT {reset} \
   CONFIG.RESET_TYPE {ACTIVE_HIGH} \
   CONFIG.SECONDARY_IN_FREQ {100.000} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_DYN_RECONFIG {true} \
   CONFIG.USE_INCLK_SWITCHOVER {false} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {true} \
 ] $clk_wiz

  # Create instance: clkmux_0, and set properties
  set block_name clkmux
  set block_cell_name clkmux_0
  if { [catch {set clkmux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clkmux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU {true} \
   CONFIG.ALL_PROBE_SAME_MU_CNT {2} \
   CONFIG.C_ADV_TRIGGER {false} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_EN_STRG_QUAL {0} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {1} \
   CONFIG.C_PROBE0_MU_CNT {2} \
   CONFIG.C_PROBE0_TYPE {1} \
   CONFIG.C_PROBE0_WIDTH {48} \
   CONFIG.C_TRIGIN_EN {true} \
 ] $ila_0

  # Create instance: jtag_axi_0, and set properties
  set jtag_axi_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:jtag_axi:1.2 jtag_axi_0 ]
  set_property -dict [ list \
   CONFIG.PROTOCOL {2} \
 ] $jtag_axi_0

  # Create instance: proc_sys_reset_1, and set properties
  set proc_sys_reset_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_1 ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $proc_sys_reset_1

  # Create interface connections
  connect_bd_intf_net -intf_net jtag_axi_0_M_AXI [get_bd_intf_pins clk_wiz/s_axi_lite] [get_bd_intf_pins jtag_axi_0/M_AXI]

  # Create port connections
  connect_bd_net -net clk_wiz_clk_out1 [get_bd_pins clk_wiz/clk_out1] [get_bd_pins clk_wiz/s_axi_aclk] [get_bd_pins clkmux_0/mmcm_clk] [get_bd_pins ila_0/clk] [get_bd_pins jtag_axi_0/aclk] [get_bd_pins proc_sys_reset_1/slowest_sync_clk]
  connect_bd_net -net clk_wiz_locked [get_bd_pins clk_wiz/locked] [get_bd_pins proc_sys_reset_1/dcm_locked]
  connect_bd_net -net clkmux_0_sclk_out [get_bd_ports sclk_led] [get_bd_ports sclk_out] [get_bd_pins clkmux_0/clk_out]
  connect_bd_net -net ila_0_trig_in_ack [get_bd_ports trig_in_ack] [get_bd_pins ila_0/trig_in_ack]
  connect_bd_net -net mclk_pause_in [get_bd_ports mclk_pause_in] [get_bd_ports mclk_pause_led] [get_bd_ports mclk_pause_out]
  connect_bd_net -net mosi_in [get_bd_ports mosi_in] [get_bd_ports mosi_led] [get_bd_ports mosi_out]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_ports rst_n_led] [get_bd_ports rst_n_out] [get_bd_pins clk_wiz/s_axi_aresetn] [get_bd_pins proc_sys_reset_1/peripheral_aresetn]
  connect_bd_net -net proc_sys_reset_1_interconnect_aresetn [get_bd_pins jtag_axi_0/aresetn] [get_bd_pins proc_sys_reset_1/interconnect_aresetn]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_ports reset_led] [get_bd_pins proc_sys_reset_1/ext_reset_in]
  connect_bd_net -net rram_busy_in_1 [get_bd_ports rram_busy_ember_led] [get_bd_ports rram_busy_in] [get_bd_ports rram_busy_out]
  connect_bd_net -net sa_do_1 [get_bd_ports sa_do] [get_bd_pins ila_0/probe0]
  connect_bd_net -net sa_rdy_1 [get_bd_ports sa_rdy] [get_bd_pins ila_0/trig_in]
  connect_bd_net -net sc_in [get_bd_ports sc_in] [get_bd_ports sc_led] [get_bd_ports sc_out]
  connect_bd_net -net sclk_in_1 [get_bd_ports sclk_in] [get_bd_pins clkmux_0/sclk_in]
  connect_bd_net -net sysclk_n_1 [get_bd_ports sysclk_n] [get_bd_pins clk_wiz/clk_in1_n]
  connect_bd_net -net sysclk_p_1 [get_bd_ports sysclk_p] [get_bd_pins clk_wiz/clk_in1_p]
  connect_bd_net -net use_mmcm_1 [get_bd_ports use_mmcm] [get_bd_ports use_mmcm_led] [get_bd_pins clkmux_0/clksel]

  # Create address segments
  assign_bd_address -offset 0x44A00000 -range 0x00010000 -target_address_space [get_bd_addr_spaces jtag_axi_0/Data] [get_bd_addr_segs clk_wiz/s_axi_lite/Reg] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


