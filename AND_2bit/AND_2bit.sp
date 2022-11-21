* ** Generated for: hspiceD
* ** Generated on: Nov 11 16:21:00 2022
* ** Design library name: ECE555
* ** Design cell name: AND_2bit
* ** Design view name: schematic
* .GLOBAL vss! vdd!


* .TEMP 25.0
* .OPTION
* +    ARTIST=2
* +    INGOLD=2
* +    PARHIER=LOCAL
* +    PSF=2
* +    HIER_DELIM=0

** Library name: ECE555
** Cell name: AND_2bit
** View name: schematic
mp2 out net2 vdd! vdd! pmos_rvt w=54e-9 l=20e-9 nfin=2
mp1 net2 in<0> vdd! vdd! pmos_rvt w=54e-9 l=20e-9 nfin=2
mp0 vdd! vss! net2 vdd! pmos_rvt w=54e-9 l=20e-9 nfin=2
mn5 out net2 vss! vss! nmos_rvt w=54e-9 l=20e-9 nfin=2
mn4 net1 in<1> vss! vss! nmos_rvt w=108e-9 l=20e-9 nfin=4
mn3 net2 in<0> net1 vss! nmos_rvt w=108e-9 l=20e-9 nfin=4
.END