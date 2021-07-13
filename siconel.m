%Utilizremos el metodo de Newton Raphson

c = @(t) (3*t.^2 + t)./(50 + t.^3); %funcion original

dc = @(t) (-3*t.^4 -2*t.^3 + 300*t + 50)./ ((50+t.^3).^2); %derivada de la funcion

ddc = @(t) 6*((t.^4 + t.^3 - 350*t - 100)*t.^2+2500)./((t.^3+50).^3); %segunda derivada
tol = 10e-8;

xx = linspace(0,6);

plot(xx,c(xx)) %grafico
grid on;hold on
%con un vistazo al grafico podemos observar que el 
%punto maximo se encientra cerca de x=3, lo que usaremos 
%punto final

plot(xx,dc(xx),'r') %grafica de la derivada

x0 = 3 %punto inicial 

it = 0; %numero de iteraciones

while true %iteraciones newton-raphson
  it = it + 1;
  x1 = x0 - dc(x0)/ddc(x0);
  if abs(x0 - x1) < tol %condicion de termino
        break;
  end
  x0 = x1;
end

 numero_iteraciones = it

tiempo_maximo = x1 %valor de t donde la concentracion es maxima

concentracion_maxima = c(x1)  %valor de la concentracion