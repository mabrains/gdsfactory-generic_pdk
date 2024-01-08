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
N 875 125 1175 125 {
lab=#net1}
N 875 185 1175 185 {
lab=#net2}
N -67.5 -35 -5 -35 {
lab=pin2}
N -67.5 -95 -5 -95 {
lab=pin1}
N 875 -95 937.5 -95 {
lab=pin3}
N 875 -35 937.5 -35 {
lab=pin4}
N -306.25 125 -6.25 125 {
lab=#net3}
N -306.25 185 -6.25 185 {
lab=#net4}
N -306.25 345 1173.75 345 {
lab=#net5}
N -306.25 405 1173.75 405 {
lab=#net6}
C {devices/title.sym} -550 560 0 0 {name=l5 author="Generic PDK Authors"}
C {../symbols/mzit.sym} 50 170 2 1 {name=mzi1
w0=0.5
w1=0.45
w2=0.55
dy=2.0
delta_length=10.0
length=1.0
coupler_length1=5.0
coupler_length2=10.0
coupler_gap1=0.2
coupler_gap2=0.3
taper_length=5.0
model=mzit
spiceprefix=P}
C {../symbols/mzit.sym} -362.5 140 0 1 {name=mzi2
w0=0.5
w1=0.45
w2=0.55
dy=2.0
delta_length=10.0
length=1.0
coupler_length1=5.0
coupler_length2=10.0
coupler_gap1=0.2
coupler_gap2=0.3
taper_length=5.0
model=mzit
spiceprefix=P}
C {../symbols/mzit.sym} 1230 140 0 0 {name=mzi3
w0=0.5
w1=0.45
w2=0.55
dy=2.0
delta_length=10.0
length=1.0
coupler_length1=5.0
coupler_length2=10.0
coupler_gap1=0.2
coupler_gap2=0.3
taper_length=5.0
model=mzit
spiceprefix=P}
C {../symbols/mzit.sym} 820 -80 0 1 {name=mzi4
w0=0.5
w1=0.45
w2=0.55
dy=2.0
delta_length=10.0
length=1.0
coupler_length1=5.0
coupler_length2=10.0
coupler_gap1=0.2
coupler_gap2=0.3
taper_length=5.0
model=mzit
spiceprefix=P}
C {devices/iopin.sym} -67.5 -35 0 1 {name=p1 lab=pin2
}
C {devices/iopin.sym} -67.5 -95 0 1 {name=p2 lab=pin1
}
C {devices/iopin.sym} 937.5 -35 0 0 {name=p3 lab=pin4
}
C {devices/iopin.sym} 937.5 -95 0 0 {name=p4 lab=pin3
}
