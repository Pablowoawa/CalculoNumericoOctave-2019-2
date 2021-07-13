clear;close all;clc
x = [0.0 1.0 2.0 3.0 4.0 5.0 6.0 7.0 8.0];

y = [12.0 10.5 10.0 8.0 7.0 8.0 7.5 8.5 9.0];

m = 2;
p = polyfit(x,y,m);#Coeficientes del polinomio de grado <= m

plot(x,y,'o');grid on;hold on %Graficamos los puntos del problema

z = linspace(0,8,100);%Vector del 0 al 8 con 100 valores entre medio

plot(z,polyval(p,z),'r') %Gráfica de la interpolacion con polyvalm

#No es el polinomio que interpola los datos de la tabla
#ya que ese polinomio sería de grado <= 8

polianom = @(x) p(1)*x.^2 + p(2)*x + p(3); %polinomio de grado 2 determinado
%con los coeficientes de polyfit

df = @(x) 2*p(1)*x + p(2); %derivada del polinomio anterior
%Se usa la derivada para luego utilizar la funcion fzero, que encuentra
%El valor x donde una funcion se hace 0


aditivo_gr = fzero(df,6)

tiempo_secado = polianom(aditivo_gr) #Tiempo minimo con el polinomio de grado 2



%%%%%%%%%%%%Polinomio que interpola los datos%%%%%%%%%%%%%
m = length(x)-1; #8

p = polyfit(x,y,m);#polinomio de grado <=8 que interpola los datos

plot(z,polyval(p,z),'y') %Gráfico del polinomio que interpola los datos



%%%%%Determinando el tiempo minimo de secado con el polinomio que
%interpola los datos %%%%%%%%%%%%

%derivada del polinomio mencionado anteriormente)
df = @(x) 8*p(1)*x.^7 + 7*p(2)*x.^6 + 6*p(3)*x.^5 + 5*p(4)*x.^4 + 4*p(5)*x.^3 + 3*p(6)*x.^2 + 2*p(7)*x +p(8);

aditivo_gr2 = fzero(df,[3,5])%Punto minimo del polinomio
tiempo_secado2 = polyval(p,aditivo_gr2)
#Si bien el polinomio que interpola los datos, es mejor que el polinomio de 
#Grado 2, es posible encontrar una mejor solucion, que es con la spline cubica




%%%%%%%%%%%SPLINE CUBICA%%%%%%%%%%


s = spline(x,y);

j = 3;

v = s.coefs(j+1,:)

q3 = @(x) v(1)*(x-3).^3 + v(2)*(x-3).^2 + v(3)*(x-3) + v(4); %polinomio q3
%que pertenece al intervalo 3<=x<=4, donde se encuentra el punto minimo

dq3 = @(x) 3*v(1)*(x-3).^2 + 2*v(2)*(x-3) + v(3); %derivada del polinomio q3
aditivo_gr3 = fzero(dq3,[3,4]) %Punto minimo del polinomio q3
tiempo_secado3 = q3(aditivo_gr3)

plot(z,spline(x,y,z),'b')#spline cubica evaluada en 100 ptos desde 0 a 8

%Yo recomiendo el tiempo de secado de la interpolacion por spline cubica
%ya que interpola mejor a los datos presentados y sin picos tan altos como
%en la interpolación del polinomio

legend('puntos','polinomio grado 2','polinomio grado 8','spline')
