% File: Example6_01 for Example 6-1

clear;
clf

% Select values for the mean, m, and for the 
% Standard Deviation, sigma
m      = -1;
sigma  = 2;

v = -8:0.1:8;

% Compute f(v)
for (i = 1:1:length(v))
    f(i) = (1/(sqrt(2*pi)*sigma))*exp(-(v(i)-m)^2/(2*sigma^2));
end;


% Plot result
plot(v,f);
xlabel('v -->');
ylabel('f(v)');
title('Gaussian pdf');
title(['Gaussian PDF where m = ',num2str(m),' and sigma = ',num2str(sigma)]);
