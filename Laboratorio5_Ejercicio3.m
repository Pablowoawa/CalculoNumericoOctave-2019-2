clc
clear

x = [1; 2; 5; 15; 25; 30; 35; 40];
y = [99; 95; 85; 55; 30; 24; 20; 15];

%% 3.1, 3.2

%%% Modelo 1
% log(y) = log(alfa)*1 + log(beta)*x

b = ...
A = ...
c = ...

alfa1 = ...             % log(alfa) = c1
beta1 = ...             % log(beta) = c2
err1 = ...              % ||b - A*x||_2

fprintf('Modelo 1: y = a*b^x \n');
fprintf('a = %6.4f\nb = %6.4f \n',alfa1,beta1);
fprintf('||b - Ax||_2 = %6.4e \n\n',err1);

%%% Modelo 2
% log10(y) - log10(100 - x) = log10(añfa) + beta*x

b = ...
A = ...
c = ...

alfa2 = ...             % log10(alfa) = c1
beta2 = ...             % beta = c2
err2 = ...              % ||b - A*x||_2

fprintf('Modelo 2: y = a*(100-x)*10^(bx) \n');
fprintf('a = %6.4f\nb = %6.4f \n',alfa2,beta2);
fprintf('||b - Ax||_2 = %6.4e \n\n',err2);

%% 3.3

fm1 = @(x) ...          % Modelo 1
fm2 = @(x) ...          % Modelo 2

plot ...                % Plotear datos
hold on
xx = linspace(0,50);
plot ...                % Plotear modelo 1
plot ...                % Plotear modelo 2
hold off

xlabel('Miles de millas recorridas [-]','FontSize',14)
ylabel('Porcentaje útil [%]','FontSize',14)
legend('Datos','Modelo 1', 'Modelo 2')
title('Ejercicio 3','FontSize',20)

%% 3.4

% Con el mejor modelo, estime qué porcentaje de las llantas radiales del
% fabricante durarán 45 (mil) millas y 50 (mil) millas.

x45 = ...               % Estimación a las 45e3 millas
x50 = ...               % Estimación a las 50e3 millas

fprintf('  Estimaciones\n');
fprintf(' ----------------- \n');
fprintf('| Millas | %% util |\n');
fprintf(' ----------------- \n');
fprintf('|   45   |%8.2f|\n',x45);
fprintf('|   50   |%8.2f|\n',x50);
fprintf(' ----------------- \n');
 