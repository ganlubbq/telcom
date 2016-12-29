% File: Example2_17.m       for Example 2-17

clear;

% First, plot the Transfer Function as given by Eq. (2-145).

% Select values for R and C.
R = 10e3;
C = 0.5e-6;
tau = R*C;
j = sqrt(-1);

% Evaluate the Transfer Function 
for (k = 1:10)
  f(k) = 1000*2^(-10)*2^k;
  H(k) = 1/(1 + 2*pi*f(k)*tau*j);
end;


% Plot the Transfer Function
B = log10(H);
HdB = 20*real(B);
Theta = 180/pi*imag(B);

subplot(221);
semilogx(f,HdB);
title(['Transfer Function for a RC LP filter in dB units'])
xlabel('f  in Hz');
ylabel('|H(f)| in dB');
grid;
% Note: Since this Transfer Function is plotted in db units, it 
% is also the Power Transfer Function, Eq. (2-147), in dB units

subplot(223);
semilogx(f,Theta);
xlabel('f  in Hz');
ylabel('Angle of H(f), degrees');
title(['Phase Transfer Function for a RC LP filter'])
grid;


% Using (2-143), evaluate the Power Transfer Function 
for (k = 1:10)
    G(k) = (abs(H(k)))^2;
end;


% Plot the Power Transfer Function in dB
Bg = log10(G);
GdB = 10*real(Bg);


subplot(222);
semilogx(f,GdB);
title(['Power Transfer Function for a RC low-pass filter'])
xlabel('f  in Hz');
ylabel('G(f) in dB');
grid;






% Second, plot the Inpulse Responce as given by Eq. (2-146).

% Evaluate the impulse response
t = 0:0.1e-3:10e-3;
h = 1/tau*exp(-t/tau);


% Plot the impulse response
subplot(224);
plot(t,h);
title(['Impulse Response where 1/tau = ',num2str(1/tau),' ']);
xlabel('t  in sec');
ylabel('h(t)');
grid;


