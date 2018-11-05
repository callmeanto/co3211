% Procedimiento para buscar la cota inferior mas cercana a la condicion de una matriz
% a partir de un vector aleatorio
% el procedimiento consiste en calcular un vector aleatorio con distribucion normal
% y calcular el valor de la cota correspondiente, y si esa es mayor que la cota
% calculada en la iteracion anterior, entonces esta sera la nueva cota mayor,
% este proceso se repetira 10000 veces y al final se retorna la mayor cota de 
% los 10000 vectores aleatorios calculados

% la cota es en norma 1
function cota_infimo = busquedaCota1(A)
  y = randn(length(A),1);  % Inicializamos vector infimo aleatorio con
                           % distribucion normal
  z = sistemaLU(A,y);      % Solucion del sistema
  cota_infimo = norm(A,1)*(norm(z,1)/norm(y,1)); % Inicializamos cota infima
  for i=1:1:10000
    x = randn(length(A),1);
    w = sistemaLU(A,y);
    cota_actual = norm(A,1)*(norm(w,1)/norm(x,1));
    
    if ((cota_actual > cota_infimo) && (cota_actual < cond(A,1)))
      cota_infimo = cota_actual;   % Se actualiza valor de la cota
    end 
  end
endfunction