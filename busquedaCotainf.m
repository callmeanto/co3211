% Procedimiento para buscar la cota inferior mas cercana a la condicion de una matriz
% a partir de un vector aleatorio
% el procedimiento consiste en calcular un vector aleatorio con distribucion normal
% y calcular el valor de la cota correspondiente, y si esa es mayor que la cota
% calculada en la iteracion anterior, entonces esta sera la nueva cota mayor,
% este proceso se repetira 10000 veces y al final se retorna la mayor cota de 
% los 10000 vectores aleatorios calculados

% la cota es en norma infinito
function cota_infimo = busquedaCotainf(A)
  y = randn(length(A),1);  % Inicializamos vector infimo
  z = sistemaLU(A,y);   % Solucion del sistema
  cota_infimo = norm(A,inf)*(norm(z,inf)/norm(y,inf)); % Inicializamos cota infima
  for i=1:1:10000
    x = randn(length(A),1);
    w = sistemaLU(A,y);
    cota_actual = norm(A,inf)*(norm(w,inf)/norm(x,inf));
    
    if ((cota_actual > cota_infimo)  && (cota_actual < cond(A,inf)))
      cota_infimo = cota_actual;   % Se actualiza valor de la cota
    end 
  end
endfunction