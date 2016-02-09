%% Repaso MatLab
% Borra la ventana de comandos
clc;
% Elimina todas las variables
clear all;

% Formato de presentacion del resultado de una operacion aritmetica
% format rat
% format hex
format short
a = 3/5

%% Expresiones algebraicas
% Estan formadas por cadenas de caracteres, numeros y operadores
% algebraicos o aritmeticos. Las cadenas de caracteres pueden ser variables
% que contienen vectores, matrices o funciones avanzadas de MatLab.
% Numericas
a = 2, b = 3
c = a + b

% Simbolicas
syms x
p = 2*x^2 + 7;
subs(p, x, 1)

%% Operadores
% Operadores aritmeticos
op_arit = a + b
a - b
a*b
a/b
a^b

% Operadores de relacion
op_rel = a < b
a > b
a == b
a == a
a ~= b
a <= b
a >= b

% Operadores logicos
% AND (resultado verdadero si ambas expresiones son verdaderas)
op_log_and = (1 < 2) & (2 > 1)
(1 < 2) & (2 > 3)

% OR (resultado verdadero si alguna de las dos expresiones es verdadera)
op_log_or = (1 < 2) | (2 > 1)
(1 < 2) | (2 > 3)

% NOT (resultado invierte la condicion de la expresion)
op_log_not = ~(1 < 2)

%% Vectores
% Se escriben sus componentes entre corchetes [...], separando las
% componentes con comas o espacios se obtiene un vector fila. Separadolas
% con punto y coma (;) o por medio de la tecla enter se obtiene un vector
% columna.
v1 = [1 2 3]
V2 = [1, 2, 3]
v3 = [1; 2; 3]
v4 = [1
      2
      3]
mat = [1 2 3
       5 6 7
       8 9 10]

% Generar vector automaticamente
% Vector con componentes que van desde a hasta b y distan h cada una de la
% siguiente
v= 0:0.1:1
% Genera un vector fila de 5 elementos linealmente espaciados entre ellos
w=linspace(0,10,5)

%%
p = [3 5 2 -7]
p1 = poly2sym(p)
roots(p)
polyval(p, 3)

x = linspace(-10, 10, 30);
y = polyval(p, x);
tabla = [x; y]'
plot(x, y)
grid on;
% 
% syms a b p x f(x)
% a = x^3 + 3*x^2 - 2*x + 7;
% b = x^2 + x + 3;
% p = a*b
% expand(p)
% sym2poly(p)
% 
% f(x) = x^2

