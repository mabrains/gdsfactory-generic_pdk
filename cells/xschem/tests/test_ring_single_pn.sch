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
N 2460 -355 2630 -355 {
lab=pin2}
N -340 -355 -200 -355 {
lab=pin1}
N 340 305 840 305 {
lab=#net1}
N 335 25 335 305 {
lab=#net1}
N 335 305 340 305 {
lab=#net1}
N 1220 305 1490 305 {
lab=#net2}
N 1490 25 1490 305 {
lab=#net2}
N 1490 -355 1771.25 -355 {
lab=#net3}
N 1771.25 -355 2080 -355 {
lab=#net3}
N 180 -355 335 -355 {
lab=#net4}
C {devices/title.sym} -435 455 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} -340 -355 0 1 {name=p2 lab=pin1}
C {devices/iopin.sym} 2630 -355 2 1 {name=p4 lab=pin2}
C {../symbols/ring_single_pn.sym} -120 -120 0 0 {name=ring1
gap=0.3
radius=5.0
doping_angle=250
length_x=0.1
length_y=0.1
model=ring_single_pn
spiceprefix=P}
C {../symbols/ring_single_pn.sym} 100 -275 1 0 {name=ring2
gap=0.3
radius=5.0
doping_angle=250
length_x=0.1
length_y=0.1
model=ring_single_pn
spiceprefix=P}
C {../symbols/ring_single_pn.sym} 920 540 0 0 {name=ring3
gap=0.3
radius=5.0
doping_angle=250
length_x=0.1
length_y=0.1
model=ring_single_pn
spiceprefix=P}
C {../symbols/ring_single_pn.sym} 1255 -275 1 0 {name=ring4
gap=0.3
radius=5.0
doping_angle=250
length_x=0.1
length_y=0.1
model=ring_single_pn
spiceprefix=P}
C {../symbols/ring_single_pn.sym} 2160 -120 0 0 {name=ring5
gap=0.3
radius=5.0
doping_angle=250
length_x=0.1
length_y=0.1
model=ring_single_pn
spiceprefix=P}
