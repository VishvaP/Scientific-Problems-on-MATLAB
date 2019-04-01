clc
clear all
a=input('matrix;');
[p d]=eig(a);
disp(a)
disp('modal marix:')
disp(p)
disp('diag matrix')
disp(d)
%how to find d
%using similarity transformation
disp(inv(p))
disp('diag matrix:')
disp(inv(p)*a*p)
%using orthogonal trans
disp('normalized modal matrix:')
disp(normc(p))
disp('diag matrix:')
disp((normc(p))'*a*normc(p))