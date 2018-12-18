function result = simpsons_3_8(f, a, b, n),
  
    h = (b-a)/n;
    
    result = f(a) + f(b);
    
    for i = 1:2,
      result = result + 3*f(a+i*h);
    endfor
    
    
    #{
    for i = 1:2:(n-1),
        result1 = result1 + f(a + i*h);
    endfor
    
    
    for i = 2:2:(n-2),
        result2 = result2 + f(a + i*h);
    endfor
    #}
    
    integral = 3*h*result/8;
    realResult = quad(f, a, b);
    printf('Definite value : %d\n', realResult);
    printf('Simpsons 3/8 estimation of the function for %d segments : %d\n', n, integral);
    printf('Error percentage : %d\n', (realResult - integral)/realResult*100 );
  
endfunction