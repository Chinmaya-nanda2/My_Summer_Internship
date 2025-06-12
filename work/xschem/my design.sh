v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 -70 -30 -50 {lab=#net1}
N -30 -70 20 -70 {lab=#net1}
N 80 -70 110 -70 {lab=#net2}
N 170 -70 210 -70 {lab=#net3}
N -30 10 -30 50 {lab=GND}
N 300 -210 330 -210 {lab=#net4}
N 300 -210 300 -70 {lab=#net4}
N 280 -70 320 -70 {lab=#net4}
N 270 -70 280 -70 {lab=#net4}
N 300 -150 330 -150 {lab=#net4}
N 430 -50 430 -10 {lab=GND}
N 390 -150 420 -150 {lab=#net5}
N 390 -210 430 -210 {lab=#net5}
N 420 -150 430 -150 {lab=#net5}
N 320 -70 390 -70 {lab=#net4}
N 430 -210 430 -120 {lab=#net5}
N 430 -60 430 -50 {lab=GND}
N 360 -110 390 -110 {lab=#net6}
N 360 -110 360 -30 {lab=#net6}
N 430 -130 540 -130 {lab=#net5}
N 360 20 360 40 {lab=GND}
N 360 40 360 70 {lab=GND}
N 540 -70 540 -30 {lab=GND}
C {vsource.sym} -30 -20 0 0 {name=V1 value=3 savecurrent=false}
C {capa.sym} 140 -70 3 0 {name=C1
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 430 -10 0 0 {name=l1 lab=GND}
C {res.sym} 50 -70 3 0 {name=R1
value=380
footprint=1206
device=resistor
m=1}
C {res.sym} 240 -70 3 0 {name=R2
value=4.7k
footprint=1206
device=resistor
m=1}
C {vcvs.sym} 430 -90 0 0 {name=E1 value=3}
C {gnd.sym} -30 50 0 0 {name=l2 lab=GND}
C {capa.sym} 360 -210 3 0 {name=C2
m=1
value=27u
footprint=1206
device="ceramic capacitor"}
C {res.sym} 360 -150 3 0 {name=R3
value=300k
footprint=1206
device=resistor
m=1}
C {vsource.sym} 360 -10 0 0 {name=V2 value=3 savecurrent=false}
C {capa.sym} 540 -100 0 0 {name=C3
m=1
value=4.7u
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 360 70 0 0 {name=l3 lab=GND}
C {gnd.sym} 540 -30 0 0 {name=l4 lab=GND}
