%HW5p4
format long

xp=linspace(1,2,100);
h=0.1;
n=h^-1;

list=zeros(n,1);
tl=zeros(n,1);

y0=[0;1;3];

c=h*6^-1;

for i=1:n
    t=1+i*h;

    k1=f(y0,t);
    k2=f(y0+0.5*h*k1,t+0.5*h);
    k3=f(y0+0.5*h*k2,t+0.5*h);
    k4=f(y0+h*k3,t+h);

    y1=y0+c*(k1+2*k2+2*k3+k4);

    list(i)=y1(1,1);
    tl(i)=t;

    y0=y1;
end

list

hold on
scatter(tl,list)
plot(xp,pf(xp))
hold off

function px=pf(x)
    px = -x.^2+x.*cos(log(x))+x.*sin(log(x))+x.^3.*log(x);
end

function fx=f(v,x)
    A=[0 1 0;0 0 1;4*x.^-3 -3*x.^-2 x.^-1];
    b=[0;0;5*log(x)+9];
    fx=A*v+b;
end