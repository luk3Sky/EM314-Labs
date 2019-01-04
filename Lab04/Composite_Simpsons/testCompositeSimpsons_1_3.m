function [] = testCompositeSimpsons_1_3(m, n, lowerBound, upperBound, segments),
  step = (upperBound - lowerBound)/segments;
  f = @(x) (x^(m-1))*((1-x).^(n-1));
  result1 = 0;
  result2 = 0;
  sum = 0;

  arr =  lowerBound:step:upperBound;
  disp(arr);
  for i = 1:2:length(arr)- 5,
    result1 = result1 + f(arr(i)) + 4*f(arr(i+1)) + f(arr(i+2));
  endfor
  
  result1 = (result1*step)/3;
  
  i = length(arr) - 3;
  
  result2 =  f(arr(i)) + 3*f(arr(i+1)) + 3*f(arr(i+2)) + f(arr(i+3 )); 
  result2 = (result2*step*3)/8;
  sum = result1 + result2;
  realResult = quad(f, lowerBound, upperBound);
  disp(sum);
  printf('Error percentage : %d\n', (realResult - sum)/realResult*100 );
endfunction