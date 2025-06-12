v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 50 -100 50 -70 {lab=GND}
N 50 -70 50 -60 {lab=GND}
N 50 -60 50 80 {lab=GND}
N -170 80 50 80 {lab=GND}
N -170 -130 -50 -130 {lab=GND}
N -50 -130 -50 70 {lab=GND}
N -50 70 -50 80 {lab=GND}
N -40 80 -40 100 {lab=GND}
N -170 -100 -170 20 {lab=#net1}
N -240 -130 -210 -130 {lab=#net2}
N -240 -220 -240 -130 {lab=#net2}
N -240 -220 40 -220 {lab=#net2}
N 50 -220 50 -160 {lab=#net2}
N 40 -220 50 -220 {lab=#net2}
N -170 -220 -170 -160 {lab=#net2}
C {vsource.sym} -170 50 0 0 {name=Vsb value=1 savecurrent=false}
C {vsource.sym} 50 -130 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -40 100 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -710 -290 0 0 {name=COMMANDS
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
C {devices/code.sym} -640 0 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_05v0_nvt.sym} -190 -130 0 0 {name=M4
L=0.9
W=1
nf=1 mult=1
model=nfet_05v0_nvt
spiceprefix=X
}
