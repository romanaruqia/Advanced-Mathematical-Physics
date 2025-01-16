//Power method to find the largest eigenvalue and eigenvector
clear;clc;
function [lambda_max, v_max] = power_method(A, x0, tol, max_iter)
    n = size(A, 1);
    x = x0 / norm(x0, 2);
    lambda_max = 0;
    for iter = 1:max_iter
        x_old = x;
        x = A * x;
        [max_val, max_ind] = max(abs(x));
        lambda_max = max_val;
        v_max = x / lambda_max;
        x = x / max_val;
        if norm(x - x_old, 2) < tol
            break;
        end
    end
end
// Inverse power method to find the smallest eigenvalue and eigenvector
function [lambda_min, v_min] = inverse_power_method(A, x0, tol, max_iter)
    n = size(A, 1);
    [D, V] = spec(A);
    A_inv = inv(A);
    x = x0 / norm(x0, 2);
    lambda_min = 0;
    for iter = 1:max_iter
        x_old = x;
        x = A_inv * x;
        [min_val, min_ind] = min(abs(x));
        lambda_min = 1 / min_val;
        v_min = x / min_val;
        x = x / min_val;
        if norm(x - x_old, 2) < tol
            break;
        end
    end
end
A = [4, -1; 2, 1];
x0 = rand(2, 1);
tol = 1e-8;
max_iter = 1000;
[lambda_max, v_max] = power_method(A, x0, tol, max_iter);
(lambda_min, v_min) = inverse_power_method(A, x0, tol, max_iter);
disp('The Largest Eigenvalue is:',lambda_max);
disp('The Largest Eigenvector is:', v_max);
disp('The Smallest Eigenvalue is:',lambda_min);
disp('The Smallest Eigenvector is:', v_min);
