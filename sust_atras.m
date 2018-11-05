% Sustitucion hacia atras

function x = sust_atras(A,b)
  n=length(A);
  x=nan*ones(n,1);
  x(n)=b(n)/A(n,n);
  
  for i=n-1:-1:1
    suma=0;
    for j=i+1:1:n
      suma=suma+A(i,j)*x(j);
    end
    x(i)=(b(i)-suma)/A(i,i);
  end
  x = transpose(x);
endfunction