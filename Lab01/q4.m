time_vals = [0];
i = 0;
for n = [500 : 500 : 5000 ],
  id = tic();
  A = rand(n);
  detA = det(A);
  t = toc(id);
  #n + = 500;
  disp(num2str(t));
  time_vals = [time_vals, t];
  i += 1;
endfor

loglog(time_vals,n)