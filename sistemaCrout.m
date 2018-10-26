function x = sistemaCrout(A,b)

    n = length(A);
    Lu = LU(A);
    L = tril(Lu);
    U = triu(Lu,-1) + eye(n);
    
    y = sust_atras(L,b);
    x = sust_adel(U,y);
    
endfunction