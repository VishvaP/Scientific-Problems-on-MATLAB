clear all
clc
syms t s y(t) Y;
f=input('enter coefficients [a,b,c]:');
a=f(1);b=f(2);c=f(3);
nh=input('enter non homogenious f(x):');
ic=input('enter init condition [y0, dy0]');
y0=ic(1);dy0=ic(2);
eq=a*diff(y(t),2)+b*diff(y(t),1)+c*y(t)-nh;
lty=laplace(eq);
lty=subs(lty,{'laplace(y(t),t,s)','y(0)','D(y)(0)'},{Y,y0,dy0});
eq=collect(lty,Y);
Y=simplify(solve(eq,Y));
yt=simplify(ilaplace(Y,s,t));
disp('solution of eq:')
disp(yt)
ezplot(yt,[y0,y0+2])