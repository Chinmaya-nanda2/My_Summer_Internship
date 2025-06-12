v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -110 40 -110 {lab=vd}
N 50 -110 50 -70 {lab=vd}
N 40 -110 50 -110 {lab=vd}
N -340 -10 50 -10 {lab=GND}
N -170 -50 -170 -10 {lab=GND}
N -340 -80 -340 -70 {lab=vg}
N -340 -80 -210 -80 {lab=vg}
N -190 -10 -190 10 {lab=GND}
N -170 -80 -150 -80 {lab=GND}
N -150 -80 -150 -30 {lab=GND}
N -170 -30 -150 -30 {lab=GND}
C {vsource.sym} -340 -40 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 50 -40 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -190 10 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -580 -250 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.CONTROL
OP 
DC Vds 0 1.8 0.05 Vgs 0.4 1.0 0.2
.ENDC
"}
C {lab_wire.sym} -330 -80 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} -100 -110 0 0 {name=p2 sig_type=std_logic lab=vd
}
C {devices/code.sym} -570 -50 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_01v8.sym} -190 -80 0 0 {name=M2
L=0.15
W=4 
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
