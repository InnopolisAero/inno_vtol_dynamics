#!/bin/bash
# Check http://astyle.sourceforge.net/astyle.html
 

ASTYLE_SCRIPT_PATH=$(dirname $(readlink -f $0))/astyle_fix_single_file.sh
WS_DIR=$(dirname $(readlink -f $0))/../..
cd $WS_DIR


for filename in Src/Drivers/*/*; do
   $ASTYLE_SCRIPT_PATH $filename
done


for filename in Src/Modules/*/*; do
   $ASTYLE_SCRIPT_PATH $filename
done


for filename in Src/Common/Inc/*; do
   $ASTYLE_SCRIPT_PATH $filename
done
$ASTYLE_SCRIPT_PATH Src/Common/Src/uavcan_slcan.c
$ASTYLE_SCRIPT_PATH Src/Common/Src/sq_uart.c
$ASTYLE_SCRIPT_PATH Src/Common/Src/uavcan.c
$ASTYLE_SCRIPT_PATH Src/Common/Src/uavcan_data_types.c
$ASTYLE_SCRIPT_PATH Src/Common/Src/sq_exti.c


$ASTYLE_SCRIPT_PATH Tests/test_timer_capture.cpp
$ASTYLE_SCRIPT_PATH Tests/test_algorithms.cpp
