% File: Example3_15.m  for Example 3-15


% Note that for this case of binary data at the input, the symbol (baud)
% rate and the bit rate are identical.  That is Rb = D.
% This file uses the function PULSER.m to generate the input waveform. 
% This file uses the function PulseC.m to generate the output waveform.

clear;
clf;

% d is the vector for the input data bits 
d = [1 0 0 1 0 1 1 0 1 0];

% R is the bit rate
% r is the rolloff factor of the Raised Cosine-Rolloff filter
R = 1;
r = 0.5;
Tb = 1/R;

B = (1/2)*R*(1+r)

t = 0:0.01:10;
N = length(d);

% Evaluate input Unipolar NRZ waveform
for m = 1:1:length(t);
   for k = 1:1:N;
       terms(k) = d(k)* PULSER(t(m)-Tb*(k-0.5),Tb);
   end;
   win(m) = sum(terms);
end

% Evaluate waveform at the output of the Raised Cosine-Rolloff filter
wout = zeros(length(t));
for m = 1:1:length(t);
   for k = 1:1:N;
       terms(k) = d(k)*PulseC((t(m)-k*Tb),r,R);
   end;
   wout(m) = sum(terms);
end;

subplot(211)
plot(t,win);
xlabel('t in sec -->');
ylabel('win(t)');
axis([0 10 0 1.1])
title([' Input Unipolar NRZ Waveform (where',num2str(N),' bits are shown)']);

subplot(212)
plot(t,wout);
xlabel('t in sec -->');
ylabel('wout(t)');
axis([0 10 -0.3 1.3])
title(['Output Waveform (where',num2str(N),' bits are shown)']);
grid

