% Proyecto 1
% Antonella Requena 15-11196

display("Proyecto 1 - Antonella Requena")

% Cargamos datos del archivo

data = load("CO3211_proy1datos");

A1 = data.A1;
A2 = data.A2;
A3 = data.A3;
A4 = data.A4;
A5 = data.A5;

B1 = [0.641, 0.242;0.321, 0.121];
B2 = [10,-7,0;-3,2,6;5,-1,5];


% Parte 1 
% Calculo de cota minima para condicion de A a partir de vectores
% aleatorios

% Generamos los vectores aleatorios
% utilizando una distribucion normal


display("PARTE 1 - VECTORES ALEATORIOS GENERADOS CON DISTRIBUCION NORMAL")

% Cota minima de condicion de Ai para norma 1
printf('\n')
display("Cota minima de condicion de Ai para norma 1")
printf('\n')

cota1_1 = busquedaCota1(A1)
cota2_1 = busquedaCota1(A2)
cota3_1 = busquedaCota1(A3)
cota4_1 = busquedaCota1(A4)
cota5_1 = busquedaCota1(A5)
cota6_1 = busquedaCota1(B1)
cota7_1 = busquedaCota1(B2)


% Numero de condicion de Ai
printf('\n')
display("Numero de condicion de Ai en norma 1")
condicion1_1 = cond(A1,1)
condicion2_1 = cond(A2,1)
condicion3_1 = cond(A3,1)
condicion4_1 = cond(A4,1)
condicion5_1 = cond(A5,1)
condicion6_1 = cond(B1,1)
condicion7_1 = cond(B2,1)

% Cota minima de condicion de Ai para norma infinito
printf('\n')
display("Cota minima de condicion de Ai para norma infinito") 
cota1_inf = busquedaCotainf(A1)
cota2_inf = busquedaCotainf(A2)
cota3_inf = busquedaCotainf(A3)
cota4_inf = busquedaCotainf(A4)
cota5_inf = busquedaCotainf(A5)
cota6_inf = busquedaCotainf(B1)
cota7_inf = busquedaCotainf(B2)

printf('\n')
display("Numero de condicion de Ai en norma infinito")
condicion1_inf = cond(A1,inf)
condicion2_inf = cond(A2,inf)
condicion3_inf = cond(A3,inf)
condicion4_inf = cond(A4,inf)
condicion5_inf = cond(A5,inf)
condicion6_inf = cond(B1,inf)
condicion7_inf = cond(B2,inf)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Parte 2
% Calculo de cota minima para condicion de A a partir de vectores
% aleatorios con elementos 1 o -1
printf('\n')
display("PARTE 1 - VECTORES ALEATORIOS -1 Y 1")

% Cota minima de condicion de Ai para norma 1
printf('\n')
display("Cota minima de condicion de Ai para norma 1")
printf('\n')

cotaOnes1_1 = busquedaCotaOnes1(A1)
cotaOnes2_1 = busquedaCotaOnes1(A2)
cotaOnes3_1 = busquedaCotaOnes1(A3)
cotaOnes4_1 = busquedaCotaOnes1(A4)
cotaOnes5_1 = busquedaCotaOnes1(A5)
cotaOnes6_1 = busquedaCotaOnes1(B1)
cotaOnes7_1 = busquedaCotaOnes1(B2)


% Cota minima de condicion de Ai para norma infinito
printf('\n')
display("Cota minima de condicion de Ai para norma infinito") 
cotaOnes1_inf = busquedaCotaOnesinf(A1)
cotaOnes2_inf = busquedaCotaOnesinf(A2)
cotaOnes3_inf = busquedaCotaOnesinf(A3)
cotaOnes4_inf = busquedaCotaOnesinf(A4)
cotaOnes5_inf = busquedaCotaOnesinf(A5)
cotaOnes6_inf = busquedaCotaOnesinf(B1)
cotaOnes7_inf = busquedaCotaOnesinf(B2)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Parte 3

%Calcular cota inferior para condicion de A mediante la siguiente tecnica:
%se resuelve el sistema Ax = b donde bi = 1/n para todo i; 
%luego resolver A'z = y donde yi = 1 si xi >= 0, y yi = −1 si xi < 0

printf('\n')
display("PARTE 3 - COTA INFERIOR CON UNICAMENTE NORMA DE X")

% Para A1

% Creamos el vector b para cada matriz Ai 
b1 = GenerarVectorB(length(A1));

