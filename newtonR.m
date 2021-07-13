function xNR = newtonR(f,df,tolNR,x0)
itNR = 0;           %CONTADOR DE ITERACIONES
while true
    itNR = itNR + 1;
    x1 = x0 - f(x0)/df(x0);
    if abs(x0 - x1) < tolNR
        break;
    end
    x0 = x1;
end
xNR = x1;
display(itNR)
endfunction