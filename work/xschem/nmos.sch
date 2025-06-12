v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -120 -90 90 -90 {lab=vd}
N 100 -90 100 -50 {lab=vd}
N 90 -90 100 -90 {lab=vd}
N -290 10 100 10 {lab=GND}
N -120 -30 -120 10 {lab=GND}
N -290 -60 -290 -50 {lab=vg}
N -290 -60 -160 -60 {lab=vg}
N -140 10 -140 30 {lab=GND}
N -120 -60 -100 -60 {lab=GND}
N -100 -60 -100 -10 {lab=GND}
N -120 -10 -100 -10 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -140 -60 0 0 {name=M1
L=0.15
W=1
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {vsource.sym} -290 -20 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 100 -20 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -140 30 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -530 -230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.CONTROL
OP 
DC Vds 0 1.8 0.05 Vgs 0.4 1.0 0.2
.ENDC
"}
C {lab_wire.sym} -280 -60 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} -50 -90 0 0 {name=p2 sig_type=std_logic lab=vd
}
C {devices/code.sym} -520 -30 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
