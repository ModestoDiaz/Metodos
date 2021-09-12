clear all;
clc;
fun=input('ingrese la funcion f(x)=','s');
p0=input('ingrese la aproximacion inicial p0:');
p1=input('ingrese la aproximacion final p1:');
xi=p0;
xf=p1;
f= inline(fun,'x');
tol=input ('ingrese el error aproximado:');
No=input ('ingrese el numero de iteraciones:');
function ea=errora(xn,xp)
  ea=abs(xn-xp);
end
if f(xi)-f(xf)~=0
i=1;
fprintf("_____________________________________________________________\n");
fprintf("%s\t %s\t\t  %s\n", 'I', 'XN', '|EA|');
fprintf("_____________________________________________________________\n");
fprintf('%.0f\t',i);
fprintf('%.5f\t\t',xi);
fprintf('%.5f\t',errora(xf,xi));
fprintf("\n");
while errora (xf,xi)>tol
  xn=xi-(((xi-xf)/(f(xi)-f (xf)))*f (xi));
  xf=xi;
  xi=xn;
  i++;
  fprintf('%.0f\t',i);
fprintf('%.5f\t\t',xn);
fprintf('%.5f\t',errora(xn,xf));
fprintf("\n");
endwhile
fprintf("_____________________________________________________________\n");
else
fprintf("no se puede calcular");
end
fprintf('iteracciones  \tp0            \t\tp1           \tp       \tf(p)\n');
fprintf ('\t%d  \t%6.6f \t\t%6.6f \n',1,p0,p1);
i=2;
q0=f(p0);
q1=f(p1);
while (i<=No)
  p=p1-q1*(p1-p0)/(q1-q0);
  fprintf('\t%d \t%6.6f \t\t%6.6f \t%6.6f \t%6.5f\n',i,p0,p1,p,f(p));
  if abs (p-p1)<tol
    fprintf('la solucion aproximada p es =%8.8f\n',p);
  break
end
i=i+1;
p0=p1;
q0=q1;
p1=p;
q1=f(p);
end
if i>No
  fprintf('el metodo fracaso despues de %d iteracciones',No);
  end