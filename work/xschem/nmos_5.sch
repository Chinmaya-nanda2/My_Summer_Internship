v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -620 -170 -590 {lab=GND}
N -170 -590 -170 -580 {lab=GND}
N -170 -580 -170 -440 {lab=GND}
N -390 -440 -170 -440 {lab=GND}
N -390 -650 -270 -650 {lab=GND}
N -270 -650 -270 -450 {lab=GND}
N -270 -450 -270 -440 {lab=GND}
N -260 -440 -260 -420 {lab=GND}
N -390 -620 -390 -500 {lab=#net1}
N -460 -650 -430 -650 {lab=#net2}
N -460 -740 -460 -650 {lab=#net2}
N -460 -740 -180 -740 {lab=#net2}
N -170 -740 -170 -680 {lab=#net2}
N -180 -740 -170 -740 {lab=#net2}
N -390 -740 -390 -680 {lab=#net2}
C {vsource.sym} -390 -470 0 0 {name=Vsb value=1 savecurrent=false}
C {vsource.sym} -170 -650 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -260 -420 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -930 -810 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* 
.CONTROL

save all
op
write nmos_extract1.raw
set appendwrite
DC Vds 0 1.8 0.05 Vsb 0 0.5 0.1
write nmos_extract1.raw
**
plot sqrt(2*abs(Vds#branch))
plot abs(Vds#branch)

.ENDC
"}
C {devices/code.sym} -860 -520 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_03v3_nvt.sym} -410 -650 0 0 {name=M3
L=0.5
W=4
nf=1 mult=1
model=nfet_03v3_nvt
spiceprefix=X
}
