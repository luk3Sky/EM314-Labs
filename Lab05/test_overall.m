pkg load symbolic;
syms x y;
b = 8;
f(x,y) = 10 - b*sqrt(y);
step = 0.2;
y_init = 0;
y_euler = forward_euler_method(function_handle(f(x,y)), y_init, 1.2, 0, step);
#disp(res);