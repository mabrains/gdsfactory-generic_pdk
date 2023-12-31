v {xschem version=3.1.0 file_version=1.2 

* Copyright 2022 GlobalFoundries PDK Authors
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
L 7 440 -730 440 -60 {}
L 7 1210 -730 1210 -60 {}
L 7 2140 -730 2140 -60 {}
L 7 2570 -730 2570 -60 {}
L 7 2910 -730 2910 -60 {}
L 7 20 -730 20 -60 {}
L 7 880 -730 880 -60 {}
T {MMI} 40 -710 0 0 0.8 0.8 {}
T {MZI} 460 -710 0 0 0.8 0.8 {}
T {Heater} 1240 -710 0 0 0.8 0.8 {}
T {Ring} 2160 -710 0 0 0.8 0.8 {}
T {Coupler} 2600 -710 0 0 0.8 0.8 {}
T {MZM} 910 -710 0 0 0.8 0.8 {}
C {test_mmi1x2.sym} 180 -600 0 0 {name=x1}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="GenericPDK Authors"}
C {devices/launcher.sym} 90 -840 0 0 {name=h1
descr="List of devices (Google docs)"
url="https://docs.google.com/spreadsheets/d/1Rp77UNHrHiQSDsKXBeNxQnVkOiLgrTtywIjWb5KaUJE/edit#gid=735012245"}
C {devices/launcher.sym} 90 -790 0 0 {name=h2
descr="Github"
url="https://github.com/mabrains/gdsfactory-generic_pdk"}
C {tests/test_mmi2x2.sym} 90 -480 0 0 {name=x2}
C {tests/test_mmi1x2_with_sbend.sym} 160 -310 0 0 {name=x3}
C {tests/test_mmi2x2_with_sbend.sym} 90 -250 0 0 {name=x4}
C {tests/test_mmi_90degree_hybrid.sym} 110 -130 0 0 {name=x5}
C {tests/test_mzi.sym} 520 -560 0 0 {name=x6}
C {tests/test_mzi1x2_2x2.sym} 520 -450 0 0 {name=x7}
C {tests/test_mzi2x2_2x2_phase_shifter.sym} 500 -360 0 0 {name=x8}
C {tests/test_mzi_phase_shifter.sym} 530 -250 0 0 {name=x9}
C {tests/test_mzit.sym} 520 -130 0 0 {name=x10}
C {tests/test_mzm.sym} 950 -340 0 0 {name=x11}
C {tests/test_ring_double.sym} 2210 -600 0 0 {name=x12}
C {tests/test_ring_double_heater.sym} 2200 -510 0 0 {name=x13}
C {tests/test_ring_double_pn.sym} 2200 -410 0 0 {name=x14}
C {tests/test_ring_single.sym} 2230 -320 0 0 {name=x15}
C {tests/test_ring_single_bend_coupler.sym} 2190 -230 0 0 {name=x16}
C {tests/test_ring_single_heater.sym} 2240 -140 0 0 {name=x17}
C {tests/test_ring_single_pn.sym} 2260 -70 0 0 {name=x18}
C {tests/test_straight_heater_doped_rib.sym} 1300 -570 0 0 {name=x19}
C {tests/test_straight_heater_doped_strip.sym} 1260 -460 0 0 {name=x20}
C {tests/test_straight_heater_meander.sym} 1290 -350 0 0 {name=x21}
C {tests/test_straight_heater_meander_doped.sym} 1260 -240 0 0 {name=x22}
C {tests/test_straight_heater_metal.sym} 1280 -100 0 0 {name=x23}
C {tests/test_straight_heater_metal_90_90.sym} 1700 -560 0 0 {name=x24}
C {tests/test_straight_heater_metal_simple.sym} 1680 -440 0 0 {name=x25}
C {tests/test_straight_heater_metal_undercut.sym} 1700 -310 0 0 {name=x26}
C {tests/test_straight_heater_metal_undercut_90_90.sym} 1670 -170 0 0 {name=x27}
