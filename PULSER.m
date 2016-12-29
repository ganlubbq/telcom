function w = PULSER(t,T);
% FILE: PULSER.m
% CALL: w = PULSER(w,t,T)
% This function creates a rectangular pulse from -T/2 to T/2,

% t = Input vector that corresponds to the discrete time values.
% w = Input vector that corresponds to the waveform.
% T = pulse width.

i = length(t);
for (i = 1:length(t))
  if (t(i) > -T/2 & t(i) <= T/2);
    w(i) = 1;
  else;
    w(i) = 0;  
  end;
end;




