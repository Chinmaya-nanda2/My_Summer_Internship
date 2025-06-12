v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -30 230 -30 {lab=vd}
N 240 -30 240 10 {lab=vd}
N 230 -30 240 -30 {lab=vd}
N -150 70 240 70 {lab=GND}
N 20 30 20 70 {lab=GND}
N -150 0 -150 10 {lab=vg}
N -150 0 -20 0 {lab=vg}
N 0 70 0 90 {lab=GND}
N 20 0 40 0 {lab=GND}
N 40 0 40 50 {lab=GND}
N 20 50 40 50 {lab=GND}
C {vsource.sym} -150 40 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 240 40 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} 0 90 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -390 -170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.CONTROL
OP 
DC Vds 0 1.8 0.05 Vgs 0.4 1.0 0.2
.ENDC
"}
C {lab_wire.sym} -140 0 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} 90 -30 0 0 {name=p2 sig_type=std_logic lab=vd
}
C {devices/code.sym} -380 30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 0 0 0 0 {name=M3
L=0.5
W=4
nf=1 mult=1
model=nfet_03v3_nvt
spiceprefix=X
}
