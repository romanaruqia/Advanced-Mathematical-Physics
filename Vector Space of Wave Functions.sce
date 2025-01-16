clc;clear;
x=poly(0,"x")
h_cut=1.05*10^-34 //h_cut=h/2pi, units in Joule-sec
A=x //Wavefunction

s=input("Enter 1 or 2 to choose function as fx=x or fx=x^3, s=")
select s
case 1
    fx=x //First wavefunction
case 2
    fx=x^3 // Second wavefunction
end

fx_p=fx*(-%i*h_cut)*derivat(A)
p_fx=(-%i*h_cut)*derivat(fx*A)
commutator=(fx_p-p_fx)
disp("[fx,p]=")
disp(commutator)
disp("The result contains an extra x because chosen wavefunction is A=x")
