clc
clear

dA = [.25; 1.0; 1.5; 2.5; 7.5];
p = [-10.8; 13.5; 16.4; 28.7; 51.3];

% Encuentre la función de la forma
%           P = a + b*log10(dA)

y = ...
A = ...
c = ...
aumentoPeso = @(dosis) ... 

% Grafique en un mismo gráfico los pares en la Tabla y la función obtenida

plot ...                        % Plotear datos
hold on
dd = linspace(0.25, 7.5, 100);
plot ...                        % Plotear ajuste
hold off

xlabel('Dosis de vitamina A [mg]','FontSize',14)
ylabel('Aumento de peso [g]','FontSize',14)
legend('Datos','Aprox. por min. cuad.')
title('Ejercicio 4','FontSize',20)

% Basado en la función obtenida, ¿qué cantidad de vitamina A es requerida
% para no aumentar de peso?

dosisExacta = fzero(...)        % Resolver aumento de peso = 0
fprintf('La cantidad de vitamina A requerida para no aumentar de peso es %3.2f mg\n',dosisExacta); 