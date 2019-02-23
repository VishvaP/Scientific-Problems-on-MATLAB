clear all
clc
syms t s y(t) Y
dy(t)=diff(y(t));
d2y(t)=diff(y(t),2);
F = input('Input the coefficients [a,b,c]: ');
a=F(1);b=F(2);c=F(3);
nh = input('Enter the non-homogenous part f(x): ');
eqn=a*d2y(t)+b*dy(t)+c*y(t)-nh;
LTY=laplace(eqn,t,s);
IC = input('Enter the initial conditions in the form [y0,Dy(0)]: ');
y0=IC(1);dy0=IC(2);
LTY=subs(LTY,{'laplace(y(t), t, s)','y(0)','D(y)(0)'},{Y,y0,dy0});
eq=collect(LTY,Y);
Y=simplify(solve(eq,Y));
yt=simplify(ilaplace(Y,s,t));
disp('The solution of the differential equation y(t)=')
disp(yt);
ezplot(yt,[y0,y0+2]);
