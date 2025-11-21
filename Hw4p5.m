%HW4P5

format long

t=[0 1/2 1];
p=[1 exp(1/2) exp(1)];

xp=linspace(0,1,100);

figure(1);
subplot(1,2,1)
hold on
plot(xp,exp(xp));
plot(xp,pf(xp));
scatter(t,p);
hold off
subplot(1,2,2)
semilogy(xp,abs(exp(xp)-pf(xp)))

m=max(abs(exp(xp)-pf(xp)));

function px=pf(t)
    px = 1+(-3+ 4*exp(1/2)-exp(1))*t+(2-4*exp(1/2)+2*exp(1))*t.^2;
end
