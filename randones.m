% Generamos vectores aleatorios con elementos -1 o 1
% Generador pseudoaleatorio
function x = randones(n)
  for i=1:1:n-2                  % En este ciclo generamos un vector
    x(i:i+2) = randperm(3) - 2;  % permutacion, restamos 2 para que
   end                           % sus elementos queden entre -1 y 1
  for i=1:1:n                    % En este ciclo esta la verificacion
    if x(i) == 0                 % si algun elemento es 0, se cambia
      x(i) = (-1)^i;             % por -1^i donde i es la posicion en la que esta
    end
  end
endfunction