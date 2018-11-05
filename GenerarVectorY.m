% procedimiento para generar vectores Yi de la parte 3 de este proyecto
function y = GenerarVectorY(n,x)
  for i=1:1:n
    if x(i) >= 0
      y(i) = 1
    else 
      y(i) = -1
    end
  end
end