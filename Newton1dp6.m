% Program Newton1D.m
%
% Pre -- f : function f(x) of a single variable
% df : the derivative of f(x)
% xold : initial guess
% M : maximum number of iterations
% TOL : nonnegative number
%
% Post -- x : An approximate zero of f
%
%
format long

M=30;
TOL=0.5*10^-6;
list=zeros(M,4);

%Part a
% xp=1.93375376282702;
% xold=4;

%Part b
xp=1;
xold=2;

x0=fzero(@f,xold);

for k = 1:M
    fx = f(xold);
    dfx = df(xold);
    x = xold - fx/dfx;
    list(k,:,:,:)=[k xold norm(xp-xold) 0];
    if abs(x-xold) < TOL
        break;
    end
%iteration is terminated if |x_k - x_{k-1}| < TOL
xold=x;
end

for i=1:M
    list(i,4)=log(list(i+1,3)/list(i+2,3))/log(list(i,3)/list(i+1,3));
end

%Part a
% function fx=f(x)
%    fx=x^2-4*sin(x);
% end
% 
% function dfx=df(x)
%    dfx=2*x-4*cos(x);
% end

%Part b
function fx=f(x)
    fx=x^2-2*x+1;
end

function dfx=df(x)
    dfx=2*x-2;
end