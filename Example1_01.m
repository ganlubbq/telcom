% File: Example1_1.m  for Example 1-1

clear;

% hr is the receiving antenna height in feet

% ht is antenna height in feet

% dr is distance to the horizon for the receiving antenna
% dt is distance to the horizon for the transmitting antenna
% d is LOS distance between the receiving and transmitting antennas 

% Select a value for the height(ft) of the Receiving Antenna, hr 
hr = 5;
dr = sqrt(2*hr);

ht = 0:10:1000;
dt = sqrt(2*ht);

d = dr +dt;

plot(ht,d);
text(710,22,'hr=')
text(760,22,num2str(hr))
xlabel('Transmitting Antenna Height in feet');
ylabel('LOS distance in miles');
title('Distance for LOS Propagation');
grid;

% Select a print-out value for the transmitting antenna height, htt
htt = 612.5;
dtt = sqrt(2*htt);
dfix = dr +dtt;

fprintf('\n\nFor a Receiving Antenna Height of %6.2f',hr);
fprintf(' ft\n');
fprintf('and a Transmitting Antenna Height of %6.2f',htt);
fprintf(' ft\n');
fprintf('\nThe LOS distance is %6.2f',dfix);
fprintf(' miles\n');
fprintf('\nSee the Window for a plot of the LOS as a\n');
fprintf('function of the Transmitting Antenna Height for a');
fprintf('\nReceiving Antenna Height of %6.2f',hr);
fprintf(' ft\n\n');

