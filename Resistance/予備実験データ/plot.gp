set datafile separator ","
set xlabel 'Temperature [degree]'
set ylabel 'Resistance [Ohm]'

f(x) = a + b*x
fit f(x) 'therm.dat' every ::10 u 6:7 via a, b
p [0:90]'therm.dat' every ::10 u 6:7, f(x)

#set term pdfcairo
#set out 'therm.pdf'
#replot
#set term x11


