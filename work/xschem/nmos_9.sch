v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 50 -170 50 -140 {lab=GND}
N 50 -140 50 -130 {lab=GND}
N 50 -130 50 10 {lab=GND}
N -170 10 50 10 {lab=GND}
N -170 -200 -50 -200 {lab=GND}
N -50 -200 -50 0 {lab=GND}
N -50 0 -50 10 {lab=GND}
N -40 10 -40 30 {lab=GND}
N -170 -170 -170 -50 {lab=#net1}
N -240 -200 -210 -200 {lab=#net2}
N -240 -290 -240 -200 {lab=#net2}
N -240 -290 40 -290 {lab=#net2}
N 50 -290 50 -230 {lab=#net2}
N 40 -290 50 -290 {lab=#net2}
N -170 -290 -170 -230 {lab=#net2}
C {vsource.sym} -170 -20 0 0 {name=Vsb value=1 savecurrent=false}
C {vsource.sym} 50 -200 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -40 30 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -710 -360 0 0 {name=COMMANDS
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
C {devices/code.sym} -640 -70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -190 -200 0 0 {name=M10
L=0.35
W=4
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
