v {xschem version=3.1.0 file_version=1.2 

* ========================================================================
* SPDX-FileCopyrightText: 2023 Mabrains Company
* Licensed under the GNU GENERAL PUBLIC License, Version 3.0 (the "License");
* you may not use this file except in compliance with the License.
*
*                    GNU GENERAL PUBLIC LICENSE
*                       Version 3, 29 June 2007
*
* This program is free software: you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published
* by the Free Software Foundation, either 3 of the License, or
* (at your option) any later version.
* 
* This program is distributed in the hope that it will be useful,
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
N 0 -635 30 -635 {
lab=pin2}
N 403.75 -635 403.75 -372.5 {
lab=#net1}
N 941.25 -837.5 1001.25 -837.5 {
lab=pin1}
N 1001.25 -465 1001.25 -372.5 {
lab=#net2}
N 1625 -635 1625 -372.5 {
lab=#net3}
N 1625 -638.75 1675 -638.75 {
lab=#net3}
N 1625 -638.75 1625 -635 {
lab=#net3}
N 2028.75 -638.75 2083.75 -638.75 {
lab=pin3}
N 383.75 -635 403.75 -635 {
lab=#net1}
N 1001.25 -837.5 1001.25 -817.5 {
lab=pin1}
N 757.5 -372.5 1271.25 -372.5 {
lab=#net2}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} 0 -635 2 0 {name=p4 lab=pin2}
C {devices/iopin.sym} 951.25 -837.5 2 0 {name=p1 lab=pin1}
C {devices/iopin.sym} 2083.75 -638.75 0 0 {name=p3 lab=pin3}
C {../symbols/mzi_phase_shifter.sym} 116.25 -642.5 0 0 {name=mzi1
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi_phase_shifter
spiceprefix=P}
C {../symbols/mzi_phase_shifter.sym} 490 -380 0 0 {name=mzi2
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi_phase_shifter
spiceprefix=P}
C {../symbols/mzi_phase_shifter.sym} 1008.75 -732.5 1 0 {name=mzi3
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi_phase_shifter
spiceprefix=P}
C {../symbols/mzi_phase_shifter.sym} 1357.5 -380 0 0 {name=mzi4
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi_phase_shifter
spiceprefix=P}
C {../symbols/mzi_phase_shifter.sym} 1761.25 -646.25 0 0 {name=mzi5
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi_phase_shifter
spiceprefix=P}
