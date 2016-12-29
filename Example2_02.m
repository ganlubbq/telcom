% File: Example2_02.M    For Example 2-2

clear;


theta = 0:pi/50:2*pi;

current = 5*cos(theta);
volts = 10*cos(theta);

% Using Eq. (2-6)
instpower = current.*volts;

% Plot the instantaneous power over one cycle of the 
% sinusoidal voltage and current 
% plot(theta,instpower);
xlabel('theta');
ylabel('Instantaneous Power');
title('Instantaneous Power');

% Note that the plotted result agrees with Figure 2-3c.

% Calculate the Average Power

AvgPower = (1/(2*pi))*trapz(theta,instpower)

plot(theta,instpower,theta,AvgPower);





