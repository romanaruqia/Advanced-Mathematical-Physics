//Equation of Geodesics in Euclidean Geometry
clc;clear;
x1=input("Input x coordinate of point A")
y1=input("Input y coordinate of point A")
x2=input("Input x coordinate of point B")
y2=input("Input y coordinate of point B")
x=[0,0.1,10]
m=(y2-y1)/(x2-x1);
y=y1+m*(x-x1);
scf()
xlabel('x-coordinates','fontsize',5)
ylabel('y-coordinates','fontsize',5)
title('Geodesic in Euclidean Geometry','fontsize',5)
a=get("current_axes")
//get the handle of the newly created axes
a.font_size=4
t=get("hdl")
//get the handle of the newly created object
t.font_size=5
plot(x,y,'linewidth',3)
//Plotting of cylinder
a=5
theta=linspace(0,2*%pi,30)
z=linspace(0,30,30)
[theta,z]=meshgrid(theta,z)
x=a*cos(theta);
y=a*sin(theta);
scf()
surf(x,y,z,'facecolor','green','edge','white')
//Equation of Geodesic (helix) in cylindrical coordinate system
theta1=input("Input angular coordinate (in degrees) of point A")
z1=input("Input z coordinate of point A")
theta2=input("Input angular coordinate (in degrees) of point B")
z2=input("Input z coordinate of point B")
t1=theta1*%pi/180;
t2=theta2*%pi/180;
t=linspace(t1,t2,100)
z=z1+(z2-z1)*(t-t1)/(t2-t1);
'System','fontsize',5
param3d(a*cos(t),a*sin(t),z)
