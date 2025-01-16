clc;clf;
clear;
A=[1+2*%i,1-3*%i;2-5*%i,3-2*%i];
disp(A,"A:");
P=A'
disp(P,"Complex conjugate of A:");
H=A+P;
disp(H,"Hermitian Matrix is ");
[v1,v2]=spec(H);
disp(spec(H),"The Eigen-values of matrix H are:");
disp(v1,"The corresponding Eigenvector of matrix H is:");
a=[0.7169820+0.4779880*%i;-0.5074095];
b=[0.4221902+0.2814601*%i;0.8617051];
p=b'
S=p*b
disp(S,"The Orthogonal matrix is:");
T=p*a
disp(T)