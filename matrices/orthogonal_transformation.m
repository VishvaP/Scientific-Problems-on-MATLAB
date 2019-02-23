clear all
clc
A=input('Enter the matrix A for diagonalization: ');

%eigen vectors, P, D matrix
[P D]=eig(A);

%similarity trn for diagonalization
disp('Given matrix A:')
disp(A)
disp('Modal matrix P:')
disp(P)
disp('Normalized Modal matrix NP:')
NP=normc(P);
disp(NP)
disp('Diagonalized matrix of A:')
DM=round(NP'*A*NP,2);
disp(DM)
