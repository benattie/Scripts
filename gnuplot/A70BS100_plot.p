name="New_A70-BS100-20sek-Tex_"
        
set xlabel "2*theta (°)"
set ylabel "Intensidad (u. a.)"
f(x) = m*x+h
do for [s=1:37:2]
{
    do for [p=20:360:10]
    {
        # datos de los archivos
        filename = sprintf("./%sspr_%d_pattern_%d", name, s, p)
        path = sprintf("%s.dat", filename)
        file = sprintf("%s/%s.int.4.dat", path, filename)
        file_1 = sprintf("%s-1/%s.int.4.dat", path, filename)
        file_2 = sprintf("%s-2/%s.int.4.dat", path, filename)
        # titulo de la grafica
        titulo = sprintf("%sspr_%d_pattern_%d", name, s, p)
        set title titulo
        # grafico 
        plot file u 1:2 w l t 'experimental', file u 1:3 w l t 'CMWP', file u 1:4 w l t 'diferencia'
        replot file u 
    
    }
    plot './fit_results.dat' index t w p pt 7 ps 2
    fit f(x) './fit_results.dat' index t via m,h
    replot f(x)
    pause 3
}

