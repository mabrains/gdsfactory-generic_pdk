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
N 2768.75 -411.25 2938.75 -411.25 {
lab=pin2}
N -340 -355 -200 -355 {
lab=pin1}
N -396.25 -88.75 -256.25 -88.75 {
lab=hp_pin}
N -396.25 -20 -256.25 -20 {
lab=hn_pin}
N -256.25 -400 -200 -400 {
lab=hn_pin}
N 541.25 -236.25 541.25 -180 {
lab=hn_pin}
N 1028.75 607.5 1085 607.5 {
lab=hn_pin}
N 2095 285 2095 341.25 {
lab=hn_pin}
N 2247.5 -396.25 2303.75 -396.25 {
lab=hn_pin}
N 265 -370 321.25 -370 {
lab=hp_pin}
N 511.25 285 511.25 341.25 {
lab=hp_pin}
N 1550 637.5 1606.25 637.5 {
lab=hp_pin}
N 2125 -236.25 2125 -180 {
lab=hp_pin}
N 2768.75 -366.25 2825 -366.25 {
lab=hp_pin}
N 1550 592.5 2138.75 591.25 {
lab=#net1}
N 2138.75 591.25 2140 285 {
lab=#net1}
N 2080 -351.25 2080 -180 {
lab=#net2}
N 2080 -351.25 2303.75 -351.25 {
lab=#net2}
N 265 -415 485 -415 {
lab=#net3}
N 495 -410 496.25 -180 {
lab=#net3}
N 485 -415 495 -415 {
lab=#net3}
N 495 -415 495 -410 {
lab=#net3}
N 556.25 285 556.25 645 {
lab=#net4}
N 556.25 645 556.25 652.5 {
lab=#net4}
N 556.25 652.5 1085 652.5 {
lab=#net4}
C {devices/title.sym} -460 846.25 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} -340 -355 0 1 {name=p2 lab=pin1}
C {devices/iopin.sym} 2938.75 -411.25 2 1 {name=p1 lab=pin2}
C {devices/iopin.sym} -396.25 -88.75 0 1 {name=hp_pin lab=hp_pin}
C {devices/iopin.sym} -396.25 -20 0 1 {name=hn_pin lab=hn_pin}
C {devices/lab_pin.sym} -256.25 -400 0 0 {name=l1 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 541.25 -236.25 1 0 {name=l2 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 1028.75 607.5 0 0 {name=l3 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 2095 341.25 0 0 {name=l4 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 2247.5 -396.25 0 0 {name=l6 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 321.25 -370 0 1 {name=l7 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 511.25 341.25 0 0 {name=l8 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 1606.25 637.5 0 1 {name=l9 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 2125 -236.25 2 0 {name=l10 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 2825 -366.25 0 1 {name=l11 sig_type=std_logic lab=hp_pin}
C {symbols/straight_heater_meander_doped.sym} -330 40 0 0 {name=heater1
length=300.0
spacing=2.0
heater_width=1.5
extension_length=15.0
radius=90
taper_length=10.0
model=straight_heater_meander_doped
spiceprefix=P}
C {symbols/straight_heater_meander_doped.sym} 101.25 -310 1 0 {name=heater2
length=300.0
spacing=2.0
heater_width=1.5
extension_length=15.0
radius=90
taper_length=10.0
model=straight_heater_meander_doped
spiceprefix=P}
C {symbols/straight_heater_meander_doped.sym} 955 1047.5 0 0 {name=heater3
length=300.0
spacing=2.0
heater_width=1.5
extension_length=15.0
radius=90
taper_length=10.0
model=straight_heater_meander_doped
spiceprefix=P}
C {symbols/straight_heater_meander_doped.sym} 1685 -310 1 0 {name=heater4
length=300.0
spacing=2.0
heater_width=1.5
extension_length=15.0
radius=90
taper_length=10.0
model=straight_heater_meander_doped
spiceprefix=P}
C {symbols/straight_heater_meander_doped.sym} 2173.75 43.75 0 0 {name=heater5
length=300.0
spacing=2.0
heater_width=1.5
extension_length=15.0
radius=90
taper_length=10.0
model=straight_heater_meander_doped
spiceprefix=P}
