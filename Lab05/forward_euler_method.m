function y = forward_euler_method(f, y_init, upperBound, lowerBound, step),
  iter = 1;
  y(iter) = y_init;
  printf('\n\nUsing forward euler method for step : %d\n', step);
  printf('xn \t\t| yn \t\t| y_n+1\n');
  disp('------------------------------------------');
  for x = lowerBound: step: upperBound-step,
    y(iter+1) = y(iter) + step*f(y(iter));
    printf('%f \t| %f \t| %f\n', x, y(iter), y(iter+1));
    iter = iter + 1;
  endfor
endfunction
