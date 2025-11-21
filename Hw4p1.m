%HW4P1

format long

t=[0 0.5 1 1.5 2];
p=[0 0.19 0.26 0.29 0.31];

t0=t.^0;
t2=t.^2;
t3=t.^3;
t4=t.^4;

tm=[t0' t' t2' t3' t4'];

yp=tm\p';
xp=linspace(0,2,100);

a=pf(yp,0.7);

hold on
plot(xp,pf(yp,xp));
scatter(t,p);
hold off

function px=pf(y,t)
    px=y(1)+y(2)*t+y(3)*t.^2+y(4)*t.^3+y(5)*t.^4;
end