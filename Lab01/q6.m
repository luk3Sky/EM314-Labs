clear;
clc;

N = 40;
k = [1:N];
hk = [];
hk = 1./(power(2, k));
x = 3;

fx = log(x);
fxh = log(x+hk);
der_fhk = (fxh-fx)./hk;
Ehk = abs(1/x .- (der_fhk));

# Tabulation
printf('k\t hk\t\t\t f\"hk \t\t\t Ehk\n');
for i = k,
  fprintf('%d\t %e\t\t %f\t\t %e\n', k(i), hk(i), der_fhk(i), Ehk(i));
endfor

# Graph
hold;
log_h = log(hk);
log_Ehk = log(Ehk);
plot(log_h, log_Ehk, 'r-');
p = polyfit(log_h, log_Ehk, 1);
xlabel("hk in logarithm scale");
ylabel("Ehk in logarithm scale");
printf("p = ");
disp(p);


