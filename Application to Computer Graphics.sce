clc; clear;
//reation of an object(rectangle)
x=[0,5,5,0,0]
y=[0,0,3,3,0]
N=[x;y]

//To study shear
l=input("Enter 1,2 or 3 for shear along x-axis, y-axis or both axis, respectively:")
figure(1)
xlabel('x-coordinate','fontsize',5)
ylabel('y-ccordinate','fontsize',5)
a=get("current_axes")
//Get handle of newly created axes
a.font_size=4
t=get("hdl")
//Get handle of newly created object
t.font_size=5

select l
case 1
    //Transformation matrix for shear parallel to x-axis
    s=input("Enter value of shear s=")
    Sx=[1 s ; 0 1]
    S=Sx*N
    title('Shear parallel to x-axis','fontsize',5)
    a.data_bounds=[0,0;8,5]
case 2
    //Transformation matrix for shear parallel to y-axis
    s=input("Enter value of shear s=")
    Sy=[1 0 ; s 1]
    S=Sy*N
    title('Shear parallel to y-axis','fontsize',5)
    a.data_bounds=[0,0;6,8]
case 3
    //Transformation matrix for shear in x and y direction
    sx=input("Enter value of shear in x-direction sx=")
    sy=input("Enter value of shear in y-direction sy=")
    Sxy=[1 sx ; sy 1]
    S=Sxy*N
    title('Shear in x and y direction','fontsize',5)
    a.data_bounds=[0,0;6,8]
end
plot(x,y,'linewidth',3)
plot(S(1,:),S(2,:),'-r','linewidth',5)
hl=legend(['old coordinates','new coordinates'])
h1.font_size=3



//To study strain
p=input("Enter 1 or 2 for strain in x- axis or y-axis, respectively:")
figure(2)
xlabel('x-coordinate','fontsize',5)
ylabel('y-coordinate','fontsize',5)
a=get("current_axes")
//Get handle of the newly created axes
a.font_size=4
t=get("hdl")
//Get handle of newly created object
t.font_size=5;

select p
case 1 
    //Transformation matrix for strain in x-azis
    stx=input("Enter value of strain stx=")
    Str_x=[stx 0 ; 0 1]
    ST = Str_x*N
    title('Strain along x-axis','fontsize',5);
    a.data_bounds = [0,0;8,5];
case 2
    //Transformation matrix for strain in y-axis
    sty=input("Enter value of strain sty=")
    Str_y=[1,0;0,sty]
    ST = Str_y*N
    title('Strain along y-axis','fontsize',5);
    a.data_bounds = [0,0;6,8]
end

plot(x,y,'linewidth',3);
plot(ST(1,:),ST(2,:),'-r','linewidth',3)
hl=legend(['old coordinates','new coordinates']);
h1.font_size = 3

//To study 2D rotation
k=input("Enter 1 or 2 for 2D rotation in clockwise and anticlockwise direction respectively:")
th=input("Enter required angle for rotation th=")

figure(3)
xlabel('x-coordinate','fontsize',5)
ylabel('y-coordinate','fontsize',5)
a=get("current_axes")
//Get handle of newly created axes
a.font_size=4
t=get("hdl")
//Get handle of newly created object
t.font_size=5

select k
case 1
    //Transformation matrix for rotation in clockwise direction
    Cl=(cosd(th) , sind(th) , -sind(th) , cosd(th))
    Rot=Cl*N
    title('Rotation in clockwise direction','fontsize',5);
    a.data_bounds=[0,0;8,5]
case 2
    //Transformation matrix for rotation in anticlockwise direction
    Anti=[cosd(th) , -sind(th) , sind(th) , cosd(th)]
    Rot=Anti*N;
    title('Rotation in anticlockwise direction','fontsize',5);
    a.data_bounds=[0,0;6,8];
end

plot(x,y,'linewidth',3)
plot(Rot(1,:),Rot(2,:),'-r','linewidth',5)
hl=legend(['old coordinates','new coordinates']);
h1.font_size=3

//To study reflection
j=input("Enter 1,2 or 3 for reflection about x-axis,y-axis or origin, respectively:")

figure(4);
xlabel('x-coordinate','fontsize',5)
ylabel('y-coordinate','fontsize',5)
a=get("current_axes")
//Get handle of newly created axes
a.font_size=4
t=get("hdl")
//Get handle of newly created object
t.font_size=5;

select j
case 1
    //Transformation matrix for reflection about x-axis
    Rx=[1 0 ; 0 -1]
    R=Rx*N
    title('Reflection about x-axis','linewidth',5)
    a.data_bounds=[0,-4;6,4];
case 2
    //Transformation matrix for reflection about y-axis
    Ry=[-1 0;0 1]
    R=Ry*N
    title('Reflection about y-axis','linewidth',5)
    a.data_bounds=[0,0;8,4];
case 3
    //Transformation matrix for reflection about origin
    Rxy=[-1 0 ; 0 -1]
    R=Rxy*N;
    title('Reflection about origin','linewidth',5)
    a.data_bounds=[-8,-5;8,5]
end

plot(x,y,'linewidth',3)
plot(R(1,:),R(2,:),'-r','linewidth',5)
hl=legends(['old coordinates','new coordinates'])
h1.font_size=5













