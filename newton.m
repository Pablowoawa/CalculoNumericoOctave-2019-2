clear all; 
close all; 
clc;

% el objetivo de esta implementacion del metodo de Newton es determinar los
% puntos de interseccion de las funciones f1 y f2
% es decir, determinar los puntos (x,y) en R2 que satisfacen (x,y)
% pertenece a grafico de f1 y (x,y) pertenece a grafico de f2

% definiciones de f1 y f2 y sus derivadas
f1 = @(x) cos(x)+2*x; 
df1 = @(x) -sin(x) + 2;
f2 = @(x) x.^2;
df2 = @(x) 2.*x;
ezplot(f1,[-5, 5]); 
hold on; 
ezplot(f2,[-5, 5]);

% La funcion F a la cual se le quiere determinar un cero es 
% F(x,y) = [y - f1(x), y - f2(x)]
% La matriz jacobiana de F es
% [-df1(x) 1
%  -df2(x) 1]

F = @(x,y) [y-f1(x); y - f2(x)];
JF = @(x,y) [-df1(x) 1;-df2(x) 1];

% aproximacion inicial a punto (x,y) donde se cortan los graficos de f1 y
% f2
% Puede cambiar esta aproximacion inicial y observar como cambia el 
% comportamiento del metodo
x0 = [0;f2(0)];

% tolerancia exigida a metodo de Newton Raphson
epsilon =  1e-8;

% numero maximo de iteraciones a realizar con Newton, para
% controlar que el metodo pare si no llega a cumplirse el criterio de
% detencion visto en clase
max_it = 100; 

% graficando aproximacion inicial para metodo de newton
plot(x0(1),x0(2),'*b');

for it = 1 : max_it
    if det(JF(x0(1),x0(2))) == 0
        % si matriz jacobiana de F en x0 no es invertible, el metodo de newton
        % no puede continuar
        disp('error en newton raphson')
        break;
    else
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
end

% Resultados
disp('aproximacion a cero de F')
x
disp('norma de F(x) debe ser casi cero')
norm(F(x(1),x(2)))
disp('cantidad de iteraciones de metodo de newton')
it