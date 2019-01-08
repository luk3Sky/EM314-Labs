function result = forward_euler_method(f, dfdx, y_init,u, n_max),
  #dfdx = diff(f);
  x_val = [0 : u : n_max*u];
  y_val = zeros(1,n_max+1);
  #disp(y_val(0));
  i = 1;
  #a = function_handle( f(x_val(1)));
  disp(f(x_val(1),y_val(1)));
  y_prev = y_init;
  while ( i <= n_max),
    
    if i == 1,
      y_val(i+1) = f(x_val(i),y_init) + u*dfdx(x_val(i),y_val(i));
      y_next = 
    else,
      y_val(i+1) = f(x_val(i),y_val(i)) + u*dfdx(x_val(i),y_val(i));
    endif
    disp();
    i++;
  endwhile
  disp(y_val);
endfunction
