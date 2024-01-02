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
L 7 780 -730 780 -60 {}
L 7 1120 -730 1120 -60 {}
L 7 1460 -730 1460 -60 {}
L 7 1800 -730 1800 -60 {}
L 7 20 -730 20 -60 {}
T {MMI} 40 -710 0 0 0.8 0.8 {}
T {MZI} 460 -710 0 0 0.8 0.8 {}
T {Heater} 810 -710 0 0 0.8 0.8 {}
T {Ring} 1140 -710 0 0 0.8 0.8 {}
T {Coupler} 1490 -710 0 0 0.8 0.8 {}
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
