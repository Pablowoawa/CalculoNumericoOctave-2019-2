function v=coeficientes(N)
  f = @(x) (10*x)/(10*x + 11);
  x = linspace(-1,1,N+1);
  y = zeros(1,length(x));
  
  for i = 1:length(x)
    y(i) = f(x(i));
  endfor
  v = polyval(x,y,length(x)-1);
endfunction
