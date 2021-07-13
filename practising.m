clear;close all;clc
r=1;
k=1;
alfa=1;
beta=exp(1)^4;
a=0;
b=2;
N=100;
h=(b-a)/N;
x=a:h:b;
f= @(x) -exp(2.*x);
A = tridiag(N-1,-1-(r*h)/2,2+k*h^2,-1+(r*h)/2);
pene = x(2:end-1)';
mierda = zeros(N-1,1);
mierda(1)= (2+k*h^2)*alfa;
mierda(end)= (-1+(r*h)/2)*beta;
z = h^2.*f(pene) - mierda;

y = A\z;
ynew = zeros(1,N+1);
ynew(1)=alfa;
for i=2:length(ynew)-1
  ynew(i) = y(i-1);
endfor
ynew(end)=beta;
plot(x,ynew,'g');hold on;grid on
g = @(x) exp(2.*x);
plot(x,g(x),'r')