v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 30 -0 40 {lab=vom}
N 0 40 60 40 {lab=vom}
N 0 -60 -0 -30 {lab=vop}
N 10 -60 60 -60 {lab=vop}
N 0 -60 10 -60 {lab=vop}
N -100 -20 -40 -20 {lab=xxx}
N -90 20 -40 20 {lab=vim}
N -100 20 -90 20 {lab=vim}
C {vcvs.sym} 0 0 0 0 {name=E1 value=1000
}
C {iopin.sym} 60 -60 0 0 {name=p1 lab=vop
}
C {iopin.sym} -100 -20 2 0 {name=p2 lab=vip}
C {iopin.sym} -100 20 2 0 {name=p3 lab=vim}
C {iopin.sym} 60 40 0 0 {name=p4 lab=vom}
