v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -250 -100 -220 {lab=GND}
N -100 -220 -100 -210 {lab=GND}
N -100 -210 -100 -70 {lab=GND}
N -320 -70 -100 -70 {lab=GND}
N -320 -280 -200 -280 {lab=GND}
N -200 -280 -200 -80 {lab=GND}
N -200 -80 -200 -70 {lab=GND}
N -190 -70 -190 -50 {lab=GND}
N -320 -250 -320 -130 {lab=#net1}
N -390 -280 -360 -280 {lab=#net2}
N -390 -370 -390 -280 {lab=#net2}
N -390 -370 -110 -370 {lab=#net2}
N -100 -370 -100 -310 {lab=#net2}
N -110 -370 -100 -370 {lab=#net2}
N -320 -370 -320 -310 {lab=#net2}
C {vsource.sym} -320 -100 0 0 {name=Vsb value=1 savecurrent=false}
C {vsource.sym} -100 -280 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -190 -50 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -860 -440 0 0 {name=COMMANDS
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
C {devices/code.sym} -790 -150 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_01v8.sym} -340 -280 0 0 {name=M2
L=0.15
W=4
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
