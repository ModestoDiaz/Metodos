clc
funcion = input('Ingrese la f(x) entre parentesis:','s');
funcion = inline(funcion);

xi = input('Ingrese el valor de xi inferior: ');
xu = input('Ingrese el valor de xu superior: ');

cantidad = input('Ingrese el numero de iteraciones:');
i=1;

if funcion(xi)*funcion(xu)<0

printf("%s\t%s\t%s\t%s\t%s\t\%s\t\%s\n", 'i','xi','xu','xr','f(xi)','f(xr)', 'f(xi)*f(xr)');

while i < cantidad
    xr = xu-((funcion(xu)*(xi-xu))/(funcion(xi)-funcion(xu)));
    printf("%d\t", i); 
    printf("%.4f\t", xi);
    printf("%.4f\t", xu);
    printf("%.4f\t", xr);
    printf("%.4f\t", funcion(xi));
    printf("%.4f\t", funcion(xr));
       
  if funcion(xi)*funcion(xr)<0
    printf("%.4f\t", funcion(xi)*funcion(xr));
    xu = xr; 
   
  elseif funcion(xi)*funcion(xr)>0
    printf("%.4f\t", funcion(xi)*funcion(xr));
    xi = xr;
 
  elseif funcion(xr)==0
    fprintf("%s","raiz encontrada");
  break 
     
end

printf("\n");   
i++;
endwhile

printf(" la raiz aproximada es: %.4f \n", xr);
else

printf("%s","no se puede resolver por este metodo");
end