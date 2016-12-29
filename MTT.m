function y = MTT(tt,a,T,delay)
m = zeros(length(tt),1);
for (i = 1:1:length(a))
  m = m + a(i)*(U_STEP(tt,(i-1)*T+delay) - U_STEP(tt,(i-1)*T + 1+delay)); 
end;
y = m;



