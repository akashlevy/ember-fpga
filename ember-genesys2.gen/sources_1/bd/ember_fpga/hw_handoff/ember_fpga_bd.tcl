
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
# clkmux, rram_top_wrapper

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
  set sys_diff_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_diff_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $sys_diff_clock


  # Create ports
  set PROG_MISO [ create_bd_port -dir O PROG_MISO ]
  set PROG_MOSI [ create_bd_port -dir I PROG_MOSI ]
  set PROG_SCK [ create_bd_port -dir I -type clk -freq_hz 33000000 PROG_SCK ]
  set PROG_SPIEN [ create_bd_port -dir I PROG_SPIEN ]
  set PROG_SS [ create_bd_port -dir I PROG_SS ]
  set aclk [ create_bd_port -dir O -from 0 -to 0 aclk ]
  set bl_en [ create_bd_port -dir O -from 0 -to 0 bl_en ]
  set bleed_en [ create_bd_port -dir O -from 0 -to 0 bleed_en ]
  set bsl_dac_config [ create_bd_port -dir O -from 4 -to 0 bsl_dac_config ]
  set bsl_dac_en [ create_bd_port -dir O -from 0 -to 0 bsl_dac_en ]
  set clamp_ref [ create_bd_port -dir O -from 5 -to 0 clamp_ref ]
  set clksel [ create_bd_port -dir I clksel ]
  set di [ create_bd_port -dir O -from 47 -to 0 di ]
  set mclk_pause_in [ create_bd_port -dir I mclk_pause_in ]
  set mclk_pause_out [ create_bd_port -dir O mclk_pause_out ]
  set miso_led [ create_bd_port -dir O miso_led ]
  set mosi_led [ create_bd_port -dir O mosi_led ]
  set mosi_out [ create_bd_port -dir O mosi_out ]
  set read_dac_config [ create_bd_port -dir O -from 3 -to 0 read_dac_config ]
  set read_dac_en [ create_bd_port -dir O -from 0 -to 0 read_dac_en ]
  set read_ref [ create_bd_port -dir O -from 5 -to 0 read_ref ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_LOW} \
 ] $reset
  set rram_addr [ create_bd_port -dir O -from 15 -to 0 rram_addr ]
  set rram_busy_fpga_led [ create_bd_port -dir O rram_busy_fpga_led ]
  set rram_busy_in [ create_bd_port -dir I rram_busy_in ]
  set rram_busy_led [ create_bd_port -dir O rram_busy_led ]
  set rram_busy_out [ create_bd_port -dir O rram_busy_out ]
  set rst_n_led [ create_bd_port -dir O -from 0 -to 0 rst_n_led ]
  set rst_n_out [ create_bd_port -dir O -from 0 -to 0 rst_n_out ]
  set sa_clk [ create_bd_port -dir O sa_clk ]
  set sa_do [ create_bd_port -dir I -from 47 -to 0 sa_do ]
  set sa_en [ create_bd_port -dir O -from 0 -to 0 sa_en ]
  set sa_rdy [ create_bd_port -dir I sa_rdy ]
  set sc_led [ create_bd_port -dir O -from 0 -to 0 sc_led ]
  set sc_out [ create_bd_port -dir O -from 0 -to 0 sc_out ]
  set sclk_led [ create_bd_port -dir O sclk_led ]
  set sclk_out [ create_bd_port -dir O sclk_out ]
  set set_rst [ create_bd_port -dir O -from 0 -to 0 set_rst ]
  set sl_en [ create_bd_port -dir O -from 0 -to 0 sl_en ]
  set spien_led [ create_bd_port -dir O spien_led ]
  set user_rst [ create_bd_port -dir I -type rst user_rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $user_rst
  set we [ create_bd_port -dir O we ]
  set wl_dac_config [ create_bd_port -dir O -from 7 -to 0 wl_dac_config ]
  set wl_dac_en [ create_bd_port -dir O -from 0 -to 0 wl_dac_en ]
  set wl_en [ create_bd_port -dir O -from 0 -to 0 wl_en ]

  # Create instance: clk_wiz, and set properties
  set clk_wiz [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz ]
  set_property -dict [ list \
   CONFIG.AXI_DRP {false} \
   CONFIG.CLKFB_IN_SIGNALING {SINGLE} \
   CONFIG.CLKIN1_JITTER_PS {50} \
   CONFIG.CLKIN1_UI_JITTER {50} \
   CONFIG.CLKIN2_JITTER_PS {100.000} \
   CONFIG.CLKIN2_UI_JITTER {100.000} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {112.316} \
   CONFIG.CLKOUT1_PHASE_ERROR {89.971} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {100} \
   CONFIG.CLKOUT1_USED {true} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {129.198} \
   CONFIG.CLKOUT2_PHASE_ERROR {89.971} \
   CONFIG.CLKOUT2_REQUESTED_DUTY_CYCLE {80} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {50} \
   CONFIG.CLKOUT2_REQUESTED_PHASE {-54} \
   CONFIG.CLKOUT2_USED {false} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT3_JITTER {129.198} \
   CONFIG.CLKOUT3_PHASE_ERROR {89.971} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {50.000} \
   CONFIG.CLKOUT3_REQUESTED_PHASE {180} \
   CONFIG.CLKOUT3_USED {false} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLKOUT7_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {Custom} \
   CONFIG.ENABLE_CLOCK_MONITOR {false} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.INTERFACE_SELECTION {Enable_AXI} \
   CONFIG.JITTER_OPTIONS {PS} \
   CONFIG.MMCM_BANDWIDTH {OPTIMIZED} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {5.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {5.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT1_DUTY_CYCLE {0.800} \
   CONFIG.MMCM_CLKOUT1_PHASE {-54.000} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT2_PHASE {180.000} \
   CONFIG.MMCM_COMPENSATION {ZHOLD} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.MMCM_REF_JITTER2 {0.010} \
   CONFIG.NUM_OUT_CLKS {1} \
   CONFIG.PHASE_DUTY_CONFIG {false} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.RESET_PORT {resetn} \
   CONFIG.RESET_TYPE {ACTIVE_LOW} \
   CONFIG.SECONDARY_IN_FREQ {100.000} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_DYN_RECONFIG {false} \
   CONFIG.USE_FREQ_SYNTH {true} \
   CONFIG.USE_INCLK_SWITCHOVER {false} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_PHASE_ALIGNMENT {true} \
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
  
  # Create instance: rram_top_wrapper_0, and set properties
  set block_name rram_top_wrapper
  set block_cell_name rram_top_wrapper_0
  if { [catch {set rram_top_wrapper_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $rram_top_wrapper_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {and} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_andgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create interface connections
  connect_bd_intf_net -intf_net sys_diff_clock_1 [get_bd_intf_ports sys_diff_clock] [get_bd_intf_pins clk_wiz/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net PROG_SPIEN_1 [get_bd_ports PROG_SPIEN] [get_bd_ports spien_led]
  connect_bd_net -net PROG_SS_1 [get_bd_ports PROG_SS] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net clk [get_bd_pins clk_wiz/clk_out1] [get_bd_pins clkmux_0/fastclk]
  connect_bd_net -net clkmux_0_sclk_out [get_bd_ports sclk_led] [get_bd_ports sclk_out] [get_bd_pins clkmux_0/clk_out] [get_bd_pins rram_top_wrapper_0/sclk]
  connect_bd_net -net clksel_1 [get_bd_ports clksel] [get_bd_pins clkmux_0/clksel]
  connect_bd_net -net di [get_bd_ports di] [get_bd_pins rram_top_wrapper_0/di]
  connect_bd_net -net mclk_pause_in [get_bd_ports mclk_pause_in] [get_bd_ports mclk_pause_out] [get_bd_pins rram_top_wrapper_0/mclk_pause]
  connect_bd_net -net mosi_in [get_bd_ports PROG_MOSI] [get_bd_ports mosi_led] [get_bd_ports mosi_out] [get_bd_pins rram_top_wrapper_0/mosi]
  connect_bd_net -net read_ref [get_bd_ports read_ref] [get_bd_pins rram_top_wrapper_0/read_ref]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz/resetn] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net rram_addr [get_bd_ports rram_addr] [get_bd_pins rram_top_wrapper_0/rram_addr]
  connect_bd_net -net rram_busy [get_bd_ports rram_busy_in] [get_bd_ports rram_busy_led]
  connect_bd_net -net rram_top_wrapper_0_aclk [get_bd_ports aclk] [get_bd_pins rram_top_wrapper_0/aclk]
  connect_bd_net -net rram_top_wrapper_0_bl_en [get_bd_ports bl_en] [get_bd_pins rram_top_wrapper_0/bl_en]
  connect_bd_net -net rram_top_wrapper_0_bleed_en [get_bd_ports bleed_en] [get_bd_pins rram_top_wrapper_0/bleed_en]
  connect_bd_net -net rram_top_wrapper_0_bsl_dac_config [get_bd_ports bsl_dac_config] [get_bd_pins rram_top_wrapper_0/bsl_dac_config]
  connect_bd_net -net rram_top_wrapper_0_bsl_dac_en [get_bd_ports bsl_dac_en] [get_bd_pins rram_top_wrapper_0/bsl_dac_en]
  connect_bd_net -net rram_top_wrapper_0_clamp_ref [get_bd_ports clamp_ref] [get_bd_pins rram_top_wrapper_0/clamp_ref]
  connect_bd_net -net rram_top_wrapper_0_miso [get_bd_ports PROG_MISO] [get_bd_ports miso_led] [get_bd_pins rram_top_wrapper_0/miso]
  connect_bd_net -net rram_top_wrapper_0_read_dac_config [get_bd_ports read_dac_config] [get_bd_pins rram_top_wrapper_0/read_dac_config]
  connect_bd_net -net rram_top_wrapper_0_read_dac_en [get_bd_ports read_dac_en] [get_bd_pins rram_top_wrapper_0/read_dac_en]
  connect_bd_net -net rram_top_wrapper_0_rram_busy [get_bd_ports rram_busy_fpga_led] [get_bd_ports rram_busy_out] [get_bd_pins clkmux_0/rram_busy] [get_bd_pins rram_top_wrapper_0/rram_busy]
  connect_bd_net -net rram_top_wrapper_0_sa_clk [get_bd_ports sa_clk] [get_bd_pins rram_top_wrapper_0/sa_clk]
  connect_bd_net -net rram_top_wrapper_0_sa_en [get_bd_ports sa_en] [get_bd_pins rram_top_wrapper_0/sa_en]
  connect_bd_net -net rram_top_wrapper_0_set_rst [get_bd_ports set_rst] [get_bd_pins rram_top_wrapper_0/set_rst]
  connect_bd_net -net rram_top_wrapper_0_sl_en [get_bd_ports sl_en] [get_bd_pins rram_top_wrapper_0/sl_en]
  connect_bd_net -net rram_top_wrapper_0_we [get_bd_ports we] [get_bd_pins rram_top_wrapper_0/we]
  connect_bd_net -net rram_top_wrapper_0_wl_dac_config [get_bd_ports wl_dac_config] [get_bd_pins rram_top_wrapper_0/wl_dac_config]
  connect_bd_net -net rram_top_wrapper_0_wl_dac_en [get_bd_ports wl_dac_en] [get_bd_pins rram_top_wrapper_0/wl_dac_en]
  connect_bd_net -net rram_top_wrapper_0_wl_en [get_bd_ports wl_en] [get_bd_pins rram_top_wrapper_0/wl_en]
  connect_bd_net -net sa_do [get_bd_ports sa_do] [get_bd_pins rram_top_wrapper_0/sa_do]
  connect_bd_net -net sa_rdy [get_bd_ports sa_rdy] [get_bd_pins rram_top_wrapper_0/sa_rdy]
  connect_bd_net -net sc_in [get_bd_ports sc_led] [get_bd_ports sc_out] [get_bd_pins rram_top_wrapper_0/sc] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net sclk_in_1 [get_bd_ports PROG_SCK] [get_bd_pins clkmux_0/sclk]
  connect_bd_net -net user_rst_1 [get_bd_ports user_rst] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_ports rst_n_led] [get_bd_ports rst_n_out] [get_bd_pins rram_top_wrapper_0/rst_n] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_1/Op2] [get_bd_pins util_vector_logic_2/Res]

  # Create address segments


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


