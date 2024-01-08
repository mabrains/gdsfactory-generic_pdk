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
N 1690 -505 1690 -335 {
lab=pin3}
N 1750 -505 1750 -335 {
lab=pin4}
N -300 -505 -160 -505 {
lab=pin1}
N -300 -445 -160 -445 {
lab=pin2}
N 160 -385 385 -385 {}
N 385 -385 385 -320 {}
N 160 -425 425 -425 {}
N 425 -425 425 -320 {}
N 160 -465 465 -465 {}
N 465 -465 465 -320 {}
N 160 -505 505 -505 {}
N 505 -505 505 -320 {}
N 445 70 865 70 {}
N 445 0 445 70 {}
N 385 130 865 130 {}
N 385 0 385 130 {}
N 1185 70 1630 70 {}
N 1630 -15 1630 70 {}
N 1670 -15 1670 110 {}
N 1185 110 1670 110 {}
N 1710 -15 1710 150 {}
N 1185 150 1710 150 {}
N 1750 -15 1750 190 {}
N 1185 190 1750 190 {}
C {devices/title.sym} -440 350 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} -300 -505 0 1 {name=p1 lab=pin1}
C {devices/iopin.sym} -300 -445 0 1 {name=p2 lab=pin2}
C {devices/iopin.sym} 1690 -505 1 1 {name=p3 lab=pin3}
C {devices/iopin.sym} 1750 -505 1 1 {name=p4 lab=pin4}
C {../symbols/mmi_90degree_hybrid.sym} -70 -440 0 0 {name=mmi1
width_mmi=2.5
length_mmi=5.5
gap_mmi=0.25
width=0.5
width_taper=1
length_taper=10
model=mmi1x2
spiceprefix=P}
C {../symbols/mmi_90degree_hybrid.sym} 450 -90 3 0 {name=mmi2
width_mmi=2.5
length_mmi=5.5
gap_mmi=0.25
width=0.5
width_taper=1
length_taper=10
model=mmi1x2
spiceprefix=P}
C {../symbols/mmi_90degree_hybrid.sym} 955 135 0 0 {name=mmi3
width_mmi=2.5
length_mmi=5.5
gap_mmi=0.25
width=0.5
width_taper=1
length_taper=10
model=mmi1x2
spiceprefix=P}
C {../symbols/mmi_90degree_hybrid.sym} 1685 -245 1 0 {name=mmi4
width_mmi=2.5
length_mmi=5.5
gap_mmi=0.25
width=0.5
width_taper=1
length_taper=10
model=mmi1x2
spiceprefix=P}
