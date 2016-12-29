% File: P6_43.m for Problem 6-43

clear;
clf


f = -3:0.02:3;

fc = 1;
Ao = 5;

% Referring to the equations following Eq (6-141), we get the 
% the PSD for the output of the multiplier, w1(t), which is also
% the waveform at the input of the lowpass filter (LPF).

% Let x(t) be the waveform at the output of the LPF, having a
% PSD denoted by Px(f). 

for (i = 1:1:length(f))
 Pv(i) = P6_43PV(f(i));   
 Pw1(i) = ((Ao^2)/4)*(P6_43PV(f(i)-fc) + P6_43PV(f(i)+fc));
 Px(i) =  Pw1(i)*(U_STEP(f(i),-fc) - U_STEP(f(i),fc));
end;




subplot(311)
plot(f,Pv);
xlabel('f   Hz -->');
ylabel('Pv(f)');
axis([-3 3 -0.1 3])
title('Pv(f)  as shown in Figure P6-37');
 
subplot(312)
plot(f,Pw1);
xlabel('f   Hz -->');
ylabel('Pw1(f)');
axis([-3 3 -0.5 20])
title('Pw1(f) ---> PSD of signal into LPF');


subplot(313)
plot(f,Px);
xlabel('f   Hz -->');
ylabel('Px(f)');
axis([-3 3 -0.5 20])
title('Px(f) ---> PSD of signal out of LPF');
 
