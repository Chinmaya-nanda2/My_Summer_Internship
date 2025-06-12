v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -210 -160 0 -160 {lab=vd}
N 10 -160 10 -120 {lab=vd}
N 0 -160 10 -160 {lab=vd}
N -380 -60 10 -60 {lab=GND}
N -210 -100 -210 -60 {lab=GND}
N -380 -130 -380 -120 {lab=vg}
N -380 -130 -250 -130 {lab=vg}
N -230 -60 -230 -40 {lab=GND}
N -210 -130 -190 -130 {lab=GND}
N -190 -130 -190 -80 {lab=GND}
N -210 -80 -190 -80 {lab=GND}
C {vsource.sym} -380 -90 0 0 {name=Vgs value=1 savecurrent=false}
C {vsource.sym} 10 -90 0 0 {name=Vds value=0 savecurrent=false}
C {gnd.sym} -230 -40 0 0 {name=l1 lab=GND}
C {simulator_commands_shown.sym} -620 -300 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands

.CONTROL
OP 
DC Vds 0 1.8 0.05 Vgs 0.4 1.0 0.2
.ENDC
"}
C {lab_wire.sym} -370 -130 0 0 {name=p1 sig_type=std_logic lab=vg}
C {lab_wire.sym} -140 -160 0 0 {name=p2 sig_type=std_logic lab=vd
}
C {devices/code.sym} -610 -100 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {sky130_fd_pr/nfet_05v0_nvt.sym} -230 -130 0 0 {name=M4
L=0.9
W=1
nf=1 mult=1
model=nfet_05v0_nvt
spiceprefix=X
}
