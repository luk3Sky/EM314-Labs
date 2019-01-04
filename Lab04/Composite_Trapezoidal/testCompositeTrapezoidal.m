function [] = testCompositeTrapezoidal(m, n, lowerBound, upperBound, segments),
  step = (upperBound - lowerBound)/segments;
  f = @(x) (x^(m-1))*((1-x)^(n-1));
  count = 0;
  sum = 0;

  while(count < segments),
    sum = sum + trapezoidal(f, (lowerBound + count*step), (lowerBound + (count+1)*step), 1);
    count++;
  endwhile

  disp(sum);
  realResult = quad(f, lowerBound, upperBound);
  printf('Error percentage : %d\n', (realResult - sum)/realResult*100 );
endfunction
