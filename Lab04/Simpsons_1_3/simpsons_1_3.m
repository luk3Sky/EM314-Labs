function result = simpsons_1_3(f, a, b, n),
  
    h = (b-a)/n;
    
    result = f(a) + f(b);
    result1 = 0;
    result2 = 0;
    
    for i = 1:2:(n-1),
        result1 = result1 + f(a + i*h);
    endfor
    
    for i = 2:2:(n-2),
        result2 = result2 + f(a + i*h);
    endfor
    
    integral = h*(result + 4*result1 + 2*result2)/3;
    realResult = quad(f, a, b);
    printf('Definite value : %d\n', realResult);
    printf('Simpsons 1/3 estimation of the function for %d segments : %d\n', n, integral);
    printf('Error percentage : %d\n', (realResult - integral)/realResult*100 );
  
endfunction