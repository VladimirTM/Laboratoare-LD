project_new example1 -overwrite

set_global_assignment -name FAMILY MAX10
set_global_assignment -name DEVICE 10M50DAF484C7G 

set_global_assignment -name BDF_FILE example1.bdf
set_global_assignment -name VERILOG_FILE ../verilog/regSP.v
set_global_assignment -name SDC_FILE example1.sdc

set_global_assignment -name TOP_LEVEL_ENTITY regSP
set_location_assignment -to clk PIN_AH10

set_location_assignment PIN_C10 -to sIn   ;
set_location_assignment PIN_C11 -to shift   ;
set_location_assignment PIN_D12 -to rst   ;
set_location_assignment PIN_B8  -to clk  ;

set_location_assignment PIN_C14 -to out1[0]   ;
set_location_assignment PIN_E15 -to out1[1]   ;
set_location_assignment PIN_C15 -to out1[2]   ;
set_location_assignment PIN_C16 -to out1[3]   ;
set_location_assignment PIN_E16 -to out1[4]   ;
set_location_assignment PIN_D17 -to out1[5]   ;
set_location_assignment PIN_C17 -to out1[6]   ;

set_location_assignment PIN_C18 -to out2[0]   ;
set_location_assignment PIN_D18 -to out2[1]   ;
set_location_assignment PIN_E18 -to out2[2]   ;
set_location_assignment PIN_B16 -to out2[3]   ;
set_location_assignment PIN_A17 -to out2[4]   ;
set_location_assignment PIN_A18 -to out2[5]   ;
set_location_assignment PIN_B17 -to out2[6]   ;

set_location_assignment PIN_B20 -to out3[0]   ;
set_location_assignment PIN_A20 -to out3[1]   ;
set_location_assignment PIN_B19 -to out3[2]   ;
set_location_assignment PIN_A21 -to out3[3]   ;
set_location_assignment PIN_B21 -to out3[4]   ;
set_location_assignment PIN_C22 -to out3[5]   ;
set_location_assignment PIN_B22 -to out3[6]   ;

set_location_assignment PIN_F21 -to out4[0]   ;
set_location_assignment PIN_E22 -to out4[1]   ;
set_location_assignment PIN_E21 -to out4[2]   ;
set_location_assignment PIN_C19 -to out4[3]   ;
set_location_assignment PIN_C20 -to out4[4]   ;
set_location_assignment PIN_D19 -to out4[5]   ;
set_location_assignment PIN_E17 -to out4[6]   ;

load_package flow
execute_flow -compile

project_close
