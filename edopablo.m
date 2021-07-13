clear;close all;clc

f = @(x,y) x.*y.^2;
tspan = [1 2];
y0 = -1;
N = 5;
ex = linspace(1,2,N+1)
eu = EulerExplicito(f,tspan,y0,N);
f_exac = @(x) -2./(x.^2 + 1);
xx = linspace(1,2);
[x45,y45] = ode45(f,tspan,y0);
plot(xx,f_exac(xx),'r')
hold on
plot(ex,eu,'g')
plot(x45,y45,'b')
