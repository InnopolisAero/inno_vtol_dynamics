#!/bin/bash
# It should be called from can_node folder
cpplint Src/Common/*/*
cpplint Src/Drivers/*/*
cpplint Src/Modules/*/*

# cpplint Tests/*.cpp
# cpplint Tests/*.hpp
# cpplint Tests/charger/*.cpp
# cpplint Tests/charger/*.hpp
cpplint Tests/test_timer_capture.cpp
cpplint Tests/test_algorithms.cpp
cpplint Tests/test_gate.cpp
cpplint Tests/test_elevator.cpp