% Resolvemos el sistema Ax=b
x1 = sistemaLU(A1,b1);
y1 = GenerarVectorY(length(A1),x1);

% Resolvemos el sistema A'z=y
z1 = sistemaLU(transpose(A1),y1);
k1 = max(abs(z1));


% Modificamos b
b1 = 0*ones(length(A1),1);
b1(k1) = 1;

% Resolvemos el sistema Ax=b de nuevo
x1 = sistemaLU(A1,b1);


% Para A2

% Creamos el vector b para cada matriz Ai 
b2 = GenerarVectorB(length(A2));

% Resolvemos el sistema Ax=b
x2 = sistemaLU(A2,b2);
y2 = GenerarVectorY(length(A2),x2);

% Resolvemos el sistema A'z=y
z2 = sistemaLU(transpose(A2),y2);
k2 = max(abs(z2));

% Modificamos b
b2 = 0*ones(length(A2),1);
b2(k2) = 1;

% Resolvemos el sistema Ax=b de nuevo
x2 = sistemaLU(A2,b2);


% Para A3

% Creamos el vector b para cada matriz Ai 
b3 = GenerarVectorB(length(A3));

% Resolvemos el sistema Ax=b
x3 = sistemaLU(A3,b3);
y3 = GenerarVectorY(length(A3),x3);

% Resolvemos el sistema A'z=y
z3 = sistemaLU(transpose(A3),y3);
k3 = max(abs(z3));

% Modificamos b
b3 = 0*ones(length(A3),1);
b3(k3) = 1;

% Resolvemos el sistema Ax=b de nuevo
x3 = sistemaLU(A3,b3);


% Para A4

% Creamos el vector b para cada matriz Ai 
b4 = GenerarVectorB(length(A4));

% Resolvemos el sistema Ax=b
x4 = sistemaLU(A4,b4);
y4 = GenerarVectorY(length(A4),x4);

% Resolvemos el sistema A'z=y
z4 = sistemaLU(transpose(A4),y4);
k4 = max(abs(z4));

% Modificmos b
b4 = 0*ones(length(A4),1);
b4(k4) = 1;

% Resolvemos el sistema Ax=b de nuevo
x4 = sistemaLU(A4,b4);


% Para A5

% Creamos el vector b para cada matriz Ai 
b5 = GenerarVectorB(length(A5));

% Resolvemos el sistema Ax=b
x5 = sistemaLU(A5,b5);
y5 = GenerarVectorY(length(A5),x5);

% Resolvemos el sistema A'z=y
z5 = sistemaLU(transpose(A5),y5);
k5 = max(abs(z5));

% Modificamos b
b5 = 0*ones(length(A5),1);
b5(k5) = 1;

% Resolvemos el sistema Ax=b de nuevo
x5 = sistemaLU(A5,b5);


% Para B1
% Creamos el vector b para cada matriz Ai 
b6 = GenerarVectorB(length(B1));

% Resolvemos el sistema Ax=b
x6 = sistemaLU(B1,b6);
y6 = GenerarVectorY(length(B1),x6);

% Resolvemos el sistema A'z=y
z6 = sistemaLU(transpose(B1),y6);
k6 = max(abs(z6));

% Modificamos b

b6 = 0*ones(length(B1),1);
b6(k6) = 1;

% Resolvemos el sistema Ax=b de nuevo
x6 = sistemaLU(B1,b6);


% Para B2
% Creamos el vector b para cada matriz Ai 
b7 = GenerarVectorB(length(B2));

% Resolvemos el sistema Ax=b
x7 = sistemaLU(B2,b7);
y7 = GenerarVectorY(length(B2),x7);

% Resolvemos el sistema A'z=y
z7 = sistemaLU(transpose(B2),y7);
k7 = max(abs(z7));

b7 = 0*ones(length(B2),1);
b7(k7) = 1;

% Resolvemos el sistema Ax=b de nuevo
x7 = sistemaLU(B2,b7);

printf('\n')
display("Cota inferior de condicion de Ai con norma 1")
% Calculo de la cota inferior de condicion de A
cota_1 = norm(A1,1)*norm(x1,1) 
cota_2 = norm(A2,1)*norm(x2,1) 
cota_3 = norm(A3,1)*norm(x3,1) 
cota_4 = norm(A4,1)*norm(x4,1) 
cota_5 = norm(A5,1)*norm(x5,1) 
cota_6 = norm(B1,1)*norm(x6,1) 
cota_7 = norm(B2,1)*norm(x7,1) 


