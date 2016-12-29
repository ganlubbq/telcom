function y = P5_84I(x);

global c
x = x(:);
Y = zeros(length(x),1);
for (i = 1:length(x))
   y(i) = exp(c*(x(i))^2);
end;


