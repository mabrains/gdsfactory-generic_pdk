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
N 2460 -635 2630 -635 {
lab=pin3}
N 2460 -355 2630 -355 {
lab=#net1}
N -340 -635 -200 -635 {
lab=pin1}
N -340 -355 -200 -355 {
lab=pin2}
N 180 -635 505 -635 {
lab=#net2}
N 180 -355 335 -355 {
lab=#net3}
N 615 -635 615 -355 {
lab=#net2}
N 505 -635 615 -635 {
lab=#net2}
N 615 25 840 25 {
lab=#net4}
N 340 305 840 305 {
lab=#net5}
N 335 25 335 305 {
lab=#net5}
N 335 305 340 305 {
lab=#net5}
N 1220 25 1490 25 {
lab=#net6}
N 1770 25 1770 305 {
lab=#net7}
N 1220 305 1770 305 {
lab=#net7}
N 1770 -355 2080 -355 {
lab=#net8}
N 1490 -635 2080 -635 {
lab=#net9}
N 1490 -635 1490 -355 {
lab=#net9}
C {devices/title.sym} -435 455 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} -340 -635 0 1 {name=p1 lab=pin1}
C {devices/iopin.sym} -340 -355 0 1 {name=p2 lab=pin2}
C {devices/iopin.sym} 2630 -635 2 1 {name=p3 lab=pin3}
C {devices/iopin.sym} 2630 -355 2 1 {name=p4 lab=pin4}
C {symbols/ring_double.sym} -120 -120 0 0 {name=ring1
gap=0.2
radius=10.0
length_x=0.01
length_y=0.01
model=ring_double
spiceprefix=P}
C {symbols/ring_double.sym} 100 -275 1 0 {name=ring2
gap=0.2
radius=10.0
length_x=0.01
length_y=0.01
model=ring_double
spiceprefix=P}
C {symbols/ring_double.sym} 920 540 0 0 {name=ring3
gap=0.2
radius=10.0
length_x=0.01
length_y=0.01
model=ring_double
spiceprefix=P}
C {symbols/ring_double.sym} 1255 -275 1 0 {name=ring4
gap=0.2
radius=10.0
length_x=0.01
length_y=0.01
model=ring_double
spiceprefix=P}
C {symbols/ring_double.sym} 2160 -120 0 0 {name=ring5
gap=0.2
radius=10.0
length_x=0.01
length_y=0.01
model=ring_double
spiceprefix=P}
