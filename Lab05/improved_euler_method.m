function y = improved_euler_method(f, y_init, upperBound, lowerBound, step),
  iter = 1;
  y(iter) = y_init;
  for x = lowerBound: step: upperBound - step,
    y(iter+1) = y(iter) + step*f(x, y(iter));
    iter = iter + 1;
  endfor
  disp(y);
endfunction


