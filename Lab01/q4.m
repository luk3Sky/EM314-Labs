i = 0;
n = [500 : 500 : 5000];
log_time = [];
log_n = [];

for j = n,
  id = 0;
  id = tic();
  A = rand(j);
  detA = det(A);
  t = toc(id);
  #n + = 500;
  disp(num2str(t));
  log_n = [log_n, j];
  log_time = [log_time, t];
  i += 1;
endfor

#disp(num2str(log_n));
#disp(num2str(log_time));
t = polyfit(log_n, log_time, 2);
disp(num2str(t));
#hold;
plot(log(log_n),t,'o');
loglog(log_n, log_time);

