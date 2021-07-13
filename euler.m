function y = euler(f,tspan,y0,N)
  h = (tspan(2)-tspan(1))/N;
  xx = tspan(1):h:tspan(2);
  y(1)=y0;
  for i=2:length(xx)
    y(i) = y(i-1) + h * f(xx(i-1),y(i-1));
  endfor
endfunction
