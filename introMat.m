%% Introducion a matlab
% Borra la ventana de comandos
clc;
% Elimina todas las variables
clear all;

diary dia1
% Formato de presentacion del resultado de una operacion aritmetica
% format rat
% format hex
format short
a = 3/5
% Vector con componentes que van desde a hasta b y distan h cada una de la
% siguiente
v= 0:0.1:1
% Genera un vector fila de 5 elementos linealmente espaciados entre ellos
w=linspace(0,10,5)

p = [3 5 2 -7]
p1 = poly2sym(p)
roots(p)
polyval(p, 3)

x = linspace(-10, 10, 30);
y = polyval(p, x);
tabla = [x; y]'
plot(x, y)
grid on;

syms a b p x f(x)
a = x^3 + 3*x^2 - 2*x + 7;
b = x^2 + x + 3;
p = a*b
expand(p)
sym2poly(p)

f(x) = x^2

