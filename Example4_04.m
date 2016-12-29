% File: Example4_04.m       for Example 4-4

clear;
clf

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

subplot(221);
semilogx(f,HdB);
title(['Transfer Function for a RC low-pass filter'])
xlabel('f  in Hz');
ylabel('H(f) & G(f) in dB');
grid;
% Note: Since this Transfer Function is plotted in db units, it 
% is also the Power Transfer Function, Eq. (2-147), in dB units

subplot(223);
semilogx(f,Theta);
xlabel('f  in Hz');
ylabel('Angle of H(f), degrees');
grid;



% Second, plot the Time Delay function as given by Eq. (2-155).
% Evaluate the Time Delay response
for (k = 1:10)
    Td(k) = (1/(2*pi*f(k)))*tanh(f(k)/fo);
end


% Plot the Time Delay response
subplot(222);
semilogx(f,Td);
title(['Time Delay where fo = ',num2str(fo),' ']);
xlabel('f  in Hz');
ylabel('Td in sec(t)');
grid;


% Third, plot the Group Delay function as given by Eq. (4-27b).
% Evaluate the Group Delay response
% Note: From Eq.(2-154),  Theta(f)=-arctan(f/fo) and
% using darctan(x)/dx=1/(1+x^2) we get the Tg(f) as ahown below. 
for (k = 1:10)
    Tg(k) = (1/(2*pi))*fo/((fo^2)+f(k)^2);
end


% Plot the Group Delay response
subplot(224);
semilogx(f,Tg);
title(['Group Delay where fo = ',num2str(fo),' ']);
xlabel('f  in Hz');
ylabel('Tg in sec(t)');
grid;


