%Hw5P6Simp
format long

sim([0,2],27)

quad(@px,0,2)

function pf=px(x)
    pf=exp(2*x).*sin(3*x);
end

function s=sim(int,M)
    a=int(1);
    b=int(2);
    s=0;
    h=(b-a)/M;
    x0=a;
    for k=1:M
        x1=x0+h;
        s=s+h/6*(px(x0)+4*px(0.5*(x0+x1))+px(x1));
        x0=x1;
    end
end