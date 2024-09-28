set terminal eps font 'Arial,15'
set output '2_amp_plot.eps'

set datafile separator ";"
set title "Charakterystyka amplitudowa"
set xlabel "Częstotliwość[Hz]"
set ylabel "Różnica amplitud[V]"
set grid
set xrange [0:3000]
set yrange [0:1]
plot "2_data.csv" using 1:11:14 with errorlines pointtype 7 pointsize 0.5 title 'Różnica Amplitud', \
     "2_data.csv" using 1:13 with linespoints pointtype 7 pointsize 0.5 lc rgb 'gray' dashtype 2 title 'Krzywa teoretyczna z wykładów'