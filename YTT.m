function y = YTT(tt,a,T,delay);
y = zeros(length(tt),1);
for (i = 2:2:length(a)-1)
  y = y + a(i)*(U_STEP(tt,(i-1)*T+delay) - U_STEP(tt,(i-1)*T + 2+delay)); 
end;



