%% Segunda ley del movimiento para un cuerpo en caida libre
clc;
clear all;
format longG;

x = input('Ingrese valor a calcular: ');
n = input('Ingrese numero de terminos de la serie: ');

trueValue = exp(x)
aproxValue = 0;

% Para que el orden corresponda con el ingreseado se resta 1, de esa forma
% se tiene en cuenta el orden cero de la serie.
for i = 0: n-1
   aproxValue = aproxValue + x^i/factorial(i);
   aproxValue_arr(i+1, 1) = aproxValue;
   order_arr(i+1, 1) = i;
   e_t_arr(i+1, 1) = abs((trueValue - aproxValue)/trueValue)*100;
end

e_a_arr(1, 1) = abs((aproxValue_arr(1) - 0)/aproxValue_arr(i))*100;
for i=2: length(aproxValue_arr)
    e_a_arr(i, 1) = abs((aproxValue_arr(i) - aproxValue_arr(i-1))/aproxValue_arr(i))*100;
end

table = [order_arr aproxValue_arr e_t_arr e_a_arr];
cell_table = {'orden', 'aproxValue', 'e_t %', 'e_a %'};
for f=2: n+1
    for c=1: 4
        cell_table{f, c} = table(f-1, c);
    end
end
cell_table



