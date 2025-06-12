v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 80 -40 140 -40 {lab=#net1}
N 140 -40 200 -40 {lab=#net1}
N 140 20 140 40 {lab=#net2}
N 140 50 200 50 {lab=#net2}
N -60 50 140 50 {lab=#net2}
N -150 0 -100 0 {lab=vinp}
N -60 -40 -60 -20 {lab=#net3}
N -60 -40 20 -40 {lab=#net3}
N -150 40 -100 40 {lab=vinm}
N 140 40 140 50 {lab=#net2}
N 200 50 260 50 {lab=#net2}
N -60 -20 -60 -10 {lab=#net3}
N 200 -40 260 -40 {lab=#net1}
N 260 -40 260 -10 {lab=#net1}
N 260 40 260 50 {lab=#net2}
N 260 -10 260 0 {lab=#net1}
N 300 -10 340 -10 {lab=vop}
N 300 50 340 50 {lab=vopm}
C {vcvs.sym} 300 20 0 0 {name=E1 value=3}
C {vcvs.sym} -60 20 0 0 {name=E2 value=1000}
C {res.sym} 50 -40 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 140 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -150 0 2 0 {name=p1 lab=vinp}
C {iopin.sym} -150 40 2 0 {name=p2 lab=vinm}
C {iopin.sym} 340 -10 0 0 {name=p3 lab=vop
}
C {iopin.sym} 340 50 0 0 {name=p4 lab=vopm}
