% File: W2.M
function y = W2(x,f1,f2);
y = 1/(f2 - f1);
temp = abs(x);
y = y * (temp - f2) * (PHI(temp-f1)-PHI(temp-f2));



