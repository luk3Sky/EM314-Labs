pkg load symbolic;

x = [0 1/2 1];
y = [0 1/4 1];

sol = LagrangeInterpolation(x, y);
ezplot(simplify(sol));