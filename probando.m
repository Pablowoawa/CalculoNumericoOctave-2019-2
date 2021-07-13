clear;close all;clc

t = 0:1:10;
n = [5.03 4.71 4.40 3.97 3.88 3.62 3.30 3.15 3.08 2.92 2.70];

A = [ones(length(t),1) t'];
b = [n'.^-1];

c = A\b;
no = 1/c(1);
a = c(2);
f = @(t) (no)./(1+no.*a.*t)
xx = linspace(0,10,110);
plot(t,n,'o')
hold on
plot(xx,f(xx))