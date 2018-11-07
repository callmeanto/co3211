matriz = hilb(11) + 1,025*eye(11);
x = ones(11,1);
b = matriz*x;
t = cputime;

[x,k] = gauss_seidel(matriz,b,0*ones(11,1),1500,10^-7)
printf("\n")
display("tiempo")
display(cputime-t)