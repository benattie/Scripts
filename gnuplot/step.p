#script para medir escalones
#Previamente hay que definir la ubicación de los dos escalones (ulow,usup,vlow,vsup) y un punto donde evaluar la función que da la diferencia (mid).
#Dados estos parámetros el programa fitea una recta (al archivo name) a cada plano del escalón (low y sup) y luego calcula la diferencia en "mid".
low(x)=a*x+b
sup(x)=c*x+d
fit [ulow:usup] low(x) name via a,b
fit [vlow:vsup] sup(x) name via c,d
replot low(x), sup(x)
altura=sup(mid)-low(mid)
altura_err=sqrt((c_err**2+a_err**2)*mid**2+d_err**2+b_err**2)
print altura," (+-) ",altura_err
set print name.'_ajuste_altura.dat'
print "#fit [",ulow,":",usup,"] low(x) ",name," via a,b"
print "#fit [",vlow,":",vsup,"] sup(x) ",name," via c,d"
print "#mid= ",mid
print "#altura = ",altura," (+-) ",altura_err
set print
