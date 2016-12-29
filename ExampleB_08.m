% File: ExampleB-08.m for Exampl B-8

clear;
clf

x = 0:0.1:5;
y = Q(x);
y1 = zeros(length(x),1);
m = 1;

for (i = 1:1:length(x))
  y1(i) = 1/(sqrt(2*pi)*(x(i)+10e-6))*exp(-0.5*x(i)^2);
  if (y1(i) > 1)
    m = i;
  end;
end;

fprintf('\nSee Window for plot.\n')

semilogy(x,y,x(m+1:length(x)),y1(m+1:length(x)),':');
xlabel('z -->');
ylabel('Q(z)');
title('Q(z) (solid line) versus Upper Bound (dotted line)');
grid;





