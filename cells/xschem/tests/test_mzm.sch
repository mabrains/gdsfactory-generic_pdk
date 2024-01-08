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
N 1.25 -635 31.25 -635 {
lab=#net1}
N 403.75 -635 403.75 -372.5 {
lab=#net2}
N 941.25 -837.5 1001.25 -837.5 {
lab=pin1}
N 1001.25 -465 1001.25 -372.5 {
lab=#net3}
N 1625 -635 1625 -372.5 {
lab=#net4}
N 1625 -638.75 1675 -638.75 {
lab=#net4}
N 1625 -638.75 1625 -635 {
lab=#net4}
N 2028.75 -638.75 2083.75 -638.75 {
lab=pin3}
N 383.75 -635 403.75 -635 {
lab=#net2}
N 1001.25 -837.5 1001.25 -817.5 {
lab=pin1}
N 757.5 -372.5 1271.25 -372.5 {
lab=#net3}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} 0 -635 2 0 {name=p4 lab=pin2}
C {devices/iopin.sym} 951.25 -837.5 2 0 {name=p1 lab=pin1}
C {devices/iopin.sym} 2083.75 -638.75 0 0 {name=p3 lab=pin3}
C {../symbols/mzm.sym} 117.5 -642.5 0 0 {name=mzm1
length_x=500
length_y=2.0
delta_length=0.0
model=mzm
spiceprefix=P}
C {../symbols/mzm.sym} 490 -380 0 0 {name=mzm2
length_x=500
length_y=2.0
delta_length=0.0
model=mzm
spiceprefix=P}
C {../symbols/mzm.sym} 1008.75 -731.25 1 0 {name=mzm3
length_x=500
length_y=2.0
delta_length=0.0
model=mzm
spiceprefix=P}
C {../symbols/mzm.sym} 1357.5 -380 0 0 {name=mzm4
length_x=500
length_y=2.0
delta_length=0.0
model=mzm
spiceprefix=P}
C {../symbols/mzm.sym} 1761.25 -646.25 0 0 {name=mzm5
length_x=500
length_y=2.0
delta_length=0.0
model=mzm
spiceprefix=P}
