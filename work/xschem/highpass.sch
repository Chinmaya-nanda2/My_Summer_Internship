v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -80 -130 -20 {lab=vin}
N -130 -80 -40 -80 {lab=vin}
N 20 -80 170 -80 {lab=#net1}
N 520 -70 580 -70 {lab=vout}
N 300 -200 340 -200 {lab=#net2}
N 300 -200 300 -80 {lab=#net2}
N 290 -60 340 -60 {lab=#net3}
N 400 -200 530 -200 {lab=vout}
N 530 -200 530 -70 {lab=vout}
N 260 -60 290 -60 {lab=#net3}
N 260 -60 260 -0 {lab=#net3}
N -130 40 -130 70 {lab=GND}
N -130 70 450 70 {lab=GND}
N 260 60 260 70 {lab=GND}
N 310 -90 340 -90 {lab=#net2}
N 310 -90 310 -80 {lab=#net2}
N 300 -80 310 -80 {lab=#net2}
N 230 -80 300 -80 {lab=#net2}
N 340 -60 340 -50 {lab=#net3}
N 520 -90 520 -70 {lab=vout}
N 340 -120 340 -90 {lab=#net2}
N 340 -120 360 -120 {lab=#net2}
N 340 -50 360 -50 {lab=#net3}
N 450 -40 450 70 {lab=GND}
C {vsource.sym} -130 10 0 0 {name=V1 value="0 AC 1" savecurrent=false}
C {capa.sym} -10 -80 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 200 -80 3 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}
C {res.sym} 370 -200 3 0 {name=R2
value=5k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 580 -70 0 0 {name=p1 sig_type=std_logic lab=vout}
C {vsource.sym} 260 30 0 0 {name=V2 value=1.5 savecurrent=false}
C {gnd.sym} -130 70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -85 -80 0 0 {name=p2 sig_type=std_logic lab=vin
}
C {simulator_commands_shown.sym} 550 -370 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
.CONTROL

OP
save all
write highpass.raw
set appendwrite
AC DEC 100 0.1 10e6
write highpass.raw
set appendfile

.ENDC
"}
C {buffer.sym} 450 60 0 0 {name=x1}
