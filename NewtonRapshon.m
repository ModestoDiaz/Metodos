clc;
funcion = input('Ingrese la f(x) entre parentesis: ','s')
funcion = inline(funcion);

derivada = input('Ingrese la df(x) entre parentesis: ','s') 
derivada = inline(derivada);

xi = input('Ingrese el xi inicial: ');

cantidad = input('Ingrese el numero de iteraciones: ');
i=1;

function ea = errora(xa,xp)
    ea = abs(((xa-xp)/xa)*100);
end


if derivada(xi) == 0
    fprintf ('No se puede hallar una raiz');
else

    fprintf("%s\t %s\t\t  %s\n",'i','Xi',' Ea ');
        
  while i <= cantidad
       fprintf('%d\t',i); 
       fprintf('%.8f\t',xi);
       xn = xi-(funcion(xi)/derivada(xi));
       fprintf('%.8f\t',errora(xn,xi));   
       xi = xn;
       fprintf ("\n");
       i++;

   endwhile
       fprintf ("____________________________________________\n");
       fprintf('\nLa ra�z aproximada es: %.8f\n',xn);
            
endif