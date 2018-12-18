a = 0;
b = 4;

f = @(x) (1-x-4*(x^3)+2*(x^5));

I = trapezoidal(f, a, b, 4);