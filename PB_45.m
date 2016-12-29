% File: PB_45.m for Problem B-45

clear;
clf

sigma = 1;
rho = 0.5;
x1 = -5:0.05:5;

x2 = [0 0.4 0.8 1.2 1.6];

temp1 = 1/(2*pi*sigma^2*sqrt(1-rho^2));
temp2 = 2*sigma^2*(1-rho^2);
PLOT_PR(length(x2))
for (j = 1:1:length(x2))
  f = zeros(length(x1),1);
  for (i = 1:1:length(x1))
    f(i) = temp1*exp(-(x1(i)^2 - 2*rho*x1(i)*x2(j) + x2(j)^2)/temp2);
  end;
  plot(x1,f);
  xlabel('x1 -->');
  ylabel(['f( x1, ',num2str(x2(j)),' )']);
  title(['f(x1,x2) where x2 = ',num2str(x2(j))]);
  if (j < length(x2))
    pause;
  end;
end;



