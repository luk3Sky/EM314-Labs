clear;
clc;
i = 0;
n = [500 : 500 : 5000];
t = [];

for j = n,
  id = 0;
  A = rand(j);
  
  # initial time
  id = tic();
  detA = det(A);
  
  # final time
  new_time = toc(id);
  t = [t, new_time];
  i = i + 1;
endfor

# get the log values
log_n = log(n);
log_time = log(t);
hold;
plot(log_n, log_time, 'bo');
p = polyfit(log_n, log_time, 1);
disp(p);
y_vals = log_n*p(1) + p(2);
plot(log_n, y_vals, 'r-');
xlabel('n in logarithm scale');
ylabel('cputime in logarithm scale');
legend('cputime with n', 'best-fit line');
