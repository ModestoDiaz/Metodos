%Limpiamos la pantalla y mostramos el nombre del método
clear
clc
disp('Metodo de Newton Raphson')

%Introducimos la función,la derivada, el punto de inicio,así como
%porcentaje de error
f=input('Introduzca la funcion f(x):','s');
d=input('Introduzca la derivada de la funcion dy/dx:','s');
xi=input('Introduzca el punto de inicio:');
err=input('Porcentaje de error:');

%Graficamos la función
ezplot(f)
grid on

%cambiamos las expresiones ingresadas de string a funciones
d=inline(d);
f=inline(f);

ea=100;
i=0;
#funcion que retorna el error aproximado
function ea = errora(xa, xp)
    ea = abs(((xa - xp)/xa)*100);
end

if d(xi) == 0
     fprintf ('no se puede hallar una raiz');

     else
          
          xn= xi-(f(xi)/d(xi));
          fprintf ("________________\n");
          fprintf("%s\t %s\t\t  %s\n",'INTERACCION','PUNTO','|ERROR|  ');
          fprintf ("________________\n")
          fprintf('%.0f\t\t',i);
          fprintf('%.5f\n',xi);

          while errora(xn, xi) > err
                xi=xn;
                xn= xi-(f(xi)/d(xi));
                i++;
                fprintf('%.0f\t\t',i);
                fprintf('%.5f\t\t',xi);
                fprintf('%.5f\t\t',errora(xn,xi));
                fprintf ("\n");
          endwhile
          
                fprintf ("________________\n");
                fprintf('\nLA RAIZ APROXIMADA TOMANDO UNA TOLERANCIA DE %f ES:  %.5f \n Y SE REALIZARON %i ITERACIONES\n', err, xi,i);
            
endif