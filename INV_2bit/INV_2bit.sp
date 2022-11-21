** Library name: ECE555
** Cell name: INV
** View name: schematic
.subckt INV_schematic in out
mn0 out in vss! vss! nmos_rvt w=27e-9 l=20e-9 nfin=1
mp1 out in vdd! vdd! pmos_rvt w=54e-9 l=20e-9 nfin=2
.ends INV_schematic
** End of subcircuit definition.

** Library name: ECE555
** Cell name: INV_2bit
** View name: schematic
xi1 in<1> out<1> INV_schematic
xi0 in<0> out<0> INV_schematic
.END