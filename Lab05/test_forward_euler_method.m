pkg load symbolic;
syms x y;
f(x,y) = x + y;
##f(x,y) = -2*(x^3)+12*(x^2)-20*x+8.5;
step = 0.02;
y_init = 1;
forward_euler_method(function_handle(f(x,y)), y_init, 0.1, 0, step);
#disp(res);