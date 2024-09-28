set terminal eps font 'Arial,15'
set output '2_phase_plot.eps'

set datafile separator ";"
set title "Charakterystyka fazowa"
set xlabel "Częstotliwość [Hz]"
set ylabel "Różnica funkcji fazy [°]"
set grid
  set xrange [0:10000]
 set yrange [-225:75]
# set ytics ('0' 0, 'π/4' pi/4, 'π/2' pi/2)
# plot "1_data.csv" using 1:18:17 with errorlines pointtype 7 title 'Różnica Fazy', \
#      "1_data.csv" using 1:19:17 with errorlines pointtype 7 title 'Różnica Średnia Fazy', \
#      "1_data.csv" using 1:16 with linespoints pointtype 7 lc rgb 'gray' dashtype 2 title 'Krzywa teoretyczna z wykładów'

plot "2_data.csv" using 1:4:10 with errorlines pointtype 7 pointsize 0.5 title 'Różnica Fazy'
