% File: P6_56.m for Problem 6-56

clear;
clf

% Referring to Fig. 6-17,
% Let r(t) be the input waveform to the integrator
% Let ro(t) be the waveform out of the integrator 

R = 2000;
T = 1/R;
t = 0:T/40:2*T;

% --------------------------------------------------------
% Part (a)
B = 6000;
a = 2*pi*B;

for (i = 1:1:length(t))
  if (t(i) >= T)
     r(i) = (exp(a*T)-1)*exp(-a*t(i));
     ro(i)= ( (exp(a*T)-1)/a) *( exp(-a*T)-exp(-a*t(i)) );
  else
     r(i) = 1-exp(-a*t(i));
     ro(i)= t(i)+((exp(-a*t(i))-1)/a);
  end;
end;
    
subplot(221)
plot(t,r);
xlabel('t   sec -->');
ylabel('r(t)');
axis([0 0.001 -0.05 1.05])
title(['(a) Integrator Input Waveform, r(t), where B =',num2str(B),' Hz']);
 
subplot(223)
plot(t,ro);
xlabel('t   sec -->');
ylabel('ro(t)');
title('(a) Integrator Output Waveform, ro(t)');

% --------------------------------------------------------
% Part (b)
B = 100000;
a = 2*pi*B;

for (i = 1:1:length(t))
  if (t(i) >= T)
     r(i) = (exp(a*T)-1)*exp(-a*t(i));
     ro(i)= ( (exp(a*T)-1)/a) *( exp(-a*T)-exp(-a*t(i)) );
  else
     r(i) = 1-exp(-a*t(i));
     ro(i)= t(i)+((exp(-a*t(i))-1)/a);
  end;
end;

subplot(222)
plot(t,r);
xlabel('t   sec -->');
ylabel('r(t)');
axis([0 0.001 -0.05 1.05])
title(['(b) Integrator Input Waveform, r(t), where B =',num2str(B),' Hz']);
 
subplot(224)
plot(t,ro);
xlabel('t   sec -->');
ylabel('ro(t)');
title('(b) Integrator Output Waveform, ro(t)');

fprintf('\nLooking at the output waveform for Part (a), There is ISI.\n')
fprintf('Looking at the output waveform for Part (b), There is no ISI.\n')
fprintf('\nConclusion: Restricted channel bandwidth causes ISI.\n\n')


