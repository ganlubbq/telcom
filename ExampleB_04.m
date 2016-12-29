% File: ExampleB_04.m for Example B-4

clear;
clf

% Try various values for m and sigma to give the results
% shown in Fig. B-5
sigma = 0.25;
m = 1.25;

x = -1:0.01:3.5;


for (i = 1:1:length(x))
  f(i) = (1/(sqrt(2*pi)*sigma))*exp(-((x(i)-m)^2)/(2*sigma^2));
  F(i) = 1-Q((x(i)-m)/sigma);
end;



subplot(211)
plot(x,F)
xlabel('a (volts) -->');
ylabel('F(a)');
axis([-1 3.5 -0.1 1.1])
title('(a) Cumulative Distribution Function');
grid


subplot(212)
plot(x,f)
xlabel('x (volts) -->');
ylabel('f(x)');
axis([-1 3.5 -0.1 1.7])
title('(b) Probability Density Function');
grid



% Calculate the Probability that the voltage will be between a and b
% volts where b>a
% Select values for a and b
a = 1.4;
b = 1.6;
P = Q((a-m)/sigma) - Q((b-m)/sigma);

fprintf('\n\nThe probability that the voltage is between a = %f',a);
fprintf(' volts\nand b = %f',b);
fprintf(' volts is P = %f',P);
fprintf('\n\n');









