% File: ExampleB-09.m for Exampl B-9

clear;
clf

fprintf('\nSee Window for plot.\n\n');

A = input('Enter the value for the peak amplitude of the Sinusoid, A: ');
fprintf('\n\n');

ymin = -1.5*A;
ymax = 1.5*A;
dy = (ymax-ymin)/200;

y = ymin:dy:ymax;

for i = 1:1:length(y)
  if y(i) < -A;
    f(i) = 0;
  elseif y(i) >= -A;
    f(i) = 1/(pi*sqrt(A^2-y(i)^2));
  end  
  if  y(i) > A;
    f(i) = 0;      
  end;
end;

plot(y,f)
xlabel('y -->');
ylabel('f(y)');
title(['PDF for a Sinusoid having a Peak Value of A = ',num2str(A)]);
grid;
