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
N 2497.5 -358.75 2667.5 -358.75 {
lab=pin2}
N -536.25 -356.25 -396.25 -356.25 {
lab=pin1}
N 188.75 -356.25 331.25 -356.25 {
lab=#net1}
N 331.25 228.75 331.25 302.5 {
lab=#net2}
N 331.25 302.5 792.5 301.25 {
lab=#net2}
N 1377.5 301.25 1838.75 300 {
lab=#net3}
N 1838.75 226.25 1838.75 300 {
lab=#net3}
N 1838.75 -358.75 1912.5 -358.75 {
lab=#net4}
C {devices/title.sym} -435 455 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} -536.25 -356.25 0 1 {name=p2 lab=pin1}
C {devices/iopin.sym} 2667.5 -358.75 2 1 {name=p4 lab=pin2}
C {symbols/ring_single_bend_coupler.sym} -220 160 0 0 {name=ring1
gap=0.2
radius=5.0
angle_inner=90
angle_outer=90
length_x=0.6
length_y=0.6
model=ring_single_bend_coupler
spiceprefix=P}
C {symbols/ring_single_bend_coupler.sym} 847.5 52.5 3 0 {name=ring2
gap=0.2
radius=5.0
angle_inner=90
angle_outer=90
length_x=0.6
length_y=0.6
model=ring_single_bend_coupler
spiceprefix=P}
C {symbols/ring_single_bend_coupler.sym} 1201.25 -215 2 0 {name=ring3
gap=0.2
radius=5.0
angle_inner=90
angle_outer=90
length_x=0.6
length_y=0.6
model=ring_single_bend_coupler
spiceprefix=P}
C {symbols/ring_single_bend_coupler.sym} 2355 50 3 0 {name=ring4
gap=0.2
radius=5.0
angle_inner=90
angle_outer=90
length_x=0.6
length_y=0.6
model=ring_single_bend_coupler
spiceprefix=P}
C {symbols/ring_single_bend_coupler.sym} 2321.25 -875 2 0 {name=ring5
gap=0.2
radius=5.0
angle_inner=90
angle_outer=90
length_x=0.6
length_y=0.6
model=ring_single_bend_coupler
spiceprefix=P}
