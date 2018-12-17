pkg load symbolic;

x = [0 1/2 1];
y = [0 1/4 1];

sol = LagrangeInterpolant(x, y);
grid on;
hold on;
ezplot(simplify(sol));
plot(x, y, 'xr');