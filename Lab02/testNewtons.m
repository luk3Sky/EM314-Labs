pkg load symbolic;
syms x;
f = x^2 + 4*x - 4;
dfdx = diff(f);
tol = 1e-5;
x0 = 100;
result = newtons(function_handle (f), function_handle (dfdx), tol, x0, 15);
disp(result)