Title: transient experiment: rise, fall, delay, periods, etc.

**parameters
.PARAM vdd_var=1.8
.CSPARAM csvddvar=vdd_var
** RC NETWORK
R1    vin    vout    1k
C1    vout   GND     1p


** STIMULI
Vsin    vin   GND    0 PULSE(0 5 1n 1p 1p 10n 20n)

**RISE/FALL 10-90%
.MEASURE TRAN tr1090 TRIG v(vout) VAL='0.1*vdd_var' RISE=1 TARG v(vout) VAL='0.9*vdd_var' RISE =1
.MEASURE TRAN tf9010 TRIG v(vout) VAL='0.9*vdd_var' FALL=1 TARG v(vout) VAL='0.1*vdd_var' FALL=1


**RISE/FALL 20-80%
.MEASURE TRAN tr2080 TRIG v(vout) VAL='0.2*vdd_var' RISE=1 TARG v(vout) VAL='0.8*vdd_var' RISE=1
.MEASURE TRAN tf8020 TRIG v(vout) VAL='0.8*vdd_var' FALL=1 TARG v(vout) VAL='0.2*vdd_var' FALL=1


**DELAY RISE FALL
.MEASURE TRAN tdrise TRIG v(vin) VAL='0.5*vdd_var' RISE=1 TARG v(vout) VAL='0.5*vdd_var' RISE=1
.MEASURE TRAN tdfall TRIG v(vin) VAL='0.5*vdd_var' FALL=1 TARG v(vout) VAL='0.5*vdd_var' FALL=1


**PULSE width/period
.MEASURE TRAN Pwidth TRIG v(vout) VAL='0.5*vdd_var' RISE=1 TARG v(vout) VAL='0.5*vdd_var' FALL=1
.MEASURE TRAN Period TRIG v(vout) VAL='0.5*vdd_var' RISE=1 TARG v(vout) VAL='0.5*vdd_var' RISE=2
 

.CONTROL
  OP
  TRAN  10p  40n
.MEASURE TRAN tr1090cs TRIG v(vout) VAL='0.1*csvddvar' RISE=1 TARG v(vout) VAL='0.9*csvddvar' RISE =1
.ENDC


.GLOBAL GND
