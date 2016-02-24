%% Segunda ley del movimiento para un cuerpo en caida libre
clc;
clear all;
format longG;

x = input('Ingrese valor a calcular: ');
n = input('Ingrese numero de cifras sigificativas: ');

trueValue = exp(x)
aproxValue = 0;
aproxValue_old = 0;

e_a = 1;
% Tolerancia porcentual
e_s = (0.5*10^(2-n))

% Variable de control del numero de elementos de acuerdo a la tolerancia
% porcentual establecida
i = 0;

% aproxValue_arr = zeros(n-1, 1);
% Para que el orden corresponda con el ingreseado se resta 1, de esa forma
% se tiene en cuenta el orden cero de la serie.
while e_a > e_s
    order_arr(i+1, 1) = i;
    aproxValue = aproxValue + x^i/factorial(i);
    aproxValue_arr(i+1, 1) = aproxValue;
    % Error relativo porcentual aproximado
    e_a = abs((aproxValue - aproxValue_old)/aproxValue)*100;
    % Se escribe aca la aprox anterior porque de esta manera se trabaja con
    % el valor anterior y no el actual
    aproxValue_old = aproxValue;
    e_a_arr(i+1, 1) = e_a;
    % Error relativo porcentual verdadero
    e_t_arr(i+1, 1) = abs((trueValue - aproxValue)/trueValue)*100;
    i = i + 1;
end

table = [order_arr aproxValue_arr e_t_arr e_a_arr];
cell_table = {'orden', 'aproxValue', 'e_t %', 'e_a %'};
for f=2: i+1
    for c=1: 4
        cell_table{f, c} = table(f-1, c);
    end
end
cell_table



