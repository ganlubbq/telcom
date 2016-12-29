% File: Example3_13.m  for Example 3-13

% Note that for this case of binary data at the input, the symbol (baud)
% rate and the bit rate are identical.  That is Rb = D.
% This file uses the function PULSER.m to generate the input waveform. 
% This file uses the function PulseRC.m to generate the output waveform.

clear;
clf;

% d is the vector for the input data bits 
d = [1 0 0 1 0 1 1 0 1 0];

% R is the bit rate
% fo is the 3dB bandwidth of the RC filter
R = 1;
fo = 1;

Tb = 1/R;
tau0 = 1/(2*pi*fo);
t = 0:0.01:10;
N = length(d);

% Evaluate input Unipolar NRZ waveform
for m = 1:1:length(t);
   for k = 1:1:N;
       terms(k) = d(k)* PULSER(t(m)-Tb*(k-0.5),Tb);
   end;
   win(m) = sum(terms);
end

% Evaluate waveform at the output of the RC filter
for m = 1:1:length(t)
   for k = 1:1:N
       terms(k) = d(k)* PulseRC(t(m)-Tb*(k-1),tau0,Tb);
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
axis([0 10 0 1.1])
title(['Output Waveform (where',num2str(N),' bits are shown)']);

