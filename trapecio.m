function resultado = trapecio(a,b,n,f)
h = (b-a)/n;
s = 0;
int = linspace(a,b,n+1);

for i = 1:n
  s = s + f(int(i)) + f(int(i+1));
endfor

resultado = (h/2)*s;
endfunction
