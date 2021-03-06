##############################################################################
# Template generated by SiliconSmart M-2017.03-2 (built on Apr 12, 2017 14:36:58) #
# SiliconSmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart #
# Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 919 #
# Directory: /home/akashl/NEM-Relay-CAD/liberty #
# Date Mon, 02 Nov 2020 14:28:45 PST #
#                                                                            #
# Copyright (C) 2017 Synopsys Inc.                                #
# This file contains confidential and proprietry information.                #
# All rights reserved.                                                       #
#                                                                            #
##############################################################################

set tempTestColl [ SBTestCollection automap ]


# Specifies the version of the template API expected by this file.
$tempTestColl setTemplateVer 7

## 
## Configuration Flags
$tempTestColl setConfigurationFlags { doTiming doPower doCcs }

## 
## Formal Ports
$tempTestColl makeFormalPorts {ZN_0 S1 S0 I0_0 I1_0}
$tempTestColl setParameter retention_ports {}
$tempTestColl setParameter synch_controls {}
$tempTestColl setParameter clock_ports {}
$tempTestColl setParameter asynch_ports {}
$tempTestColl setParameter asynch_ports_active_state {}

## 
## Tests

## 
## Test energy__I1_0__hl
set tempTest [ SBTest "energy__I1_0__hl" ]
$tempTest setTargets { energy__I1_0__hl Cin__I1_0__hl ccs_cin1__I1_0__hl ccs_cin2__I1_0__hl ccs_tin1__I1_0__hl ccs_tin2__I1_0__hl energy1__I1_0__hl__VB energy1__I1_0__hl__VDD energy1__I1_0__hl__VSS leakage_power1__VB leakage_power1__VDD leakage_power1__VSS leakage_power2__VB leakage_power2__VDD leakage_power2__VSS time_at_voltage__I1_0__hl }
$tempTest setTargetInputs {
  {I1_0 hl}}

$tempTest setSwitchingInputs {
  {I1_0 hl}}

$tempTest setAnalysisType tranPlus

## 
## Sweep Specification
$tempTest setTagNumTableDimensions 0 mpw

## 
## Harnesses
$tempTest setAcquire 1
$tempTest setStateCoverage "1"

## 
## ACQ_1
set tempAcq [ SBEnergyAcquisition "ACQ_1" ]
$tempAcq setHarnessName default
$tempAcq setAcquire 1
$tempAcq setState "!S1&S0&ZN_0&!I0_0"
$tempAcq setStateCoverage "1"
$tempAcq setAdditionalStateCoverage "1" "ccs_tin2__I1_0__hl"
$tempAcq setAdditionalStateCoverage "1" "ccs_cin2__I1_0__hl"
$tempAcq setAdditionalStateCoverage "1" "Cin__I1_0__hl"
$tempAcq setAdditionalStateCoverage "1" "time_at_voltage__I1_0__hl"
$tempAcq setAdditionalStateCoverage "1" "ccs_cin1__I1_0__hl"
$tempAcq setAdditionalStateCoverage "1" "ccs_tin1__I1_0__hl"

## 
## Wavetable
set tempWT [ SBWaveTable ]
$tempWT setInterface { ZN_0:out S1 S0 I0_0 I1_0 } { initial_delay units ct default_slew pp prop_delay_level energy_change_threshold energy_change_abs_threshold }

$tempWT setStimulus              {   S1   S0   I0_0 I1_0 ZN_0  } {
                   "0"        {} {   0    1    0    1    1     }
       "initial_delay" { start } {   -    -    -    0    -     }
"(initial_delay)+(pp)"        {} {   -    -    -    -    -     }
}

$tempWT addMeasurements {} {
  { tin_I1_0             Tin        { I1_0 start } NO_USER SYS }
  { cin_I1_0             Cin        { I1_0 start } NO_USER SYS }
  { ccs_cin1_I1_0        ccs_cin1   { I1_0 start } NO_USER SYS }
  { ccs_cin2_I1_0        ccs_cin2   { I1_0 start } NO_USER SYS }
  { ccs_tin1_I1_0        ccs_tin1   { I1_0 start } NO_USER SYS }
  { ccs_tin2_I1_0        ccs_tin2   { I1_0 start } NO_USER SYS }
  { ccs_time_ref_I1_0    time_at_voltage { I1_0 prop_delay_level*(__param_VDD-__param_VSS)+__param_VSS start } NO_USER SYS }
  { energy__I1_0__hl     energy     { start pp energy_change_threshold energy_change_abs_threshold 0 } NO_USER SYS }
  { energy1__I1_0__hl__VDD energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VDD } }
  { leakage_power1__VDD  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VDD } }
  { leakage_power2__VDD  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VDD } }
  { energy1__I1_0__hl__VB energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VB } }
  { leakage_power1__VB   leakage_power1 { initial_delay+0.95*pp initial_delay+pp VB } }
  { leakage_power2__VB   leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VB } }
  { energy1__I1_0__hl__VSS energy1    { start pp energy_change_threshold energy_change_abs_threshold 0 VSS } }
  { leakage_power1__VSS  leakage_power1 { initial_delay+0.95*pp initial_delay+pp VSS } }
  { leakage_power2__VSS  leakage_power2 { initial_delay+0.90*pp initial_delay+0.95*pp VSS } }
}

$tempWT bindInterface { ZN_0 S1 S0 I0_0 I1_0 } { cell_initial_delay I1_0[cycle_time] I1_0[cycle_time] I1_0[default_slew] cell_power_period I1_0[prop_delay_inp_level_fall] power_stabilization_threshold power_stabilization_threshold_absolute }
$tempAcq addWaveTable $tempWT
release_obj $tempWT

## 
## Sweep Specification
$tempAcq setTagNumTableDimensions 0 mpw

## 
## Harnesses

set tempHarness [ SBHarness default ]
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement dcvs
$tempTopOp setElementName cap_ground_ZN_0
$tempTopOp setOperation insert
$tempTopOp setNodes {ground_ZN_0 0}
$tempTopOp setParam {0}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
set tempTopOp [ SBTopologyOperation ]
$tempTopOp setElement capacitor
$tempTopOp setElementName cap_ZN_0
$tempTopOp setOperation insert
$tempTopOp setNodes {ZN_0 ground_ZN_0}
$tempTopOp setParam {load_ZN_0}
$tempHarness addTopologyOperation $tempTopOp
release_obj $tempTopOp
$tempAcq addHarness $tempHarness
release_obj $tempHarness

$tempAcq setHarnessName default
$tempTest addAcquisition $tempAcq
release_obj $tempAcq

$tempTestColl addTest $tempTest
release_obj $tempTest

set tempTestColl

