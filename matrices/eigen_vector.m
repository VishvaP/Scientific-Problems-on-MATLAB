clear all
clc
A=input('Enter the matrix A: ');

%to find char eqn
cf=poly(A);
disp('Char eqn: ');
disp(cf);

%to find eigen values
EV=eig(A);
disp('Eigen values: ');
disp(EV);

%eigen vectors
[P D] = eig(A);
disp('Eigen Vectors:')
disp(P)
