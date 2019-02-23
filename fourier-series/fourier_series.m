clear all
clc
syms x
f=input('enter the function:');
i=input('enter interval in [a,b] form:')
m=input('enter number of harmonics:')
a=i(1);
b=i(2);
l=(b-a)/2;

a0=(1/l)*int(f,a,b);
fx=a0/2;

for n=1:m
    figure;
    an(n)=(1/l)*int(f*cos(n*pi*x/l),x,a,b);
    bn(n)=(1/l)*int(f*sin(n*pi*x/l),x,a,b);
    fx=fx+an(n)*cos(n*pi*x/l) + bn(n)*sin(n*pi*x/l);
    fx=vpa(fx,4);
    ezplot(fx,[a,b]);
    hold on
    ezplot(f,[a,b]);
    title(['Fourier Series with ',num2str(n), ' harmonic']);
    legend('Fourier Series', 'Function Plot');
    hold off
end
disp(strcat('Fourier Series with', num2str(n), 'harmonics is: ', char(fx)))
