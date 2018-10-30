clear all;
close all;
j=1;
n=500:500:5000;
t3=0;
for i=500:500:5000
    A=rand(i);
    t1=cputime();
    detA = det(A);
    t2=cputime();
    cpuTime=t2-t1;
    t3(j)=t2-t1;
    j=j+1;
end
loglog(n,t3,'o');
hold;
%z=polyfit(n,t3,1);
%c=(z(1)*(1:1:10))+z(2);
%plot(n,c);
