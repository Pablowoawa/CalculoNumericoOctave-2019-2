clear;close all;clc

t = [1920 1930 1940 1960 1970 1982 1992 2002 2012 2017]; %% anotando datos
h = [3730 4287 5023 7374 8884 11329 13348 15116 16572 17574];

A = [ones(length(t),1) t'];   %%%%creando matriz A

b = log(h');

c = A\b; 

K = exp(c(1))       %%%%%%apartado a
lambda = c(2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
f = @(t) K.*exp(lambda.*t);
xx = linspace(1920,2025,100);
plot(t,h,'o')                      %%%%%%%%%%apartado b
hold on;grid on
plot(xx,f(xx),'r')
title('miles de habitantes en Chile con respecto al tiempo en años')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%cantidad de habitantes que Chile tendrá en el 2020%%%%%%%
hab = f(2020);
display('Chile el 2020 tendrá')        %%%%%%%%%%%apartado c
display(hab)
display('miles de habitantes')