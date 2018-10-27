% Algoritmo de Eliminacion Gaussiana

function [A,b] = gauss(A, b)
  n = length(A);
  for i = 1:1:n-1
    %Ahora pondremos 0's en la columna bajo el pivote
    pivote = A(i,i);
    
    for j = i+1:1:n
      alpha = A(j,i)/pivote;
      A(j,:) = A(j,:) - alpha.*A(i,:);
      b(j,:) = b(j,:) - alpha.*b(i,:);
    endfor
  endfor