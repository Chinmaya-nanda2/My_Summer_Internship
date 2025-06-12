v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -140 -130 70 -130 {lab=vd}
N 80 -130 80 -90 {lab=vd}
N 70 -130 80 -130 {lab=vd}
N -310 -30 80 -30 {lab=GND}
N -140 -70 -140 -30 {lab=GND}
N -310 -100 -310 -90 {lab=vg}
N -310 -100 -180 -100 {lab=vg}
N -160 -30 -160 -10 {lab=GND}
N -140 -100 -120 -100 {lab=GND}
N -120 -100 -120 -50 {lab=GND}
N -140 -50 -120 -50 {lab=GND}
C {vsource.sym} -310 -60 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 80 -60 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -160 -10 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -550 -270 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.CONTROL
OP 
DC Vds 0 1.8 0.05 Vgs 0.4 1.0 0.2
.ENDC
"}
C {lab_wire.sym} -300 -100 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} -70 -130 0 0 {name=p2 sig_type=std_logic lab=vd
}
C {devices/code.sym} -540 -70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/pfet_01v8_lvt.sym} -160 -100 0 0 {name=M10
L=0.35
W=4
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
