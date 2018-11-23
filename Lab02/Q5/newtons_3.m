function [solution, residual, niter] = newtons_3(f, dfdx, tol, x0, nmax),
  prev_x = x0;
  niter = 0;
  next_x = 0;
  prev_ek = abs(prev_x - 2*(sqrt(2) - 1));
  disp("k\t\txk\t\t\tek = |xk-x*|\t\tek/((e^2)k-1)\n");
   while niter <= nmax,

     next_x = prev_x - f(prev_x)/dfdx(prev_x);

     %disp(next_x);
     if (abs(next_x - prev_x) <= tol),
       break;
     endif
     ek = abs(next_x - 2*(sqrt(2)-1));
     printf("%d\t\t%f\t\t%f\t\t%f\n",niter, next_x, ek, ek/(prev_ek*prev_ek));
     prev_x = next_x;
     niter = niter + 1;
   endwhile
  solution = next_x;
  residual = f(next_x);
  %iterations = niter;
  %result = [solution, residual, niter];
endfunction
