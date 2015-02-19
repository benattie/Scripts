set terminal postscript enhanced color 'Helvetica' 24
set output 'Tvs_membrana.eps'
plot 'Tvst_1000x1_mem_10-12_510-8.cut' u ($1*1e9):2 w l t '1000x1, membrana'
replot 'Tvst_1000x1_sin_0p1mV_1e-12_1e-8.cut' u ($1*1e9):2 w l t '1000x1, sin membrana'
replot 'Tvst_200x1_mem_0p1mV_1e-12_5e-8.cut' u ($1*1e9):2 w l t '200x1, membrana'
replot 'Tvst_200x1_sin_0p1mV_1e-12_1e-12.cut' u ($1*1e9):2 w l t '200x1, sin membrana'
set xlabel 't (ns)'; set ylabel 'T (K)'; set xr[0:50]; set yr[35:65]
set ytics 35,10; set mytics 2
set multiplot
set size 1,1; set origin 0,0
replot
unset xlabel; unset ylabel; unset key; set yr[40:95]
set size 0.385,0.385; set origin 0.07, 0.10
set xtics 0, 20 offset 0,0.6 font 'Helvetica, 16'; set mxtics 2
set ytics 40,20 offset 0.8,0 font 'Helvetica, 16'; set mytics 2
replot
unset multiplot
reset
set output
set terminal wxt
