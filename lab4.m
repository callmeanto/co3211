
% Laboratorio 4
% Antonella Requena 15-11196

% Ejercicio 1
display("Ejercicio 1")


for i=1:1:1000
    for j=1:1:1000
        if i==j
            A(i,j)=-5000;
        else
            A(i,j)= min(i,j);
        end
    end
end

b = [1:1:1000];

tic
A1,b1 = gauss(A,b);
x1 = sust_atras(A,b);
toc

tic
x2 = sistemaCrout(A,b);
toc

% Tiempo para x1

% Tiempo para x2

% Ejercicio 2
display("Ejercicio 2")

for i=1:1:250
    for j=1:1:250
       A(i,j)= -5+10*rand(250); 
    end
end

B = Y*transpose(Y);
lambda = min(eig(B));

A = B + (eps - lambda)*eye(250);

for i=1:1:250
  e(i) = (-1)^i;
end

b = A*e;

% Parte A

if A == transpose(A)
   A
   transpose(A)
  display("A es simetrica")
 else 
  display("A no es simetrica")
end
  
 for i=1:1:250
  x(i) = rand(0,1);
end

dp = (transpose(x)*A)*x;

if dp > 0
  dp
  display("A es definida positiva")
 else 
  display("A es definida positiva")

end

% Parte B
t = []
% Caso 1
eps1 = 10^-12;
A1 = B + (eps1 - lambda)*eye(250);
b1 = A1*e;

tic
x11 = sistemaCrout(A1,b1);
t(1) = toc

tic
x12 = sistemaCholesky(A1,b1);
t(2) = toc



% Caso 2
eps2 = 10^-8;
A2 = B + (eps2 - lambda)*eye(250);
b2 = A2*e;

tic
x21 = sistemaCrout(A2,b2);
t(3) = toc

tic
x22 = sistemaCholesky(A2,b2);
t(4) = toc



% Caso 3
eps3 = 10^-4;
A3 = B + (eps3 - lambda)*eye(250);
b3 = A3*e;

tic
x31 = sistemaCrout(A3,b3);
t(5) = toc

tic
x32 = sistemaCholesky(A3,b3);
t(6) = toc

% Parte C


