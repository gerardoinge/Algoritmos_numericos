%% Volumen de un tanque cilindrico con base conica
clc;
clear all;
% format shortEng;
format longG;

b = input('Ingrese el vector que quiere ordenar: ');

m = length(b);

for j=1: m
    for i=1: length(b)-1
        if b(i) > b(i+1)
            aux = b(i);
            b(i) = b(i+1);
            b(i+1) = aux;
        end
    end
    m = m - 1;
end

disp(['El vector ordenado es: ' num2str(b)])