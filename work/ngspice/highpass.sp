Title: Simple High Pass Filter


** High pass element
Cbyp  vin  n1  4.7u
Rhp   n1   vcm 5k

**stimuli
Vsin   vin  0 0 AC  1
Vscm  vcm   0  0.5


.OP


.CONTROL

       save all
       AC DEC 100 1 10e6
       plot vdb(n1)
       meas ac gain_db MAX vdb(n1) FROM=1 TO =10e6
**     LET gain_db = 20*log10(gain)
       LET f3db=gain_db-3
 **    LET f3db = gain/sqrt(2)
       print f3db
       MEAS AC fzero WHEN vdb(n1) = F3db Rise= 1
**       print gain_db f3db
**       MEAS AC fzero WHEN vmag(n1) = F3db RISE=1

.ENDC

.END

