%=======================================
clear all, close all, clc
help gauss

A=[ [3 4 -5 1 -10];[0 1 1 -2 -1];[0 0 4 -5 3];[0 0 0 2 2] ]; N=4;

disp('MATRIZ AUMENTADA DO SISTEMA:')
disp(num2str(A));

N1=N+1; K=N-1;
X(N)=A(N,N1)/A(N,N);
for I=1:K
    L=N-I;
    X(L)=A(L,N1);
    M=L+1;
    for J=M:N
        X(L)=X(L)-A(L,J)*X(J);
    end
    X(L)=X(L)/A(L,L);
end

disp('   '); disp('VETOR SOLUCAO:'); disp(num2str(X)); disp('   ');