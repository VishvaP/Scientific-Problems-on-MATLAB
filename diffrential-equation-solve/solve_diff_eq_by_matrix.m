clc
clear
syms t C1 C2
A=input('Enter A: ');
[P,D]=eig(A);
L1=D(1);L2=D(4);
y1=C1*exp(L1*t)
y2=C2*exp(L2*t)
Y=[y1;y2]
X=P*Y;
Cond=input('Enter the initial conditions [t0, x10,x20]: ');
t0=Cond(1);x10=Cond(2);x20=Cond(3);
eq1=subs(X(1)-x10,t0);eq2=subs(X(2)-x20,t0);
[C1, C2] = solve(eq1,eq2);
X=subs(X)