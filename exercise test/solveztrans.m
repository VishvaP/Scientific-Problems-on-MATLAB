clc
clear all
syms n y(n) Y
f=input('enter coeff :');
a=f(1);b=f(2);c=f(3);
nh=input('enter hn:');
ic=input('enter init:');
y0=ic(1);y1=ic(2);
eq=a*y(n+2)+b*y(n+1)+c*y(n)-nh;
zty=ztrans(eq);
zty=subs(zty,{'ztrans(y(n),n,z)','y(0)','y(1)'},{Y,y0,y1});
eq=collect(zty,Y);
Y=solve(eq,Y);
yn=iztrans(Y)
yn=subs(yn,n,0:20);
stem(yn)