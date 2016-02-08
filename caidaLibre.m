%% Segunda ley del movimiento para un cuerpo en caida libre
clc;
clear all;
format longG;

g = 9.8;
c = 12.5;
m = input('masa (kg): ');
ti = input('tiempo inicial (seg): ');
tf = input('tiempo final (seg): ');
dt = input('Tamaño del paso o incremento del tiempo: ');

%% Solucion analitica
v_exact = (g*m/c)*(1-exp(-c/m*tf));

disp(['La velocidad exacta del cuerpo es: ' num2str(v_exact) ' m/s'])

%% Solucion numerica
% Velocidad inicial
v = 0;

% Numero de iteraciones del loop segun el tiempo final de prediccion.
% Si el intervalo es divisible exactamente entre el incremento, el calculo
% no se realiza mas alla del tiempo final. Sino entonces se comprueba si el
% calculo ti + dt nos lleva mas alla del tiempo final. Si es asi, se reduce
% el intervalo (formado entre ti y tf) haciendo el incremento dt = tf - ti.
% Asi se garantiza que el paso siguiente caiga precisamente en el tf,
% despues de hacer este paso el loop termina debido a que ti >= tf
n = (tf - ti)/dt;

% Variable de control para almacenar en un vector los resultados de la
% velocidad en un tiempo determinado
i = 1;
% Se reserva memoria para v_arr y ti_arr
v_arr = zeros(int32(n), 1);
ti_arr = zeros(int32(n), 1);

v_arr(1) = v;
ti_arr(1) = ti;

while(ti < tf)
    i = i + 1;
    if (ti + dt) > tf
        dt = tf - ti;
    end
    dvdt = g - (c/m)*v;
    v = v + dvdt*dt;
    v_arr(i, 1) = v;
    ti = ti + dt;
    ti_arr(i, 1) = ti;
end

disp(['La velocidad aproximada del cuerpo es: ' num2str(v) ' m/s'])

tableAprox = [ti_arr v_arr];
cell_tableAprox = {'tiempo (seg)', 'velocidad (m/s)'};
for f=2: length(ti_arr)+1
    for c=1: 2
        cell_tableAprox{f, c} = tableAprox(f-1, c);
    end
end
cell_tableAprox

%% Solucion numerica utilizando la funcion eulerAprox
g = 9.8;
c = 12.5;
m = input('masa (kg): ');
ti = input('tiempo inicial (seg): ');
tf = input('tiempo final (seg): ');
dt = input('Tamaño del paso o incremento del tiempo: ');

[t, y] = eulerAprox([ti tf], 0, dt, m, c, g);
[t y]