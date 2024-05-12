project_new example1 -overwrite

set_global_assignment -name FAMILY MAX10
set_global_assignment -name DEVICE 10M50DAF484C7G 

set_global_assignment -name BDF_FILE example1.bdf
set_global_assignment -name VERILOG_FILE ../verilog/numD.v
set_global_assignment -name SDC_FILE example1.sdc

set_global_assignment -name TOP_LEVEL_ENTITY numD
set_location_assignment -to clk PIN_AH10

set_location_assignment PIN_C10 -to en   ;
set_location_assignment PIN_C11 -to rst   ;
set_location_assignment PIN_B8 -to clk   ;
set_location_assignment PIN_C14 -to out[0]   ;
set_location_assignment PIN_E15 -to out[1]   ;
set_location_assignment PIN_C15 -to out[2]   ;
set_location_assignment PIN_C16 -to out[3]   ;
set_location_assignment PIN_E16 -to out[4]   ;
set_location_assignment PIN_D17 -to out[5]   ;
set_location_assignment PIN_C17 -to out[6]   ;

load_package flow
execute_flow -compile

project_close
