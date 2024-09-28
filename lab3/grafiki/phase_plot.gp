# set terminal eps font 'Arial,15'
# set output 'phase_plot.eps'

set datafile separator ","
set title "Charakterystyka fazowa"
set xlabel "Częstotliwość[Hz]"
set ylabel "Przesunięcie fazy[°]"
set grid
set key top right
set xrange [0:200000]
 set yrange [0:200]
plot "phase_data.csv" using 1:2 with points pointtype 7 pointsize 0.5 linecolor rgb "#56B4E9" title 'Wzmocenie sygnału', \
     "phase_data.csv" using 1:2 with lines smooth mcsplines linecolor rgb "#56B4E9" notitle
