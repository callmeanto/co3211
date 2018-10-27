% Ejercicio 2
display("Ejercicio 2")

Y = -5+(10*rand(250)); 
    
B = Y*transpose(Y);
lambda = min(eig(B));

A = B + (eps - lambda)*eye(250);

for i=1:1:250
  e(i) = (-1)^i;
end

b = A*transpose(e);

% Parte A

if A == transpose(A)
  display("A es simetrica")
 else 
  display("A no es simetrica")
end
  
mineig = min(eig(A));

if mineig > 0
  display("A es definida positiva")
 else 
  display("A es definida positiva")

end

% Parte B
t = 0*ones(6,1);

% Caso 1
eps1 = 10^-12;
A1 = B + (eps1 - lambda)*eye(250);
b1 = A1*transpose(e);

% tic
x1 = sistemaCrout(A1,b1);
% t(1) = toc

% tic
x2 = sistemaCholesky(A1,b1);
% t(2) = toc



% Caso 2
eps2 = 10^-8;
A2 = B + (eps2 - lambda)*eye(250);
b2 = A2*transpose(e);

% tic
x3 = sistemaCrout(A2,b2);
% t(3) = toc

% tic
x4 = sistemaCholesky(A2,b2);
% t(4) = toc



% Caso 3
eps3 = 10^-4;
A3 = B + (eps3 - lambda)*eye(250);
b3 = A3*transpose(e);

% tic
x5 = sistemaCrout(A3,b3);
% t(5) = toc

% tic
x6 = sistemaCholesky(A3,b3);
% t(6) = toc

% Parte C

% Calculamos los valores necesarios para la tabla

% Caso 1

% Minimo Autovalor
mineig1 = min(eig(A1));

% Numero de condicion de A
condicion1 = cond(A1,inf);

% Error relativo
er1 = norm(x1-e,inf)/norm(e,inf);
er2 = norm(x2-e,inf)/norm(e,inf);

% Caso 2

% Minimo Autovalor
mineig2 = min(eig(A2));

% Numero de condicion de A
condicion2 = cond(A2,inf);

% Error relativo
er3 = norm(x3-e,inf)/norm(e,inf);
er4 = norm(x4-e,inf)/norm(e,inf);


% Caso 3

% Minimo Autovalor
mineig3 = min(eig(A3));

% Numero de condicion de A
condicion3 = cond(A3,inf);

% Error relativo
er5 = norm(x5-e,inf)/norm(e,inf);
er6 = norm(x6-e,inf)/norm(e,inf);

Matriz = {'A1';'A2';'A3'};
MinAutovalor = [mineig1;mineig2;mineig3];
Condicion = [condicion1;condicion2;condicion3];

Sistema = {'Crout A1';'Cholesky A1';'Crout A2';'Cholesky A2';'Crout A3';'Cholesky A3'};
ErrorRelativo = [er1;er2;er3;er4;er5;er6;];
TiempoCPU = [t(1);t(2);t(3);t(5);t(5);t(6)];

T = table(Matriz,MinAutovalor,Condicion,'VariableNames',{'Matriz','MinAutovalor','Condicion'})

T2 = table(Sistema,ErrorRelativo,TiempoCPU,'VariableNames',{'Sistema','ErrorRelativo','TiempoCPU'})
