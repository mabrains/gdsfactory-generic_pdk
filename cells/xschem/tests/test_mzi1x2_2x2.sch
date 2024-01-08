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
N 1001.25 -835 1001.25 -755 {
lab=pin1}
N 941.25 -835 1001.25 -835 {
lab=pin1}
N 1968.75 -638.75 2023.75 -638.75 {
lab=pin3}
N 323.75 -362.5 405 -362.5 {
lab=#net1}
N 345 -382.5 405 -382.5 {
lab=#net2}
N 698.75 -372.5 991.25 -372.5 {
lab=#net3}
N 1011.25 -371.25 1335 -372.5 {
lab=#net4}
N 1628.75 -648.75 1628.75 -382.5 {
lab=#net5}
N 1630 -648.75 1675 -648.75 {
lab=#net5}
N 1675 -628.75 1676.25 -370 {
lab=#net6}
N 345 -382.5 346.25 -645 {
lab=#net2}
N 1628.75 -648.75 1630 -648.75 {
lab=#net5}
N 1628.75 -362.5 1676.25 -362.5 {
lab=#net6}
N 1676.25 -370 1676.25 -362.5 {
lab=#net6}
N 317.5 -625 318.75 -362.5 {
lab=#net1}
N 318.75 -362.5 323.75 -362.5 {
lab=#net1}
N 317.5 -645 346.25 -645 {
lab=#net2}
N 991.25 -462.5 991.25 -372.5 {
lab=#net3}
N 1011.25 -462.5 1011.25 -371.25 {
lab=#net4}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} 0 -635 2 0 {name=p4 lab=pin2}
C {devices/iopin.sym} 951.25 -835 2 0 {name=p1 lab=pin1}
C {devices/iopin.sym} 2023.75 -638.75 0 0 {name=p3 lab=pin3}
C {../symbols/mzi1x2_2x2.sym} 110 -642.5 0 0 {name=mzi1
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi1x2_2x2
spiceprefix=P}
C {../symbols/mzi1x2_2x2.sym} 612.5 -380 0 1 {name=mzi2
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi1x2_2x2
spiceprefix=P}
C {../symbols/mzi1x2_2x2.sym} 993.75 -670 3 1 {name=mzi3
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi1x2_2x2
spiceprefix=P}
C {../symbols/mzi1x2_2x2.sym} 1421.25 -365 2 1 {name=mzi4
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi1x2_2x2
spiceprefix=P}
C {../symbols/mzi1x2_2x2.sym} 1882.5 -631.25 2 0 {name=mzi5
delta_length=10.0
length_x=0.1
length_y=2.0
model=mzi1x2_2x2
spiceprefix=P}
