#!/bin/csh
# plot record sections in sac by J.Aragon
# call with > csh [scriptname].sh
# INPUT and set time windows, filters, filenames to print, and single station name
#A plot filter 1
#B launch sac
#C cleanup

set station="*CABN*"
set station_file=CABN.pdf
set STW="500 10000" #station time window

set RSTW1="300 600" #record section time window 1
set RSTW2="2700 3900" #record section time window 2

set filter1=".1 1" #1 to 10 sec
set filter1_file="1s_10s"

set radial="BHN" #name BHE, BHN, or BHR depending on filenames
set transverse="BHE" #name BHE, BHN or BHR depending on filenames

# A plot a station
cat > m_plot_figures.m <<ENDOFPLOTTING
CUT ${STW}
READ ${station}
PLOT1
SAVEIMG ${station_file}
CUT OFF

#start record section
#set a time window
SSS
TW ${RSTW1}
QS

# B filter1 recordsection
CUT ${RSTW1}
READ *${radial}*
BP CORNER ${filter1} NPOLES 4
SSS
PRS
QS
saveimg ${filter1_file}${radial}.pdf

READ *${transverse}*
BP CORNER ${filter1} NPOLES 4
SSS
PRS
QS
saveimg ${filter1_file}${transverse}.pdf

READ *BHZ*
BP CORNER ${filter1} NPOLES 4
SSS
PRS
QS
saveimg ${filter1_file}BHZ.pdf


CUT OFF
ED XWINDOWS
EXIT
ENDOFPLOTTING

# D launch sac
sac Plotfigures.m

#mkdir 01_Figures
#mv *.pdf* 01_Figures

