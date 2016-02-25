%% Serie de Taylor
clc;
clear all;
close all;
format longG;

% Con la siguiente funcion se puede establecer el numero de cifras
% significativas, si se establecen n cifras significativas y aparecen menos
% cifras significativas significa que los digitos restantes son cero.
digits(3);

n = 2;

syms x f(x) diff_i_f(x)
disp('Funcion objetivo:')
f(x) = -0.154689*x^4 - 0.15*x^3 - 0.5*x^2 - 0.25*x + 1.2;
f(x) = vpa(f(x));
pretty(f(x))
x_i = 0;
x_ip1 = 1;
f(x_i);
trueValue = f(x_ip1)
aproxValue = 0;

for i=0: n
    diff_i_f(x) = diff(f(x), i);
    % Con la funcion vpa se establece una aritmetica de precision variable,
    % es decir ya no se visualiza las funciones simbolo con fraccionarios
    % sino con decimales, los decimales o cifras significativas las
    % establece la funcion digits.
    diff_i_f(x) = vpa(diff_i_f(x));
    pretty(diff_i_f(x))
    aproxValue = aproxValue + diff_i_f(x_i)*((x_ip1 - x_i)^i/factorial(i))
end
