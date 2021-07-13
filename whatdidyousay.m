clc;clear;close all;
epsilon= 1e-9
f = @(x,y) [cos(x)-y+2*x;y-x.^2];
df = @(x,y) [-sin(x)+2 -1;-2*x 1];
x0 = [4;15];
i = 1
while norm(x0) < epsilon
  x0 = x0 - df(x0(1),x0(2))\f(x0(1),x0(2));
  i+=1;
endwhile

x0
i