clc
clear

a = (0:8)';
ts = [12; 10.5; 10.0; 8.0; 7.0; 8.0; 7.5; 8.5; 9.0];

%% 1.2

% Construya la matriz A y la parte derecha y del sistema
A = ...
y = ...

% Resuelva el sistema Ac = y en el sentido de los mínimos cuadrados
c = ...

% Grafique en un mismo gráfico los pares en la Tabla y el polinomio
% obtenido evaluado en 100 puntos entre 0 y 8

plot ...            % Plotear los datos
hold on
aa = ...            % 100 puntos entre 0 y 8
plot ...            % Plotear la aproximación
hold off

xlabel('Aditivo [g]','FontSize',14)
ylabel('Tiempo de secado [h]','FontSize',14)
legend('Datos','Ajuste polinomial')
title('Ejercicio 1','FontSize',20)

% Basados en el polinomio resultante, ¿qué cantidad de aditivo resulta en
% tiempo mínimo de secado? ¿Cuál es el tiempo mínimo de secado?

amin = ...          %amin = -b/2a
tmin = ...         %tmin = p(-b/2a)