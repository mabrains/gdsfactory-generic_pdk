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
N 2883.75 -352.5 3053.75 -352.5 {
lab=pin2}
N -340 -355 -200 -355 {
lab=pin1}
N 390 -355 545 -355 {
lab=#net1}
N 546.25 370 546.25 650 {
lab=#net2}
N 2138.75 371.25 2138.75 651.25 {
lab=#net3}
N 546.25 -353.75 546.25 -220 {
lab=#net1}
N 545 -355 546.25 -355 {
lab=#net1}
N 546.25 -355 546.25 -353.75 {
lab=#net1}
N 2138.75 -352.5 2138.75 -218.75 {
lab=#net4}
N 2138.75 -352.5 2293.75 -352.5 {
lab=#net4}
N 546.25 650 546.25 651.25 {
lab=#net2}
N -396.25 -88.75 -256.25 -88.75 {
lab=hp_pin}
N -396.25 -20 -256.25 -20 {
lab=hn_pin}
N -236.25 -300 -180 -300 {
lab=hn_pin}
N 491.25 -256.25 491.25 -200 {
lab=hn_pin}
N 1012.5 596.25 1068.75 596.25 {
lab=hn_pin}
N 2193.75 351.25 2250 351.25 {
lab=hn_pin}
N 2257.5 -297.5 2313.75 -297.5 {
lab=hn_pin}
N 370 -410 426.25 -410 {
lab=hp_pin}
N 601.25 350 657.5 350 {
lab=hp_pin}
N 1618.75 706.25 1675 706.25 {
lab=hp_pin}
N 2027.5 -198.75 2083.75 -198.75 {
lab=hp_pin}
N 2863.75 -407.5 2920 -407.5 {
lab=hp_pin}
N 1638.75 651.25 2138.75 651.25 {
lab=#net3}
N 546.25 651.25 1048.75 651.25 {
lab=#net2}
C {devices/title.sym} -460 846.25 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} -340 -355 0 1 {name=p2 lab=pin1}
C {devices/iopin.sym} 3053.75 -352.5 2 1 {name=p1 lab=pin2}
C {../symbols/straight_heater_doped_strip.sym} -300 25 0 0 {name=heater1
length=320.0
nsections=3
heater_width=2.0
heater_gap=0.8
via_stack_gap=0.0
width=0.5
xoffset_tip1=0.2
xoffset_tip2=0.4
model=straight_heater_doped_strip
spiceprefix=P}
C {../symbols/straight_heater_doped_strip.sym} 166.25 -320 1 0 {name=heater2
length=320.0
nsections=3
heater_width=2.0
heater_gap=0.8
via_stack_gap=0.0
width=0.5
xoffset_tip1=0.2
xoffset_tip2=0.4
model=straight_heater_doped_strip
spiceprefix=P}
C {../symbols/straight_heater_doped_strip.sym} 948.75 271.25 2 1 {name=heater3
length=320.0
nsections=3
heater_width=2.0
heater_gap=0.8
via_stack_gap=0.0
width=0.5
xoffset_tip1=0.2
xoffset_tip2=0.4
model=straight_heater_doped_strip
spiceprefix=P}
C {../symbols/straight_heater_doped_strip.sym} 2518.75 471.25 3 0 {name=heater4
length=320.0
nsections=3
heater_width=2.0
heater_gap=0.8
via_stack_gap=0.0
width=0.5
xoffset_tip1=0.2
xoffset_tip2=0.4
model=straight_heater_doped_strip
spiceprefix=P}
C {../symbols/straight_heater_doped_strip.sym} 2193.75 27.5 0 0 {name=heater5
length=320.0
nsections=3
heater_width=2.0
heater_gap=0.8
via_stack_gap=0.0
width=0.5
xoffset_tip1=0.2
xoffset_tip2=0.4
model=straight_heater_doped_strip
spiceprefix=P}
C {devices/iopin.sym} -396.25 -88.75 0 1 {name=hp_pin lab=hp_pin}
C {devices/iopin.sym} -396.25 -20 0 1 {name=hn_pin lab=hn_pin}
C {devices/lab_pin.sym} -236.25 -300 0 0 {name=l1 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 491.25 -256.25 1 0 {name=l2 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 1012.5 596.25 0 0 {name=l3 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 2250 351.25 0 1 {name=l4 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 2257.5 -297.5 0 0 {name=l6 sig_type=std_logic lab=hn_pin}
C {devices/lab_pin.sym} 426.25 -410 0 1 {name=l7 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 657.5 350 0 1 {name=l8 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 1675 706.25 0 1 {name=l9 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 2027.5 -198.75 0 0 {name=l10 sig_type=std_logic lab=hp_pin}
C {devices/lab_pin.sym} 2920 -407.5 0 1 {name=l11 sig_type=std_logic lab=hp_pin}
