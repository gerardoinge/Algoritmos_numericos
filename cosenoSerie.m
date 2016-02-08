%% Calculo de la funcion coseno a traves de una serie infinita
clc;
clear all;
format short;

sumAprox = 0;

x = input('Ingrese el valor a calcular: ');
n = input('Ingrese el orden de la serie: ');

trueValue = cos(x);

for i=0: 1: n-1
   sumAprox = sumAprox + ((-1)^i)*(x^(2*i))/factorial(2*i);
   order_arr(i+1, 1) = i;
   sumAprox_arr(i+1, 1) = sumAprox;
   error_arr(i+1, 1) = abs((trueValue - sumAprox)/trueValue)*100;
end

plot(0:n-1, error_arr(:,1))

cosx = trueValue
cosAprox = sumAprox
table = [order_arr kron(cosx, ones(length(order_arr), 1)) sumAprox_arr error_arr];
cell_table = {'orden', 'true', 'aprox', 'error %'};
for f=2: n+1
    for c=1: 4
        cell_table{f, c} = table(f-1, c);
    end
end
cell_table

%% Funcion coseno
sumAprox = 0;
order_arr = 0;
sumAprox_arr = 0;
error_arr = 0;

x = input('Ingrese el valor a calcular: ');
n = input('Ingrese el orden de la serie: ');

trueValue = sin(x);

for i=0: 1: n-1
   sumAprox = sumAprox + ((-1)^i)*(x^(2*i+1))/factorial(2*i+1);
   order_arr(i+1, 1) = i;
   sumAprox_arr(i+1, 1) = sumAprox;
   error_arr(i+1, 1) = abs((trueValue - sumAprox)/trueValue)*100;
end

figure
plot(0:n-1, error_arr(:,1))

sinx = trueValue
sinAprox = sumAprox
table2 = [order_arr kron(sinx, ones(length(order_arr), 1)) sumAprox_arr error_arr];
cell_table2 = {'orden', 'true', 'aprox', 'error %'};
for f=2: n+1
    for c=1: 4
        cell_table2{f, c} = table2(f-1, c);
    end
end
cell_table2