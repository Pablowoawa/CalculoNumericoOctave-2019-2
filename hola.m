clear;close all;clc

x = [-1 0 1 3];
y = [1 0 2 0];

A = [ones(length(x),1) x']

c = A\y'
p = @(x) c(1) + c(2).*x
xx = linspace(-1,3);
plot(x,y,'o');grid on;hold on
plot(xx,p(xx))