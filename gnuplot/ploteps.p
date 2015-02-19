#á=\341 é=\351 í=\355 ó=\363 ú=\372
#{\Symbol a}=alpha
set terminal postscript landscape enhanced color lw 2 'Helvetica' 24
#tipos de fuentes
#"SFRM1000" 14 fontfile "/usr/share/texmf/fonts/type1/public/cm-super/sfss1200.pfb" fontfile "/usr/share/texmf-texlive/fonts/type1/public/amsfonts/cm/cmbxsl10.pfb" fontfile "/usr/share/texmf/fonts/type1/public/cm-super/sfrm1000.pfb"
#"CMBXSL10" 14 fontfile "/usr/share/texmf-texlive/fonts/type1/public/amsfonts/cm/cmbxsl10.pfb"
set output name
replot
#!epstopdf *.eps
#!rm *.eps#rec
