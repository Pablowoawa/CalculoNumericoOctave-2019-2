clc;close all;clear

f = @(x) (10.*x)./(10.*x +11);
xx = linspace(-1,1);
N = 11;

p = @(x) polyval(coef1(N),x);

q = @(x) polyval(coef2(N),x);

plot(xx,f(xx),'--')
hold on;grid on
plot(xx,p(xx),'g')
hold on
plot(xx,q(xx),'r')

%%%%% calculando errores %%%%%%%%

a = abs(f(1) -p(1))

b = abs(f(1)-q(1))