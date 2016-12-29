% File: Example2_08.m  for Example 2-8
% This will plot w3(t) of Figure 2-7 

clear;

T = 1;
t = -T:T/20:4*T;

kmax = length(t);

for k = 1:1:kmax;
  
  if t(k)<=0;
        w3(k) = 0;
  elseif t(k)<=T;
        w3(k) = T*(1-exp(-t(k)/T));
  elseif t(k)>T;
        w3(k) = T*(exp(1)-1)*exp(-t(k)/T);
  end;
end;

plot(t,w3);
xlabel('t');
ylabel('w3(t)');
grid;


