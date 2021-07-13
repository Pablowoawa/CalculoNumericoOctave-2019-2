function m=tridiag(n,a,b,c)
  m=zeros(n);
  for i=1:n
    for j=1:n
      if i==j
        m(i,j)=b;
      elseif i==j+1
        m(i,j)=a;
      elseif i==j-1
        m(i,j)=c;
      end
    endfor
  endfor
endfunction
