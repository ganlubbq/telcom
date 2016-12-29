% File: ExampleB_06.m for Example B-6

clear;
clf

fprintf('\n\nSee Window for plot.\n\n');


m = input('Enter the desired value of the mean: ');
sigma = input('Enter the desired value of the standard deviation: ');
sigma = abs(sigma);

x = m-5*sigma:10*sigma/1000:m+5*sigma;

pdf = zeros(length(x),1);
for (i = 1:1:length(x))
  pdf(i) = 1/(sqrt(2*pi)*sigma)*exp(-(x(i)-m)^2/(2*sigma^2));
end;



plot(x,pdf);
xlabel('x -->');
ylabel('f(x)');
title(['PDF of Guassian RV with specified mean = ',num2str(m),' and standard deviation = ',num2str(sigma)]);
grid;




