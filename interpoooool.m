clear;close all;clc;
N = 11;

f = @(x) exp(x);

p = @(x) polyval(perromojao(N),x);

q = @(x) polyval(california(N),x);

xx = linspace(-1,1);


plot(xx,f(xx),'o')
hold on;grid on
plot(xx,p(xx),'g')
plot(xx,q(xx))