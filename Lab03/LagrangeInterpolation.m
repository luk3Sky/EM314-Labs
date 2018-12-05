function solution = LagrangeInterpolation(x_array , y_array ),
  length = length(x_array);
  syms x;
  syms y;
  solution = 0;
  adders = 0;
  disp(length);
  i = 1; j = 1;
  while j <= length,
    multipliers = 1;
    i = 1;
    while i <= length,
      if i == j,
        i++;
        continue;
      else,
        temp =  ( x - x_array(i) )/( x_array(j) - x_array(i) );
        fprintf('%d %d\n', i, j);
        multipliers = multipliers*(temp);
      endif
      i++;
    endwhile
    adders = adders + multipliers*y_array(j);
    j++;
  endwhile
  solution = adders;  
endfunction