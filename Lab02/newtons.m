function result = newtons(f, dfdx, tol, x0, nmax),
  prev_x = x0;
  n = 1;
  next_x = 0;
   while n <= nmax,
     next_x = prev_x - f(prev_x)/dfdx(prev_x);
     %disp(next_x);
     if (abs(next_x - prev_x) <= tol),
       break;
     endif
     prev_x = next_x;
     n = n + 1;
   endwhile
  solution = next_x;
  residual = f(next_x);
  iterations = n;
  result = [solution, residual, iterations];
endfunction
