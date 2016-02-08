function [t, y] = eulerAprox(tspace, y0, h, m, c, g)
% eulerAprox: Metodo de euler para resolver ODE (ordinary differential
% equation)
%   [t,y] = eulerAprox(tspace,y0,h,p1,p2,...):
% 
% input:
%   dydt = pendiente de la recta tangente
%   tspace = [ti, tf] ti y tf valor inicial y final de la variable
%   independiente
%   y0 = valor inicial de la variable dependiente
%   h = tamaño del paso
%   p1,p2,... = parametros adicionales de la pendiente
% output:
%   t = vector de la variable independiente
%   y = vector de solucion para la variable dependiente
% 

if nargin < 3, error('Faltan parametros a la función'), end
% Se verifica que el usuario ingrese la cantidad de parametros establecidos
% con la funcion nargin (numero de argumentos de entrada)

ti = tspace(1);
tf = tspace(2);

% Se verifica que el limite superior sea mayor al limite inferior
if ti > tf, error('Limite superior debe ser mayor al limite inferior'), end

% Se establece el vector de tiempos segundo ti y tf
t = (ti:h:tf)';
% Numero de elementos del vector de tiempos
n = length(t);

% si es necesario, se agrega un valor adicional de t de modo que el rango
% del tiempo vaya desde t = ti hasta tf
if t(n) < tf
  t(n+1) = tf;
  n = n+1;
end

% Se reserva memoria para y, se mejora la eficiencia
y = y0*ones(n, 1);

% Se implementa el metodo de Euler
for i = 1:n-1
    y(i+1) = y(i) + dy(y(i), m, c, g)*(t(i+1)-t(i));
end