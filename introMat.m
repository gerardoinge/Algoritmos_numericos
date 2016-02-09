%% Repaso MatLab
% Borra la ventana de comandos
clc;
% Elimina todas las variables
clear all;

% Formato de presentacion del resultado de una operacion aritmetica
% format rat
% format hex
% format short
format longG
a = 3/5

%% 1.1 Expresiones algebraicas:
% Estan formadas por cadenas de caracteres, numeros y operadores
% algebraicos o aritmeticos. Las cadenas de caracteres pueden ser variables
% que contienen vectores, matrices o funciones avanzadas de MatLab.
% 1.1.1 Numericas
a = 2, b = 3
c = a + b

% 1.1.2 Simbolicas
syms x
p = 2*x^2 + 7;
subs(p, x, 1)

%% 1.2 Operadores:
% 1.2.1 Operadores aritmeticos
op_arit = a + b
a - b
a*b
a/b
a^b

% 1.2.2 Operadores de relacion
op_rel = a < b
a > b
a == b
a == a
a ~= b
a <= b
a >= b

% 1.2.3 Operadores logicos
% AND (resultado verdadero si ambas expresiones son verdaderas)
op_log_and = (1 < 2) & (2 > 1)
(1 < 2) & (2 > 3)

% OR (resultado verdadero si alguna de las dos expresiones es verdadera)
op_log_or = (1 < 2) | (2 > 1)
(1 < 2) | (2 > 3)

% NOT (resultado invierte la condicion de la expresion)
op_log_not = ~(1 < 2)

%% 1.3 Vectores:
% Se escriben sus componentes entre corchetes [...], separando las
% componentes con comas o espacios se obtiene un vector fila. Separadolas
% con punto y coma (;) o por medio de la tecla enter se obtiene un vector
% columna.
v_f1 = [1 2 3]
v_f2 = [1, 2, 3]
v_c1 = [1; 2; 3]
v_c2 = [1
      2
      3]
  
mat = [1 2 3
       5 6 7
       8 9 10]
   
% 1.3.1 Operaciones con vectores o matrices
v_f1.*v_f2
v_f1*v_f2'
v_f1./v_f2
v_f1.^v_f2

% 1.3.2 Generar vector automaticamente
% Con a:h:b se crea un vector de componentes que van desde a hasta b y
% distan h cada uno de la siguiente.
v_aut = 0:0.2:2

% Con linspace(a, b , n) se genera un vector fila de n elementos
% linealmente espaciados desde a hasta b
v_lin = linspace(0, 2, 11)

% 1.3.3 Acceder a elementos de un vector
% Para acceder a los elementos de un vector se utiliza vector(elemento),
% recordar que los elementos de un vector en Matlab empiezan desde el
% indice o la posicion 1 y no 0 como en otros lenguajes de programacion.
v_lin(4)
% v_lin(0) % Error

%% 1.4 Operaciones con polinomios:
% Los polinomios en matlab se representan como vectores fila. Para ello se
% considera las componentes de dicho vector como los coeficientes del
% polinomio ordenados de mayor a menor grado.
p = [3 5 2 -7]

% Convertir vector fila en expresion simbolica que representa el polinomio
p_sym = poly2sym(p)

% A partir de la funcion roots(poli) es posible encontrar las raices del
% polinomio, es decir, esta funcion arroja los valores que anulan al
% polinomio.
r = roots(p)

% Para encontrar el valor del polinomio en un punto se utiliza la funcion
% polyval(polinomio, valor)
polyval(p, 3)

% Para evaluar el polinomio sobre un vector se utiliza las formas
% anteriores para crear el vector y luego se emplea la funcion polyval.

% Se generan los puntos a evaluar
x = linspace(-5, 5, 50);
% Se evaluan los puntos anteriores a partir de la funcion polyval
y = polyval(p, x);
% Se genera una tabla con ambos vectores resultantes x - y
tabla = [x; y]'
plot(x, y)
grid on;
%% 1.5 Operaciones simbolicas:
% se pueden realizar operaciones simbolicas siempre y cuando las variables
% simbolicas se hayan declarado previamente como syms o sym()
syms a b p x
a = x^3 + 3*x^2 - 2*x + 7;
b = x^2 + x + 3;
% Se obtiene en forma factorizada el polinomio
p_fact = a*b

% En forma expandida se aplica expand(polinomio)
p_exp = expand(p_fact)

% Conversion de polinomio simbolico a numerico
p_num = sym2poly(p_exp)

% 1.5.1 Sustitucion de variables
% La sustitucion de un simbolo por otro en una expresion simbolica se puede
% realizar con el comando subs(expresion, simbolo a sustituir, nuevo simbolo)
syms x a b c
f = a*x^2 + b*x + c
g_subs = subs(f, x, -1)

% Ahora esto se puede hacer mas facil simplemente declarando como simbolica
% el nombre de la funcion y su dependencia. Es decir:
syms x a b c f(x)
f(x) = a*x^2 + b*x + c
g_x = f(-1)

% Si se quieren sustituir varios simbolos a la vez se utiliza.
% Primera opcion:
syms x a b c k
f = a*x^2 + b*x + c
g_subs = subs(f, [a b c], [1 2 k])

% Segunda opcion:
syms x a b c k f(a, b, c)
f(a, b, c) = a*x^2 + b*x + c
g_x = f(1, 2, k)

% 1.5.2 Diferenciacion

% 1.5.3 Integracion