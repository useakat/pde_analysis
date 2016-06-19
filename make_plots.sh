rm -rf plots/*
gnuplot wave.gnu
cd plots
../fig_conv.sh eps jpg
convert -layers optimize -delay 10 *.jpg wave.gif
rm -rf *.jpg
cd ..