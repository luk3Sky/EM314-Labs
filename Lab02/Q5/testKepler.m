pkg load symbolic;
X0 = 100;
tolerance = 1e-8;
nmax = 1000;
syms x;
f = x -(0.8*sin(x)) -3 ;
df = diff(f)
[solution, residual, niter] = newtons_3(@f,@df,tolerance,X0,nmax);
printf("sol : %f\tres : %f\tniter : %d\n",solution, residual, niter);