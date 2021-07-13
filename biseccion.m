function xB = biseccion(f,a,b,tolB)
itB = 0;            %CONTADOR DE ITERACIONES
while abs(a - b) > tolB
    itB = itB + 1;
    c = (a+b)/2;
    if f(a)*f(c) > 0
        a = c;
    elseif f(b)*f(c) > 0
        b = c;
    else
        break;
    end
end
xB = [a b];
display(itB)
endfunction