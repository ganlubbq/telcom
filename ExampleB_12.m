% File: ExampleB-12.m for Exampl B-12

clear;
clf

fprintf('\nSee Window for plot.\n\n');

% ----------------------------------------------
% Calculate Approximate PDF given by Eq. (B-109)

% Select the width of the uniform PDF, A, where A>0
A = 2;

ymin = -2*A;
ymax = 2*A;
dy = (ymax-ymin)/200;

y = ymin:dy:ymax;

c = 3*A/2;
c2 = 1/(2*A^3);

for i = 1:1:length(y)
  if y(i) < -c;
    f(i) = 0;
  elseif y(i) >= -c;
    f(i) = c2*((c + y(i))^2);
  end  
  if  y(i) >= -A/2;
    f(i) = c2*(c*A - 2*(y(i)^2));
  end  
  if  y(i) >= A/2;
    f(i) = c2*((c - y(i))^2); 
  end
  if  y(i) >= c;
    f(i) = 0; 
  end;
end;
% ---------------------------------------------

% Galculate PDF for a Gaussian 

m = 0;
sigma = (1/sqrt(2*pi))*(4*A/3);

pdf = zeros(length(y),1);
for (i = 1:1:length(y))
  pdf(i) = 1/(sqrt(2*pi)*sigma)*exp(-(y(i)-m)^2/(2*sigma^2));
end;
pdfpeak = max(pdf);
fprintf(['\nThe Peak Value for the PDF is ',num2str(pdfpeak),'\n\n']);
% --------------------------------------------

% Plot results

plot(y,f,'-',y,pdf,'--')
xlabel('y -->');
ylabel('PDF of Gaussian (dashed) & Approximateion to Gaissian (solid)');
title(['Demonstration of the Central Limit Theorem for A = ',num2str(A)]);
grid;
