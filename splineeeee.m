clear;close all;clc
x = 0:1:10;
y = [1/1.03 1/4.71 1/4.40 1/3.97 1/3.88 1/3.62 1/3.30 1/3.15 1/3.08 1/2.92 1/2.70];
al = y.^-1
plot(x,al,'o')
hold on
grid on
A = [ones(length(x),1) x'];

c = A\(y');

no = 1/(c(1));
alfa = c(2);
pene = no*alfa;
f = @(x) no./(1+ pene.*x);
xx = linspace(0,10);
plot(xx,f(xx))