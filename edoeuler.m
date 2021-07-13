clear;close all;clc

a=0;
b=1;
N = 4;
h = (b-a)/N ;
fxy = @(x,y) y;
xx = a:h:b;
y = [1];

for i=2:length(xx)
  y(i) = y(i-1) + h*fxy(xx(i-1),y(i-1));
endfor

plot(xx,y)
y