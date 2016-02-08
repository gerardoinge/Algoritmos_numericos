%% Valor futuro de una inversion
clc;
clear all;
% format shortEng;
format longG;

P = input('Ingrese la inversi�n inicial: ');
i = input('Ingrese la tasa de inter�s anual: ');
n = input('Ingrese el n�mero de a�os del prestamo: ');

for j=0: n
    F(j+1, 1) = P*(1 + i)^j;
    n_array(j+1, 1) = j;
end

table = [n_array F];
cell_table = {'Periodo', 'Valor Futuro'};
for f=2: n+2
    for c=1: 2
        cell_table{f, c} = table(f-1, c);
    end
end
cell_table