%HW4P4

format long

t=[0 1 2 3];
p=[1 1/2 1/3 1/4];

xp=linspace(0,3,100);

plot(xp,f(xp)-pf(xp));

function px=pf(t)
    px = 1- t./2+t.*(t-1)./6-t.*(t-1).*(t-2)./24;
end

function ft = f(t)
    ft = (1+t).^-1;
end