set terminal svg font 'Arial,15'
set output 'sinus.svg'
#set terminal png font 'Arial,15'
#set output 'sinus.png'
set title 'Sygnał sinusoidalny'
set xlabel 'Czas'
set ylabel 'Amplituda'
set grid
A = 1
set xrange [-2*pi:2*pi]
set yrange [-2*A:2*A]
set format y ""
set format x "%.fπ/ω"
set xtics pi/2
set ytics add ('A' A)
set ytics add ('-A' -A)
plot sin(x+0.55) title 'sin(x)'
