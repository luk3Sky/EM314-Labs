function y = fourthOrder_RK_method(f, y_init, upperBound, lowerBound, step),
  iter = 1;
  y(iter) = y_init;
  printf('\n\nUsing fourth order Runge Kutta method for step : %d\n', step);
  printf('xn \t\t| yn \t\t| y_n+1\n');
  disp('------------------------------------------');
  for x = lowerBound: step: upperBound,
    k0 = step*f( y(iter));
    k1 = step*f( y(iter)+k0/2);
    k2 = step*f( y(iter)+k1/2);
    k3 = step*f( y(iter)+k2/2); 
    y(iter+1) = y(iter) + ( k0 + 2*k1 + 2*k2 + k3 )/6;
    printf('%f \t| %f \t| %f\n', x, y(iter), y(iter+1));
    iter = iter + 1;
  endfor
endfunction
