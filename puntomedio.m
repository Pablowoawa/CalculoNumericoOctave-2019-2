function resultado=puntomedio(a,b,n,f)
int = linspace(a,b,n+1);
h = (b - a)/n;
s = 0;

for i=1:n
  s = s + f((int(i)+int(i+1))/2);
endfor

resultado = h*s;
endfunction