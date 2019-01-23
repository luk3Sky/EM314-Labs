function y = forward_euler_method(f, y_init, upperBound, lowerBound, step),
  iter = 1;
  y(iter) = y_init;
  printf('xn \t\tyn \t\ty_n+1\n');
  for x = lowerBound: step: upperBound,
    y(iter+1) = y(iter) + step*f(y(iter));
    printf('%f \t%f \t%f\n', x, y(iter), y(iter+1));
    iter = iter + 1;
  endfor
endfunction
