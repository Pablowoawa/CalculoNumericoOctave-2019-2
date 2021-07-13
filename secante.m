function xS = secante(f,x0,x1,tolS)
itS = 0;            %CONTADOR DE ITERACIONES
while true
    itS = itS + 1;
    x2 = x1 - f(x1)*((x0 - x1)/(f(x0) - f(x1)));
    if abs(x2 - x1) < tolS
        break;
    end
    x0 = x1;
    x1 = x2;
end
xS = x2;
display(itS)
endfunction