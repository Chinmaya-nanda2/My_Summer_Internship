v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 30 210 60 {lab=GND}
N 210 60 210 70 {lab=GND}
N 210 70 210 210 {lab=GND}
N -10 210 210 210 {lab=GND}
N -10 -0 110 0 {lab=GND}
N 110 -0 110 200 {lab=GND}
N 110 200 110 210 {lab=GND}
N 120 210 120 230 {lab=GND}
N -10 30 -10 150 {lab=#net1}
N -80 -0 -50 -0 {lab=#net2}
N -80 -90 -80 -0 {lab=#net2}
N -80 -90 200 -90 {lab=#net2}
N 210 -90 210 -30 {lab=#net2}
N 200 -90 210 -90 {lab=#net2}
N -10 -90 -10 -30 {lab=#net2}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -30 0 0 0 {name=M1
L=1

W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -10 180 0 0 {name=Vsb value=0 savecurrent=false}
C {vsource.sym} 210 0 0 0 {name=Vds value=1 savecurrent=false}
C {gnd.sym} 120 230 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -550 -160 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* 
.CONTROL

save all
op

set appendwrite
DC Vds 0 1.8 0.05 TEMP -40 120 20
**Vsb 0 0.5 0.1
**
plot sqrt(2*abs(Vds#branch))
plot abs(Vds#branch)
plot log(abs(vds#branch))

.ENDC
"}
C {devices/code.sym} -480 130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
