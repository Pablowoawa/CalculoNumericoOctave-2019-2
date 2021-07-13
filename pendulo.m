clc,clear all,close all
format long
theta = 12*pi/180;
k = sin(theta);
L = 1;
g = 9.8;
f = @(x) 1/(sqrt(1-k.^2*(sin(x)).^2));


a = 0;
b = pi/2;

#Calculando primera aproximación con el método del punto medio
n = 1
h = b - a;
integral_1  = h * f((a + b)/2);

T_1 = 4*sqrt(L/g) * integral_1;
primera_aproximacion = T_1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

T = T_1;
while true
  T_1 = T;
  s = 0;
  n = n + 1 #Número de intervalos
  for i=1:n
    int = linspace(a,b,n+1);
    h = (b-a)/n;
    s = s + f((int(i)+int(i+1))/2);
  endfor
  resultado = h*s;
  T = 4*sqrt(L/g) * resultado
  if abs(T-T_1) <= 10e-12 #Condición de término
    break
  endif
endwhile

#Valor absoluto entre la diferencia del primer valor calculado y del último
valorfinal = T
diferencia = abs(valorfinal-primera_aproximacion)

