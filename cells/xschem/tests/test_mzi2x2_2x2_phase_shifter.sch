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
N 23.75 -612.5 53.75 -612.5 {
lab=pin2}
N 2028.75 -648.75 2083.75 -648.75 {
lab=pin3}
N 1628.75 -648.75 1628.75 -382.5 {
lab=#net1}
N 1630 -648.75 1675 -648.75 {
lab=#net1}
N 1675 -628.75 1676.25 -370 {
lab=#net2}
N 1628.75 -648.75 1630 -648.75 {
lab=#net1}
N 1676.25 -370 1676.25 -362.5 {
lab=#net2}
N 23.75 -632.5 53.75 -632.5 {
lab=pin1}
N 407.5 -632.5 517.5 -632.5 {
lab=#net3}
N 517.5 -632.5 517.5 -383.75 {
lab=#net3}
N 407.5 -612.5 478.75 -612.5 {
lab=#net4}
N 478.75 -612.5 480 -363.75 {
lab=#net4}
N 517.5 -383.75 517.5 -372.5 {
lab=#net3}
N 517.5 -372.5 551.25 -372.5 {
lab=#net3}
N 480 -352.5 551.25 -352.5 {
lab=#net4}
N 480 -363.75 480 -352.5 {
lab=#net4}
N 905 -372.5 1203.75 -372.5 {
lab=#net5}
N 905 -352.5 1205 -352.5 {
lab=#net6}
N 1558.75 -372.5 1628.75 -372.5 {
lab=#net1}
N 1628.75 -382.5 1628.75 -372.5 {
lab=#net1}
N 1558.75 -352.5 1676.25 -352.5 {
lab=#net2}
N 1676.25 -362.5 1676.25 -352.5 {
lab=#net2}
N 2028.75 -628.75 2083.75 -628.75 {
lab=pin4}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} 23.75 -612.5 2 0 {name=p4 lab=pin2}
C {devices/iopin.sym} 2083.75 -648.75 0 0 {name=p3 lab=pin3}
C {symbols/mzi2x2_2x2_phase_shifter.sym} 140 -630 0 0 {name=mzi1
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi2x2_2x2_phase_shifter
spiceprefix=P}
C {devices/iopin.sym} 23.75 -632.5 2 0 {name=p1 lab=pin1}
C {symbols/mzi2x2_2x2_phase_shifter.sym} 637.5 -370 0 0 {name=mzi2
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi2x2_2x2_phase_shifter
spiceprefix=P}
C {symbols/mzi2x2_2x2_phase_shifter.sym} 1291.25 -370 0 0 {name=mzi3
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi2x2_2x2_phase_shifter
spiceprefix=P}
C {symbols/mzi2x2_2x2_phase_shifter.sym} 1761.25 -646.25 0 0 {name=mzi4
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi2x2_2x2_phase_shifter
spiceprefix=P}
C {devices/iopin.sym} 2083.75 -628.75 0 0 {name=p2 lab=pin4}
