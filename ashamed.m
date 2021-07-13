clear;close all;clc
F = @(x,y) [x-y.^2; x.^2+(y-3).^2-5];
JF = @(x,y) [1,-2*y;2*x,2.*(y-3)];

% aproximacion inicial a punto (x,y) donde se cortan los graficos de f1 y
% f2
% Puede cambiar esta aproximacion inicial y observar como cambia el 
% comportamiento del metodo
x0 = [-2;-1];

% tolerancia exigida a metodo de Newton Raphson
epsilon =  1e-9;

% numero maximo de iteraciones a realizar con Newton, para
% controlar que el metodo pare si no llega a cumplirse el criterio de
% detencion visto en clase
max_it = 100; 

% graficando aproximacion inicial para metodo de newton
plot(x0(1),x0(2),'*b');

for it = 1 : max_it
        % resolviendo sistema de ecuaciones para calcular nueva aproximacion
        % a cero de F
        delta = -JF(x0(1),x0(2))\F(x0(1),x0(2));
        % actualizando aproximacion a cero de F
        x = x0 + delta;
        % mostrando nueva aproximacion a cero de F
        plot(x(1),x(2),'*b');
        if norm(delta) < epsilon
            % newton termino exitosamente
            disp('newton encontro aproximacion a cero de F')
            break
        else
            x0 = x;
        end
end

% Resultados
disp('aproximacion a cero de F')
x
disp('norma de F(x) debe ser casi cero')
norm(F(x(1),x(2)))
disp('cantidad de iteraciones de metodo de newton')
it