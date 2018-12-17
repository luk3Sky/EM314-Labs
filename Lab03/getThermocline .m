pkg load symbolic;

x = [0 -2 -4 -6 -8 -10];
t = [29.1 29 28.7 28.2 20.7 19.1];

thermocline  = LagrangeInterpolant(x, t);
sym_f = formula(simplify(thermocline));
f = function_handle(sym_f);
clc;
fprintf('The temperature at 7m = %d\n', f(-7));

hold on;
grid on;
ezplot(simplify(thermocline ));
plot(x, t, 'xr');
syms x;
f1_der = simplify(diff(thermocline, x))
f2_der = simplify(diff(f1_der, x))
solutions = real(double(solve(f2_der == 0, x)))
