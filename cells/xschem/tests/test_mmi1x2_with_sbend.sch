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
N 1060 -480 1060 -400 {
lab=pin1}
N 1000 -480 1060 -480 {
lab=pin1}
N 770 -370 770 -170 {
lab=#net1}
N 1330 -380 1330 -170 {
lab=#net2}
N 370 -860 370 -830 {
lab=pin2}
N 1730 -890 1730 -850 {
lab=pin3}
N 1560 -455 1650 -455 {
lab=#net3}
N 1650 -455 1655 -455 {
lab=#net3}
N 1655 -620 1655 -455 {
lab=#net3}
N 1560 -305 1800 -305 {
lab=#net4}
N 1800 -305 1805 -305 {
lab=#net4}
N 1805 -620 1805 -305 {
lab=#net4}
N 455 -445 540 -445 {
lab=#net5}
N 450 -445 455 -445 {
lab=#net5}
N 445 -445 450 -445 {
lab=#net5}
N 445 -600 445 -445 {
lab=#net5}
N 305 -295 540 -295 {
lab=#net6}
N 300 -295 305 -295 {
lab=#net6}
N 295 -295 300 -295 {
lab=#net6}
N 770 -170 985 -170 {
lab=#net1}
N 1135 -170 1330 -170 {
lab=#net2}
N 295 -600 295 -295 {
lab=#net6}
C {devices/title.sym} 160 -30 0 0 {name=l5 author="Generic PDK Authors"}
C {devices/iopin.sym} 1010 -480 2 0 {name=p1 lab=pin1}
C {devices/iopin.sym} 1730 -880 3 0 {name=p3 lab=pin3}
C {devices/iopin.sym} 370 -850 3 0 {name=p4 lab=pin2}
C {symbols/mmi1x2_with_sbend.sym} 370 -790 1 0 {name=mmi1
model=mmi1x2_with_sbend
spiceprefix=P}
C {symbols/mmi1x2_with_sbend.sym} 730 -370 2 0 {name=mmi2
model=mmi1x2_with_sbend
spiceprefix=P}
C {symbols/mmi1x2_with_sbend.sym} 1060 -360 1 0 {name=mmi3
model=mmi1x2_with_sbend
spiceprefix=P}
C {symbols/mmi1x2_with_sbend.sym} 1370 -380 0 0 {name=mmi4
model=mmi1x2_with_sbend
spiceprefix=P}
C {symbols/mmi1x2_with_sbend.sym} 1730 -810 1 0 {name=mmi5
model=mmi1x2_with_sbend
spiceprefix=P}
