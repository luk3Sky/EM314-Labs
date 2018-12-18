a = 0;
b = 4;

%f = @(x) (1-x-4*(x^3)+2*(x^5));

m = 2;
n = 3;

f = @(x) ( (x.^(m-1))*((1-x)^(n-1)) );
I = simpsons_1_3(f, a, b, 1);
I = simpsons_3_8(f, a, b, 1);