clear;close all;clc
%Método de diferencias finitas, reemplazar valores.
r=1;
k=1;
f=@(x) -exp(2*x);
a=0;
b=2;
N=200;
h=(b-a)/N;
x=a:h:b;
alfa=1;
beta=exp(1)^4;
A=tridiag(N-1,-1-(r*h)/2,2+k*h^2,-1+(r*h)/2);
xnew=x(2:end-1)';
pene = zeros(N-1,1);
pene(1) = (2+k*h^2)*alfa;
pene(end) = (-1+(r*h)/2)*beta;
z=h^2*f(xnew) - pene;
y=A\z;
ynew=zeros(1,N+1);
ynew(1)=alfa;
for i=2:N
  ynew(i)=y(i-1);
endfor
ynew(end)=beta;
plot(x,ynew)