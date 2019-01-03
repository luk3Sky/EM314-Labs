function integral = trapezoidal(f, a, b, n),
    
    h = (b-a)/n;
    
    result = 0.5*f(a) + 0.5*f(b);
    
    for i = 1:(n-1),
        result = result + f(a + i*h);
    endfor
    
    integral = h*result;
    realResult = quad(f, a, b);
    %printf('Definite value : %d\n', realResult);
    %printf('Trapezoidal estimation of the function for %d segments : %d\n', n, integral);
    %printf('Error percentage : %d\n', (realResult - integral)/realResult*100 );
endfunction