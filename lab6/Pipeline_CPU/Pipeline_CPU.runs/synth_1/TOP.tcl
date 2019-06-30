# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/verilog2/Pipeline_CPU/Pipeline_CPU.cache/wt [current_project]
set_property parent.project_path D:/verilog2/Pipeline_CPU/Pipeline_CPU.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo d:/verilog2/Pipeline_CPU/Pipeline_CPU.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files c:/Users/yujiarui/Desktop/Pipeline_CPU/CoeforIR.coe
add_files c:/Users/yujiarui/Desktop/Pipeline_CPU/CoeForIRrelase.coe
add_files c:/Users/yujiarui/Desktop/Pipeline_CPU/DMcoe.coe
add_files c:/Users/yujiarui/Desktop/Pipeline_CPU/IR_Coe.coe
add_files c:/Users/yujiarui/Desktop/Pipeline_CPU/IR_Project.coe
add_files c:/Users/yujiarui/Desktop/Pipeline_CPU/DM_Project.coe
read_verilog -library xil_defaultlib {
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ADD.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ALU.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ALUCtrl.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ALUSrcmux.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/Compare.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/Control.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/EX_MEM_Reg.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ForwardBmux.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ForwardCmux.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ForwardDmux.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ForwardUnit.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ForwardUnit4Beq.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ForwardmuxA.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/HazardDetection.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ID_EX_Reg.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/ID_Flushmux.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/IF_Flushmux.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/IF_ID_Reg.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/MEM_WB_Reg.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/MemtoRegmux.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/PC.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/PCSrcmux.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/PC_9_2.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/Pipeline_CPU.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/RegDstmux.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/RegFile.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/Shift_Left_2.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/Sign_extend.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/VGA.v
  D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/new/TOP.v
}
read_ip -quiet D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0.xci
set_property used_in_implementation false [get_files -all d:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_ooc.xdc]

read_ip -quiet D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1.xci
set_property used_in_implementation false [get_files -all d:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/ip/dist_mem_gen_1/dist_mem_gen_1_ooc.xdc]

read_ip -quiet D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xci
set_property used_in_implementation false [get_files -all d:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_board.xdc]
set_property used_in_implementation false [get_files -all d:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0.xdc]
set_property used_in_implementation false [get_files -all d:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0_ooc.xdc]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/constrs_1/imports/tutorial/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files D:/verilog2/Pipeline_CPU/Pipeline_CPU.srcs/constrs_1/imports/tutorial/Nexys4DDR_Master.xdc]

set_param ips.enableIPCacheLiteLoad 1
close [open __synthesis_is_running__ w]

synth_design -top TOP -part xc7a100tcsg324-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef TOP.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file TOP_utilization_synth.rpt -pb TOP_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
