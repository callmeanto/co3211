
% Laboratorio 4
% Antonella Requena 15-11196

% Ejercicio 1
display("Ejercicio 1")


for i=1:1:1000
    for j=1:1:1000
        if i==j
            A(i,j)=-500000;
        else
            A(i,j)= min(i,j);
        end
    end
end

b = [1:1:1000];
b = transpose(b);

A,b = gauss(A,b);

tic
x = sust_atras(A,b);
tiempo1 = toc

tic
x = sistemaCrout(A,b);
tiempo2 = toc

