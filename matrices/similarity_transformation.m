clear all
clc
A=input('Enter the matrix A for diagonalization: ');

%eigen vectors
[P D]=eig(A);

%similarity trn for diagonalization
disp('Given matrix A:')
disp(A)
disp('Modal matrix P:')
disp(P)
% P is system generated matrix
disp('Inverse of P:')
IP=inv(P);
disp(IP)

disp('Diagonalized matrix of A:')
DM=round(IP*A*P,2);
disp(DM)
