project_new example1 -overwrite

set_global_assignment -name FAMILY MAX10
set_global_assignment -name DEVICE 10M50DAF484C7G 

set_global_assignment -name BDF_FILE example1.bdf
set_global_assignment -name VERILOG_FILE ../verilog/fsmDiv.v
set_global_assignment -name SDC_FILE example1.sdc

set_global_assignment -name TOP_LEVEL_ENTITY fsmDiv
set_location_assignment -to clk PIN_AH10

set_location_assignment PIN_C10 -to in   ;
set_location_assignment PIN_C11 -to rst   ;
set_location_assignment PIN_P11  -to clk   ;
set_location_assignment PIN_A8 -to o[0]   ;
set_location_assignment PIN_A9 -to o[1]   ;

set_location_assignment PIN_C14 -to o1[0]   ;
set_location_assignment PIN_E15 -to o1[1]   ;
set_location_assignment PIN_C15 -to o1[2]   ;
set_location_assignment PIN_C16 -to o1[3]   ;
set_location_assignment PIN_E16 -to o1[4]   ;
set_location_assignment PIN_D17 -to o1[5]   ;
set_location_assignment PIN_C17 -to o1[6]   ;

set_location_assignment PIN_C18 -to o2[0]   ;
set_location_assignment PIN_D18 -to o2[1]   ;
set_location_assignment PIN_E18 -to o2[2]   ;
set_location_assignment PIN_B16 -to o2[3]   ;
set_location_assignment PIN_A17 -to o2[4]   ;
set_location_assignment PIN_A18 -to o2[5]   ;
set_location_assignment PIN_B17 -to o2[6]   ;


load_package flow
execute_flow -compile

project_close
