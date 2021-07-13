function v = coef2(N)
  v = zeros(1,N);  %vector vacío
  for k = 1:length(v)
    v(k) = (-1).^(k+1) * (10/11).^k;   %agregando los coeficientes
  endfor
  v = fliplr(v);
  v(end+1) = 0 ; 
endfunction
