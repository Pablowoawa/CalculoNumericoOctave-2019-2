clear;close all;clc
f = @(x) exp(x).*(-x.^3 -5*x +8);
df = @(x) -exp(x).*(-3 + 5*x + 3*x.^2 + x.^3) - 1/2
xx = linspace(-10,2)

plot(xx,df(xx))
hold on
fzero(df,-4)

plot(-5.1362,df(-5.1362),'o')