function v = california(N)
f = @(x) exp(x);
v = zeros(1,N+1);

for k=0:N
    v(k+1) = 1/factorial(k);
endfor

v = fliplr(v);