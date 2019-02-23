clear all
clc
syms t
x=input('Enter the equally spaced values of x: ');
y=input('Enter the values of y=f(x): ');
m=input('Enter the number of harmonics required: ');
n=length(x);a=x(1);b=x(n);
h=x(2)-x(1);
L=(b-a+h)/2;
theta=pi*x/L;
a0=(2/n)*sum(y);
Fx=a0/2; x1=linspace(a,b,100);
for i=1:m
figure
an=(2/n)*sum(y.*cos(i*theta));
bn=(2/n)*sum(y.*sin(i*theta));
Fx=Fx+an*cos(i*pi*t/L)+bn*sin(i*pi*t/L) ;
Fx=vpa(Fx,4);
Fx1=subs(Fx,t,x1);
plot(x1,Fx1);
hold on
plot(x,y);
title(['Fourier Series with ',num2str( i ),'harmonics'])
legend('Fourier Series', 'Function Plot')
hold off;
end
disp(strcat('Fourier series with', num2str(i),'harmonics is:',char(Fx)));
