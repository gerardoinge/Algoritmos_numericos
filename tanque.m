%% Volumen de un tanque cilindrico con base conica
clc;
clear all;
% format shortEng;
format longG;

d = input('Ingrese el nivel de agua del tanque: ');
R = input('Ingrese la altura de la base conica: ');

if d < R
    Vcono = pi*d^3/3;
    disp(['El volumen de la base es: ', num2str(Vcono)])
elseif d <= 3*R
    Vcono = pi*R^3/3;
    Vcil = pi*R^2*(d-R);
    Vol = Vcono + Vcil;
    disp(['El volumen total es: ', num2str(Vol)])
else
    disp('Volumen sobrepasado')
end