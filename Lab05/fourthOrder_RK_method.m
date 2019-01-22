function y = fourthOrder_RK_method(f, y_init, upperBound, lowerBound, step),
  iter = 1;
  y(iter) = y_init;
  printf('xn \t\tyn \t\ty_n+1_avg \ty_n+1\n');
  for x = lowerBound: step: upperBound - step,
    k0 = step*f(x, y(iter));
    k1 = step*f( (x+step/2), y(iter)+k0/2);
    k2 = step*f( (x+step/2), y(iter)+k1/2);
    k3 = step*f( (x+step/2), y(iter)+k2/2); 
    y(iter+1) = y(iter) + step*( k0 + 2*k1 + 2*k2 + k3 )/6;
    printf('%f \t%f \t%f\n', x, y(iter), y(iter+1));
    iter = iter + 1;
  endfor
endfunction
