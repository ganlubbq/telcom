% File: Example2_18.m       for Example 2-18

clear;

% First, plot the Transfer Function as given by Eq. (2-145).

% Select values for R and C.
R = 10e3;
C = 0.5e-6;
tau = R*C;
fo = 1/(2*pi*R*C);
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

subplot(311);
semilogx(f,HdB);
title(['Transfer Function for a RC low-pass filter'])
xlabel('f  in Hz');
ylabel('H(f) & G(f) in dB');
grid;
% Note: Since this Transfer Function is plotted in db units, it 
% is also the Power Transfer Function, Eq. (2-147), in dB units

subplot(312);
semilogx(f,Theta);
xlabel('f  in Hz');
ylabel('Angle of H(f), degrees');
grid;



% Second, plot the time delay function as given by Eq. (2-155).

% Evaluate the Time Delay response
for (k = 1:10)
    Td(k) = (1/(2*pi*f(k)))*tanh(f(k)/fo);
end


% Plot the Time Delay response
subplot(313);
semilogx(f,Td);
title(['Time Delay Response where fo = ',num2str(fo),' ']);
xlabel('f  in Hz');
ylabel('Td in sec(t)');
grid;


