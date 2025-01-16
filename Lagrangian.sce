clc;clear;
L= input ('Enter the length of pendulum (m) L =')
g=9.8
k=g/L
theta = input ( 'Enter the initial angular displacement(radian) at (t=0) =');
dt= input ( 'Enter initial d_theta/dt (radian) at (t=0) = ') ;
//Function declaration for ODE
t= linspace (0 ,10 ,200)
function dx=f(t,x,k)
    dx (1)=x (2)
    dx (2)=-k* sin (x(1))
endfunction
//Solving second order differential equation by ODE solver
y= ode ([theta; dt],0,t,f)
ysol =y(1 ,:)
ydotsol = y(2 ,:)
//Plotting the solution
scf ()
title ( "Solution of Simple Pendulum" , "fontsize" ,5)
ylabel ( "Solution −−−>" , "fontsize" ,5)
xlabel ( "t (sec) −−−>" , "fontsize" ,5)
a= get("current_axes")
//get the handle of newly created axes
a. font_size=4
t= get("hdl")
//get the handle of newly created object
t. font_size =5
plot (t,ysol , 'r' , 'linewidth' ,3)
plot (t, ydotsol , 'k' , 'linewidth' ,3)
h1 = legend ([ 'theta';'d\theta/theta'])
h1.font_size=3
