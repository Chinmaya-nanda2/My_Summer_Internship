v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 -60 50 -60 {lab=#net1}
N 50 -60 110 -60 {lab=#net1}
N 50 0 50 20 {lab=#net2}
N 50 30 110 30 {lab=#net2}
N -150 30 50 30 {lab=#net2}
N -240 -20 -190 -20 {lab=vinp}
N -150 -60 -150 -40 {lab=#net3}
N -150 -60 -70 -60 {lab=#net3}
N -240 20 -190 20 {lab=vinm}
N 50 20 50 30 {lab=#net2}
N 110 30 170 30 {lab=#net2}
N -150 -40 -150 -30 {lab=#net3}
N 110 -60 170 -60 {lab=#net1}
N 170 -60 170 -30 {lab=#net1}
N 170 20 170 30 {lab=#net2}
N 170 -30 170 -20 {lab=#net1}
N 210 -30 250 -30 {lab=vop}
N 210 30 250 30 {lab=vopm}
C {vcvs.sym} 210 0 0 0 {name=E1 value=3}
C {vcvs.sym} -150 0 0 0 {name=E2 value=1000}
C {res.sym} -40 -60 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 50 -30 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {iopin.sym} -240 -20 2 0 {name=p1 lab=vinp}
C {iopin.sym} -240 20 2 0 {name=p2 lab=vinm}
C {iopin.sym} 250 -30 0 0 {name=p3 lab=vop
}
C {iopin.sym} 250 30 0 0 {name=p4 lab=vopm}
