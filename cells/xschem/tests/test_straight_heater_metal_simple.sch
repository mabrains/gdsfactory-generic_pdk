v {xschem version=3.1.0 file_version=1.2 

* ========================================================================
* SPDX-FileCopyrightText: 2023 Mabrains Company
* Licensed under the GNU GENERAL PUBLIC License, Version 3.0 (the "License");
* you may not use this file except in compliance with the License.
*
*                    GNU GENERAL PUBLIC LICENSE
*                       Version 3, 29 June 2007
*
* This program is free software: you can redistripute it and/or modify
* it under the terms of the GNU General Public License as published
* by the Free Software Foundation, either 3 of the License, or
* (at your option) any later version.
* 
* This program is distriputed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
* 
* You should have received a copy of the GNU General Public License
* along with this program.  If not, see <https://www.gnu.org/licenses/>.
* SPDX-License-Identifier: GPL-3.0
* ========================================================================

}
G {}
K {}
V {}
S {}
E {}
N 2773.75 -383.75 2943.75 -383.75 {
lab=pin2}
N -340 -387.5 -200 -387.5 {
lab=pin1}
N -396.25 -88.75 -256.25 -88.75 {
lab=hp_pin}
N -396.25 -20 -256.25 -20 {
lab=hn_pin}
N -256.25 -410 -200 -410 {
lab=hn_pin}
N 551.25 -236.25 551.25 -180 {
lab=hn_pin}
N 1028.75 597.5 1085 597.5 {
lab=hn_pin}
N 2090 290 2090 346.25 {
lab=hn_pin}
N 2247.5 -406.25 2303.75 -406.25 {
lab=hn_pin}
N 270 -365 326.25 -365 {
lab=hp_pin}
N 506.25 290 506.25 346.25 {
lab=hp_pin}
N 1555 642.5 1611.25 642.5 {
lab=hp_pin}
N 2135 -236.25 2135 -180 {
lab=hp_pin}
N 2773.75 -361.25 2830 -361.25 {
lab=hp_pin}
N 2112.5 -351.25 2112.5 -180 {
lab=#net2}
N 270 -387.5 490 -387.5 {
lab=#net3}
N 528.75 -387.5 528.75 -180 {}
N 490 -387.5 528.75 -387.5 {}
N 528.75 620 1085 620 {}
N 528.75 290 528.75 620 {}
N 2112.5 290 2112.5 618.75 {}
N 1555 620 2112.5 620 {}
N 2112.5 618.75 2112.5 620 {}
N 2112.5 -383.75 2112.5 -351.25 {}
N 2112.5 -383.75 2303.75 -383.75 {}
C {devices/title.sym} -460 846.25 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} -340 -387.5 0 1 {name=p2 lab=pin1}
C {devices/iopin.sym} 2943.75 -383.75 2 1 {name=p1 lab=pin2}
C {devices/iopin.sym} -396.25 -88.75 0 1 {name=hp_pin lab=hp_pin}
C {devices/iopin.sym} -396.25 -20 0 1 {name=hn_pin lab=hn_pin}
C {devices/lab_pin.sym} -256.25 -410 0 0 {name=l1 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 551.25 -236.25 1 0 {name=l2 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 1028.75 597.5 0 0 {name=l3 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 2090 346.25 0 0 {name=l4 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 2247.5 -406.25 0 0 {name=l6 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 326.25 -365 0 1 {name=l7 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 506.25 346.25 0 0 {name=l8 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 1611.25 642.5 0 1 {name=l9 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 2135 -236.25 2 0 {name=l10 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 2830 -361.25 0 1 {name=l11 sig_type=std_logic lab=hp_pin}
C {../symbols/straight_heater_metal_simple.sym} -330 40 0 0 {name=heater1
length=320.0
length_undercut_spacing=6.0
length_undercut=30.0
heater_taper_length=5.0
model=straight_heater_metal_simple
spiceprefix=P}
C {../symbols/straight_heater_metal_simple.sym} 101.25 -310 1 0 {name=heater2
length=320.0
length_undercut_spacing=6.0
length_undercut=30.0
heater_taper_length=5.0
model=straight_heater_metal_simple
spiceprefix=P}
C {../symbols/straight_heater_metal_simple.sym} 955 1047.5 0 0 {name=heater3
length=320.0
length_undercut_spacing=6.0
length_undercut=30.0
heater_taper_length=5.0
model=straight_heater_metal_simple
spiceprefix=P}
C {../symbols/straight_heater_metal_simple.sym} 1685 -310 1 0 {name=heater4
length=320.0
length_undercut_spacing=6.0
length_undercut=30.0
heater_taper_length=5.0
model=straight_heater_metal_simple
spiceprefix=P}
C {../symbols/straight_heater_metal_simple.sym} 2173.75 43.75 0 0 {name=heater5
length=320.0
length_undercut_spacing=6.0
length_undercut=30.0
heater_taper_length=5.0
model=straight_heater_metal_simple
spiceprefix=P}
