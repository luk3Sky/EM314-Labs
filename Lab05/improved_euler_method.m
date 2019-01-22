function y = improved_euler_method(f, y_init, upperBound, lowerBound, step),
  iter = 1;
  y(iter) = y_init;
  printf('xn \t\tyn \t\ty_n+1_avg \ty_n+1\n');
  for x = lowerBound: step: upperBound - step,
    tempVal = y(iter) + step*f(x, y(iter));   # Predictor step
    y(iter+1) = y(iter) + step*( f(x, y(iter)) + f(x+step, tempVal) )/2;  # Corrector step
    printf('%f \t%f \t%f \t%f\n', x, y(iter), tempVal, y(iter+1));
    iter = iter + 1;
  endfor
  disp(y);
endfunction


