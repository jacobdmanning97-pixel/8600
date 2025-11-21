% Program Newton.m
%
% Pre -- F : function F(x) of a vector variable X
% JF : the Jacobian of F(x)
% Xold : initial guess
% M : maximum number of iterations
% TOL : nonnegative number
%
% Post -- X : An approximate zero of F
%
format long

Xold=[-0.5;1.4];
M=50;
TOL=10^-6;
list=zeros(M,2);
xp=[0;1];

for k=1:M
    list(k,1)=norm(Xold-xp);
    FX = F(Xold);
    JFX = JF(Xold);
    S = -JFX\FX;
    X = Xold + S;
    if norm(X-Xold) < TOL
        break
    end
%iteration is terminated if ||X^k - x^{k-1}||_2 < TOL
    Xold=X;
end

for i=1:M
    list(i,2)=log(list(i+1,1)/list(i+2,1))/log(list(i,1)/list(i+1,1));
end

function F=F(x)
    x1=x(1);
    x2=x(2);
    F=[x2^3*x1+3*x2^3-7*x1-3;sin(x2*exp(x1)-1)];
end

function JF=JF(x)
    x1=x(1);
    x2=x(2);
    JF=[x2^3-7 3*x2^2*x1+9*x2^2;cos(x2*exp(x1)-1)*x2*exp(x1) cos(x2*exp(x1)-1)*exp(x1)];
end
