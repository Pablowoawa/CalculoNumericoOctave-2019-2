clear;close all;clc
f = @(x) -x.^2;
g = @(x) 2*x-5;
x= linspace(-1,1);
F =[-x.^2,2*x-5]
area(x,F)