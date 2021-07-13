function resultado=simpson(a,b,n,f)
s = 0;
h = (b-a)/n;
int = linspace(a,b,n+1);

for i=2:n+1
  s = s + f(int(i-1)) + 4*f((int(i-1)+int(i))/2) + f(int(i));
endfor

resultado = (h/6) * s;

endfunction