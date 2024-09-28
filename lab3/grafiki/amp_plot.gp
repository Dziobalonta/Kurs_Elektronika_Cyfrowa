# set terminal eps font 'Arial,15'
# set output 'amp_plot.eps'

set datafile separator ","
set title "Charakterystyka amplitudowa"
set xlabel "Częstotliwość[Hz]"
set ylabel "Wartość wzmocnienia"
set grid
set key top right
set xrange [0:300000]
# set yrange [0:1]
plot "amp_data.csv" using 1:4 with points pointtype 7 pointsize 0.5 linecolor rgb "#56B4E9" title 'Wzmocenie sygnału', \
     "amp_data.csv" using 1:4 with lines smooth csplines linecolor rgb "#56B4E9" notitle
