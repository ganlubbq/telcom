function y = XTT(tt,a,T,delay);
x = zeros(length(tt),1);
for (i = 1:2:length(a))
  x = x + a(i)*(U_STEP(tt,(i-1)*T+delay) - U_STEP(tt,(i-1)*T + 2+delay)); 
end;
y = x;




