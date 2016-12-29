% File: Example2_01.M    For Example 2-1

clear;

fo = 60;
t = 0:0.0002:0.03;
wo = 2*pi*fo;

% Select theta to be the phase shift of current in degrees
theta = 0;

current = 5*cos(wo*t + theta*(pi/180));
volts = 10*cos(wo*t);

% Using Eq. (2-6)
instpower = current.*volts;

plot(t,instpower);
xlabel('time');
ylabel('Instantaneous Power');
title('Instantaneous Power as a function of Time');






