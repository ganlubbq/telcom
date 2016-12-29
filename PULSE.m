function w = PULSE(w,t,tbegin,tend)
% FILE: PULSE.m
% CALL: w = PULSE(w,t,tbegin,tend)
% This function creates a square pulse.

% t = Input vector that corresponds to the discrete time values.
% w = Input vector that corresponds to the waveform.
% tbegin = defines the left edge of the pulse.
% tend = defines the right edge of the pulse.

i = length(t);
for (i = 1:length(t))
  if (t(i) >= tbegin & t(i) <= tend)
    w(i) = 1;
  end;
end;




