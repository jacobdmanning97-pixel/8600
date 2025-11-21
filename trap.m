%Hw5P6Trap
format long

tra([0,2],2169)

quad(@px,0,2)

function pf=px(x)
    pf=exp(2*x).*sin(3*x);
end

function t=tra(int,M)
    a=int(1);
    b=int(2);
    t=0;
    h=(b-a)/M;
    x0=a;
    for k=1:M
        x1=x0+h;
        t=t+0.5*h*(px(x1)+px(x0));
        x0=x1;
    end
end