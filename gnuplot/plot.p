#á=\341 é=\351 í=\355 ó=\363 ú=\372
#{\Symbol a}=alpha
set encoding iso_8859_1#acentos
set style line 1 lc 1 lt 1 lw 1#rojo
set style line 2 lc 3 lt 1 lw 1#azul
set style line 3 lc 7 lt 1 lw 1#negro
plot '...' u 1:2 w lp ls 1 pt 4 title '...'
set terminal postscript enhanced color 'Helvetica' 24
set output name
!epstopdf *.eps
!rm *.eps#rec
