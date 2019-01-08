pkg load symbolic;
syms x y;
f(x,y) = x + y;
u = 0.02;
y_init = 1;
n_max = 10;
dfdx = diff(f);
forward_euler_method(function_handle(f(x,y)), function_handle (dfdx(x,y)), y_init,u, n_max);
#disp(res);