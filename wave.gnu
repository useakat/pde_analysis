ndiv = 3999
istep = 50
ioffset = 0
if (exist("ii")==0 || ii<0) ii = ioffset +1
###################### Options #########################################
#set title "gg -> ng Cross Section"
#set logscale x
#set logscale y
#set format x "%L"
#set format y "10^{%L}"
#set xtics (2,3,4,5,6)
#set ytics (1,10,1E2,1E3,1E4,1E5,1E6,1E7,1E8,1E9,1E10)
#set tics scale 2
#set key at 1.0E3,1.0E7 samplen 2
#set xlabel 'Final gluons' offset 0,0
#set ylabel 'Cross Section (fb)' offset 0,0
#set xrange [1:7]
####################### Definitions ######################################
#file1 = sprintf('data/heat%3.1f.dat',ii)
file1 = 'data/wave'.ii.'.dat'	
c1 = 'red'			
c2 = 'blue'
c3 = '#006400' # dark green
c4 = 'purple'
c5 = '#ff33ff'
c6 = '#cc6600' # dark orange
c7 = 'black'

#set style line 1 lt 2 lc rgb c7 lw 3
deg = '{/Symbol \260}'
#deg = ''
##########################################################################
set terminal postscript eps enhanced "Times-Roman" color 20
set output sprintf("plots/wave_%05d.eps",ii)

#set output sprintf('plots/heat_%3.1f.eps',ii)
#set terminal jpeg
#set output "plots/wave_".ii.".jpg"

set grid
set key spacing 1.5 samplen 2
#set lmargin 5.5
#set rmargin 1.8
#set bmargin 3.5
#set tmargin 0.5
#set origin -0.032,0.035
#set size 1.191, 1.154
#set size square

#set multiplot layout 2,1
set multiplot

#set title "{/=28 Xsec Ratio to Total CC Xsec (anti-nu_e)}"
set xlabel '{/=24 Position}'
set ylabel '{/=24 Amplitude}' offset 1.5,0
set yrange [-5:10]
set label sprintf("t = %5.3f sec",0.001*ii) at graph 0.2,0.9
#################### plot ##########################################
plot \
file1 u 1:2 notitle w l lt 1 lw 3 lc rgb c1
###########################################################################
set nomultiplot
unset label

ii = ii +istep	
if (ii < ndiv +1) pause 0.1;reread
ii=-1

reset

#{/Symbol ~n{.4-}}