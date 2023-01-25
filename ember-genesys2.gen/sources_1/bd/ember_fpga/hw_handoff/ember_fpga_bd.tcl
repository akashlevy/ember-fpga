
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
# rram_top_wrapper

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
  set cpu_resetn [ create_bd_port -dir I -type rst cpu_resetn ]
  set cpu_resetn_led [ create_bd_port -dir O cpu_resetn_led ]
  set mclk_pause_in [ create_bd_port -dir I mclk_pause_in ]
  set mclk_pause_led [ create_bd_port -dir O mclk_pause_led ]
  set mclk_pause_out [ create_bd_port -dir O mclk_pause_out ]
  set miso [ create_bd_port -dir O miso ]
  set miso_led [ create_bd_port -dir O miso_led ]
  set mosi_in [ create_bd_port -dir I mosi_in ]
  set mosi_led [ create_bd_port -dir O mosi_led ]
  set mosi_out [ create_bd_port -dir O mosi_out ]
  set rram_busy_ember_led [ create_bd_port -dir O rram_busy_ember_led ]
  set rram_busy_fpga_led [ create_bd_port -dir O rram_busy_fpga_led ]
  set rram_busy_in [ create_bd_port -dir I rram_busy_in ]
  set rram_busy_out [ create_bd_port -dir O rram_busy_out ]
  set rst_n_out [ create_bd_port -dir O -type rst rst_n_out ]
  set sa_do [ create_bd_port -dir I -from 47 -to 0 sa_do ]
  set sa_rdy [ create_bd_port -dir I sa_rdy ]
  set sc_in [ create_bd_port -dir I sc_in ]
  set sc_led [ create_bd_port -dir O sc_led ]
  set sc_out [ create_bd_port -dir O sc_out ]
  set sclk_in [ create_bd_port -dir I -type clk -freq_hz 50000000 sclk_in ]
  set sclk_led [ create_bd_port -dir O sclk_led ]
  set sclk_out [ create_bd_port -dir O sclk_out ]

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
  
  # Create port connections
  connect_bd_net -net cpu_resetn [get_bd_ports cpu_resetn] [get_bd_ports cpu_resetn_led] [get_bd_ports rst_n_out] [get_bd_pins rram_top_wrapper_0/rst_n]
  connect_bd_net -net mclk_pause_in [get_bd_ports mclk_pause_in] [get_bd_ports mclk_pause_led] [get_bd_ports mclk_pause_out] [get_bd_pins rram_top_wrapper_0/mclk_pause]
  connect_bd_net -net mosi_in [get_bd_ports mosi_in] [get_bd_ports mosi_led] [get_bd_ports mosi_out] [get_bd_pins rram_top_wrapper_0/mosi]
  connect_bd_net -net rram_busy_in_1 [get_bd_ports rram_busy_ember_led] [get_bd_ports rram_busy_in] [get_bd_ports rram_busy_out]
  connect_bd_net -net rram_top_0_miso [get_bd_ports miso] [get_bd_ports miso_led] [get_bd_pins rram_top_wrapper_0/miso]
  connect_bd_net -net rram_top_0_rram_busy [get_bd_ports rram_busy_fpga_led] [get_bd_pins rram_top_wrapper_0/rram_busy]
  connect_bd_net -net sa_do_1 [get_bd_ports sa_do] [get_bd_pins rram_top_wrapper_0/sa_do]
  connect_bd_net -net sa_rdy [get_bd_ports sa_rdy] [get_bd_pins rram_top_wrapper_0/sa_rdy]
  connect_bd_net -net sc_in [get_bd_ports sc_in] [get_bd_ports sc_led] [get_bd_ports sc_out] [get_bd_pins rram_top_wrapper_0/sc]
  connect_bd_net -net sclk_in_1 [get_bd_ports sclk_in] [get_bd_ports sclk_led] [get_bd_ports sclk_out] [get_bd_pins rram_top_wrapper_0/sclk]

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


