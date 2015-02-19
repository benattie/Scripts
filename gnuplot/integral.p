#integrar función
intfAux1(a,x,h)=(x>a?f(x)+intfAux1(a,x-h,h):0);  
intfAux2(a,x,h)=(x<a?f(x)+intfAux2(a,x+h,h):0); 
intf(a,x)=x>a?intfAux1(a,x-(x-a)/90./2,(x-a)/90.)*(x-a)/90.:intfAux2(a,x+(a-x)/90./2,(a-x)/90.)*(x-a)/90.; 
Nintf(a,x,N)=x>a?intfAux1(a,x-(x-a)/N/2,(x-a)/N)*(x-a)/N:intfAux2(a,x+(a-x)/N/2,(a-x)/N)*(x-a)/N;

#calculo el area
f(x)=gaus1(x)
area = intf(xlow,xsup)

#imprimo
set print 'areas.dat' append

print '#area de gaus_1(x)'
print area

#derivar funcion
#x0=NaN
#y0=NaN
#plot 'test.dat' using (dx=$1-x0,x0=$1,$1-dx/2):(dy=$2-y0,y0=$2,dy/dx) w l notitle
