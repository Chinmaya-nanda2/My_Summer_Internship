v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -0 50 0 {lab=#net1}
N -150 -70 -150 -30 {lab=#net1}
N -160 -120 -60 -120 {lab=#net1}
N -50 -70 -50 -0 {lab=#net1}
N -240 -0 -150 0 {lab=GND}
N -240 -0 -240 80 {lab=GND}
N -240 80 160 80 {lab=GND}
N 90 0 160 -0 {lab=GND}
N 160 0 160 80 {lab=GND}
N -150 30 -150 80 {lab=GND}
N 90 30 90 80 {lab=GND}
N -40 80 -40 90 {lab=GND}
N -300 -120 -300 -20 {lab=#net1}
N -300 -120 -180 -120 {lab=#net1}
N -180 -120 -160 -120 {lab=#net1}
N -150 -120 -150 -70 {lab=#net1}
N -300 40 -300 80 {lab=GND}
N -300 80 -240 80 {lab=GND}
N 90 -120 90 -30 {lab=#net2}
N 90 -120 270 -120 {lab=#net2}
N 270 -120 280 -120 {lab=#net2}
N 280 -120 280 -20 {lab=#net2}
N -60 -120 -50 -120 {lab=#net1}
N -50 -120 -50 -70 {lab=#net1}
N 160 80 280 80 {lab=GND}
N 280 40 280 80 {lab=GND}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 70 0 0 0 {name=M1
L=0.15

W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {gnd.sym} -40 90 0 0 {name=l1 lab=GND}
C {isource.sym} -300 10 2 0 {name=Iin value=50u}
C {vsource.sym} 280 10 0 0 {name=Vds value=" 1 AC 1" savecurrent=false}
C {devices/code.sym} -340 130 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {simulator_commands_shown.sym} -470 -170 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.CONTROL
OP
DC Vds 0 1.8 0.05
PLOT abs(vds#branch)
AC DEC 100 100 1000
PLOT '1/vm(vds#branch)'
.ENDC
"}
C {sky130_fd_pr/nfet_01v8_lvt.sym} -130 0 2 0 {name=M2
L=0.15
W=4
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
