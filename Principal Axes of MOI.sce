//Determination of the principal axes of moment of inertia through diagonalization
clc; clear;
n = input("the number of particles")
mtrx1 = zeros(3, 3)
mtrx2 = zeros(3, 3)
I = eye(3, 3)

for i=1:n
    m(i) = input("mass of the particles")
end
for i=1:n
    for j=1:3
        r(i,j)= input("the coordinates of n particles")
    end
end
s=r'
for j=1:3
    for k=1:3
        for i=1:n
            mtrx1(j,k)= mtrx1(j,k) + m(i) * s(k,i) * r(i,j)
        end
    end
end
sqr=r*r'
for j=1:3
    for k=1:n
        for i=1:n
            mtrx2(j,k)= mtrx2(j,k)+m(i)*I(j,k)*sqr(i, i)
        end
    end
end
for j=1:3
    for k=1:3
        M(j,k)= mtrx2(j,k)-mtrx1(j,k)
    end
end

disp(M, 'Moment of inertia tensor matrix')
[v, d]= spec(M)
disp(v, 'Eigen vector')
disp(d, 'Eigen value')