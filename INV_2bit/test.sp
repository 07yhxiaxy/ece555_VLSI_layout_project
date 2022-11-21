**Test
.GLOBAL vss! vdd!
.TEMP 25.0
.OPTION
+    ARTIST=2
+    INGOLD=2
+    PARHIER=LOCAL
+    PSF=2
+    HIER_DELIM=0
.options accurate=1 NUMDGT=8 measdgt=5 GMINDC=1e-18 DELMAX=1n method=gear INGOLD=2 POST=1
.INCLUDE "/cae/apps/data/asap7PDK-2022/asap7PDK_r1p7/models/hspice/7nm_TT_160803.pm"
.INCLUDE "INV_2bit.sp"
v1 vdd! 0 0.9v
v2 vss! 0 0v
v3 in<0> 0 pwl 0ns 0v   1ns 0v   1.02ns 0.9v 2ns 0.9v 2.02ns 0v   3ns 0v
v4 in<1> 0 pwl 0ns 0.9v 1ns 0.9v 1.02ns 0v   2ns 0v   2.02ns 0.9v 3ns 0.9v
.OP
.TRAN STEP=10p STOP=3n
.end