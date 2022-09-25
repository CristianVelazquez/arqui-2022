@echo off
REM ****************************************************************************
REM Vivado (TM) v2019.2 (64-bit)
REM
REM Filename    : simulate.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for simulating the design by launching the simulator
REM
REM Generated by Vivado on Sun Sep 25 17:42:50 -0300 2022
REM SW Build 2708876 on Wed Nov  6 21:40:23 MST 2019
REM
REM Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
REM
REM usage: simulate.bat
REM
REM ****************************************************************************
echo "xsim testbench_alu_time_impl -key {Post-Implementation:sim_1:Timing:testbench_alu} -tclbatch testbench_alu.tcl -view E:/arqui_2020/git/arqui-2022/vivado/tp1_v2/testbench_alu_behav.wcfg -log simulate.log"
call xsim  testbench_alu_time_impl -key {Post-Implementation:sim_1:Timing:testbench_alu} -tclbatch testbench_alu.tcl -view E:/arqui_2020/git/arqui-2022/vivado/tp1_v2/testbench_alu_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0