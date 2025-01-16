clc;clear;
h_cut=1.05457*10^-34;
L=input("Enter the width of the potential well L (in m)=");
M=input("Enter mass of particle M (in kg)=");
n=250;
N=(2*n)+1;
x1=0; s=(L-x1)/N;
EV=6.242*10^18;
//hamiltonian
T=zeros(N-1,N-1);
for i=1:(N-1);
    x1=x1+s;
    T(i,i)=2;
    if(i<(N-1));
        T(i,i+1)=-1;
        T(i+1,i)=-1
    end
end
H=(T*h_cut^2*EV/(2*M*s^2));
//eigenvalues and wavefunction
eigenvalues=spec(H);
disp("The eigenvalues(eV) of three lowest states obtained by FDM are ");
disp(eigenvalues(1:3));
[U,z]=spec(H);
//plotting wavefunction
x=linspace(s,L,N-1)
xlabel('x coordinate (!0^-10m)');
ylabel('Wavefunction(a.u.)')
title('Graph of wavefunction for three lowest order mode');
a=get("current_axes");
t=get("hdl");
plot(x*10^10,U(:,1)'./max(U(:,1)),'r');
plot(x*10^10,U(:,2)'./max(U(:,2)),'b');
plot(x*10^10,U(:,3)'./max(U(:,1)),'g');
hl=legend(['Ground state';'I excited state';'II excited state']);
disp("the eigenvalues of three lowest states obtained by analytical results are ");
for j=1:3
    E(j)=j^2*%pi^2*h_cut^2*EV/(2*M*L^2);
    disp(E(j))
end
