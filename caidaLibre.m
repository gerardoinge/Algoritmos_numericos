%% Segunda ley del movimiento para un cuerpo en caida libre
clc;
clear all;
close all;
format longG;

g = 9.8;
c = 12.5;
m = 68.1;
ti = 0;
tf = 60;
dt = 2;

%% Solucion analitica
timeTrue = ti: dt: tf;
for j=1: length(timeTrue)
    valueTrue(j, 1) = (g*m/c)*(1-exp(-c/m*timeTrue(j)));
end

%% Solucion numerica utilizando la funcion eulerAprox
[timeAprox, valueAprox] = eulerAprox([ti tf], 0, dt, m, c, g);
table(timeAprox, valueTrue, valueAprox, 'VariableNames', {'tiempo', 'velocidadVerdadera', 'velocidadAproximada'})

plot(timeTrue, valueTrue, 'r','LineWidth', 3)
hold on;
plot(timeAprox, valueAprox, 'b', 'LineWidth', 3)
grid on;
legend('Valor verdadero', 'Valor aproximado');
title(['Solucion analitica vs solucion aproximada '] ,'FontName','Verdana','FontSize',16,'fontWeight','bold');
xlabel('tiempo (seg)','FontName','Verdana','FontSize',12)
ylabel('velocidad (m/s)','FontName','Verdana','FontSize',12)