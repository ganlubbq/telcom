% File: Example5_09.m    for Example 5-9

clear;
clf


% Calculate & Plot Originate Modem Transmit Spectrum
f2 = 1070;
fl = 1270;
% Note: f1>f2
R = 300;
h = (fl-f2)/R;
Ac = 1;
n = 0:1:10;

xn = 0.5*pi*(h-n);
xp = 0.5*pi*(h+n);
fc = 0.5*(fl+f2);
fn = 0.5*n*R + fc;

% Computing the one-sided spectrum, i.e the spectrum for f>=fc.
temp = SA(xp);
for (i = 1:1:length(temp))
  temp(i) = temp(i)*(-1)^(i-1);
end;
c = (Ac/2)*(SA(xn) + temp);
SdB = 20 * log10(abs(c));

% Compare with Fig. 5-26a.
subplot(211)
plot(fn,SdB,'o');
for (i = 1:1:length(fn))
  line([fn(i) fn(i)], [min(SdB) SdB(i)]);
end;
xlabel('f -->');
ylabel('SdB(f)');
axis([1000 3200 -40 0])
title(['Originate Transmit Spectrum for f>=fc where fc = ',int2str(fc),', R = ',num2str(R), ', h = ',num2str(h)]);
grid;



% Calculate & Plot Answer Modem Transmit Spectrum
f2 = 2025;
fl = 2225;
% Note: f1>f2
R = 300;
h = (fl-f2)/R;
Ac = 1;
n = 0:1:10;

xn = 0.5*pi*(h-n);
xp = 0.5*pi*(h+n);
fc = 0.5*(fl+f2);
fn = 0.5*n*R + fc;

% Computing the one-sided spectrum, i.e the spectrum for f>=fc.
temp = SA(xp);
for (i = 1:1:length(temp))
  temp(i) = temp(i)*(-1)^(i-1);
end;
c = (Ac/2)*(SA(xn) + temp);
SdB = 20 * log10(abs(c));

subplot(212)
plot(fn,SdB,'o');
for (i = 1:1:length(fn))
  line([fn(i) fn(i)], [min(SdB) SdB(i)]);
end;
xlabel('f -->');
ylabel('SdB(f)');
axis([1000 3200 -40 0])
title(['Answer Transmit Spectrum for f>=fc where fc = ',int2str(fc),', R = ',num2str(R), ', h = ',num2str(h)]);
grid;



