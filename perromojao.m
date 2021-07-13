function p = perromojao(N)
f = @(x) exp(x);
x = linspace(-1,1,N+1);
y = zeros(1,length(x));

for i=1:length(x)    %xd
  y(i) = f(x(i));
endfor

p = polyfit(x,y,length(x)-1);