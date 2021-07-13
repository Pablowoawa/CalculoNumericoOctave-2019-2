clc
clear

t = [.5; 1; 2; 3; 4];
pt = [7; 5.2; 3.8; 3.2; 2.5];

%% 2.2

% Construya la matriz A y parte derecha y del sistema
A = ...
y = ...

% Resuelva el sistema Ac = y en el sentido de los m�nimos cuadrados
c = ...

% Grafique en un mismo gr�fico los pares en la Tabla y la funci�n p(t)
% obtenida

p = @(t) ...            % Funci�n an�nima p(t)

plot ...                % Plotear los datos
hold on
tt = linspace(0,6);
plot ...                % Plotear p(t)
hold off

xlabel('Tiempo [h]','FontSize',14)
ylabel('Miles de microorganismos [-]','FontSize',14)
legend('Datos','Ajuste funcional')
title('Ejercicio 2','FontSize',20)

% En base a la funci�n obtenida, �cu�l es el n�mero de microorganismos que
% hab�a en la muestra inicialmente? �y despu�s de una hora y media? �y
% despu�s de 5 horas y media?

mo_inicial = ...            % Microorganismos inicialmente
mo_hraymed = ...            % Microorganismos en una hora y media
mo_5hrymed = ...            % Microorganismos en 5 horas y media

