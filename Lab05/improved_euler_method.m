function y = improved_euler_method(f, y_init, upperBound, lowerBound, step),
  iter = 1;
  y(iter) = y_init;
  printf('\n\nUsing improved euler method for step : %d\n', step);
  printf('xn \t\t| yn \t\t| y_n+1_avg \t| y_n+1\n');
  disp('----------------------------------------------------------');
  for x = lowerBound: step: upperBound,
    tempVal = y(iter) + step*f(y(iter));   # Predictor step
    y(iter+1) = y(iter) + step*( f(y(iter)) + f(tempVal) )/2;  # Corrector step
    printf('%f \t| %f \t| %f \t| %f\n', x, y(iter), tempVal, y(iter+1));
    iter = iter + 1;
  endfor
endfunction
