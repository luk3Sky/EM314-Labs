function [sol, res, niter] = newtons_2(f, df, x0, tol, nmax)
    niter = 0;
    x = x0 - f(x0)/df(x0);
    prev_x = x0;
  while abs(prev_x-x) >= tol && niter <= nmax
    prev_x = x;
    x = prev_x - f(prev_x)/df(prev_x);
    niter = niter + 1;
  end

  if niter > nmax
    fprintf('Newtons method stopped without convergence');
  end
  sol = x;
  res = f(x);
endfunction