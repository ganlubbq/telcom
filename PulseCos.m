function p = PulseRC(t,tau0, Tb);
% File: PulseRC.m       A Function for Example3_13.m of Example 3-13
% This function calculates the RC filter response when the 
% filter input is a rectangular pulse.


% t = Input vector that corresponds to the discrete time values.
% p = Output vector that corresponds to the waveform.
% Tb = Length (time) of one bit.

i = length(t);
for (i = 1:length(t));
  if (t(i) <= 0);
    p(i) = 0;
  elseif (t(i) > 0 & t(i) <= Tb);
      p(i) = 1-exp(-t/tau0);
  else    t(i) > Tb;
      p(i) = (exp(-t/tau0))*(exp(Tb/tau0)-1); 
  end;
end;

