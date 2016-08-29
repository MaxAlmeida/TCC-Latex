# ---------------------------------------------------
# Gráfico de barras construído com o Gnuplot (Mod. 1)
# Autor: M. Galo, UNESP / Dep. de Cartografia
# 2007, 2016
#
#unset mouse
#reset
set auto x
set style data histogram
set style histogram cluster gap 1
set yrange [0:2]
set xrange [-1:5]
#set xtics 1
#set xlabel ""
set ylabel "Desempenho de aplicações combinadas"
#set boxwidth 0.2 relative
set style fill solid border -1
set boxwidth 0.5
set xtic rotate by -60 scale 0 
#set key outside below
set nokey
plot "exp_1" using 2:xtic(1) t"Método 1" with boxes fill pattern 3 lc 9
#rep "exp_1" using ($1 ):($3) t"Método 2" with boxes fill pattern 3 lc 9
#rep "exp_1" using ($1+0.2):($4) t"Método 3" with boxes fill pattern 3 lc 8
