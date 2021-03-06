% File: Example2_19.m for Example 2-19

clear;

% Generate a rectangular pulse, w(t), that will be sampled.
t = 0:0.1:5;
w = PULSE(zeros(length(t),1),t,2,3);

% Then generate a waveform using the Sampling Theorem which will 
% approximate the rectangular pulse.  Change the value 
% of fs to see the effect of choosing a higher or lower
% sampling frequency.  fs must be a positive integer. For example, 
% first try fs=10, then 5, 3,  etc. 

fs = input('Enter the value of fs: ');
fs = floor(fs);
if (fs <= 0)
  fs = 1;
end;

n = 1:(5*fs);
ts = n/fs - 1/(2*fs);
a = PULSE(zeros(length(ts),1),ts,2,3); 

%wa = Waveform generated using Sampling Theorem

for (i = 1:length(t))
  for (j = 1:length(n))
    temp(j) = pi*fs*(t(i)-j/fs);
  end;
  wa(i) = a'*SA(temp);
end;

subplot(211);
plot(t,w);
xlabel('t');
ylabel('w(t)');
title('Original Rectangular Pulse');

subplot(212)
plot(t,wa);
xlabel('t');
ylabel('w(t)');
title(['Waveform Generated by the Sampling Theorem with fs = ' int2str(fs) ]);





