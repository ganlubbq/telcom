% File: PB_17.m

clear;
clf

n = 160;
p = 0.1;
q = 1-p;
lambda = n*p;
m = n*p;
sigma = sqrt(n*p*q);
k = 0:1:floor(2*lambda);

PB = zeros(length(k),1);
PG = zeros(length(k),1);
PP = zeros(length(k),1);

% Evaluating P(k) for Binomial case
fprintf('\n\nSee Window for plots.\n\n');
for (i = 1:1:length(k))
  PB(i) = FACT(n)/(FACT(k(i))*FACT(n-k(i)));
  PB(i) = PB(i) * p^k(i) * q^(n - k(i));
end;

% Using Guassian approximation to P(k)
for (i = 1:1:length(k))
  PG(i) = 1/(sigma*sqrt(2*pi)) * exp(-(k(i)-m)^2/(2*sigma^2));
end;

% Using Poisson approximation to P(k)
for (i = 1:1:length(k))
  PP(i) = exp(-lambda)*lambda^(k(i))/FACT(k(i));
end;

subplot(311)
plot(k,PB,'o');
xlabel('k -->');
ylabel('P(k)');
title('Binomial');
grid;
axis;

subplot(312)
plot(k,PG,'o');
xlabel('k -->');
ylabel('P(k)');
title('Gaussian Approxiamtion');
grid;

subplot(313)
plot(k,PP,'o');
xlabel('k -->');
title('Poisson Approximation');
grid;
axis;


