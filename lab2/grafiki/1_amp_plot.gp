set terminal eps font 'Arial,15'
set output '1_amp_plot.eps'

set datafile separator ";"
set title "Charakterystyka amplitudowa"
set xlabel "Częstotliwość[Hz]"
set ylabel "Różnica amplitud[V]"
set grid
set key bottom right
set xrange [0:1000]
set yrange [0:1]
plot "1_data.csv" using 1:11:14 with errorlines pointtype 7 pointsize 0.5 title 'Różnica Amplitud', \
     "1_data.csv" using 1:13 with linespoints pointtype 7 pointsize 0.5 lc rgb 'gray' dashtype 2 title 'Krzywa teoretyczna z wykładów'
#"1_data.csv" using 1:12:15 with errorlines pointtype 7 title 'Amp MEAN wyj[1]/wej[2]', \