clear all
clc
syms c1 c2 x m 
F=input('enter coefficients [a,b,c]');
f=input('enter RHS function f(x):');
a=F(1);b=F(2);c=F(3);
AE=a*m^2+b*m+c; %AE
m=solve(AE);
m1=m(1);
m2=m(2);
%based on type of roots, choose formula
D=b^2-4*a*c;
if(D>0) %real and different roots
    y1=exp(m1*x);
    y2=exp(m2*x);
elseif (D==0)   %real and equal roots
    y1=exp(m1*x);
    y2=exp(m1*x);
else %complex roots
    alpha=real(m1);
    beta=imag(m1);
    y1=exp(alpha*x)*cos(beta*x);
    y2=exp(alpha*x)*sin(beta*x);
end
yc=c1*y1+c2*y2;   %CF
 
%to find PI by method of  variation of paraeters
fx=f/a;
W=y1*diff(y2,x)-y2*diff(y1,x);
u=int(-y2*fx/W,x);
v=int(y1*fx/W,x);
yp=y1*u+y2*v;
y_gen=yc+yp;
y=simplify(y_gen);
disp('The General Solution is ');
disp(y);
