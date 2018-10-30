clear;
clc;
i = 0;
n = [500 : 500 : 5000];
log_time = [];
log_n = [];
poly_n = [];

for j = n,
  id = 0;
  A = rand(j);
  id = tic();
  detA = det(A);
  t = toc(id);
  disp(num2str(t));
  log_n = [log_n, j];
  log_time = [log_time, t];
  i = i + 1;
endfor

p = polyfit(log_n,log_time, 1);
#disp(log_time);
disp(p);
for k = log_n,
  y = p(1)*k ;
  poly_n = [poly_n, y];

  endfor
hold;
disp(poly_n);
plot(log_n, poly_n,'-.');
loglog(log_n, log_time);