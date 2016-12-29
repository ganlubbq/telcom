% File: SA1_1.m for Study-aid Example SA1-1

clear;

% This illustrates how the antemma height affects the LOS distance.

h1=input ('Enter the transmit antenna height in feet.  ');
h2=input ('Enter the receive antenna height in feet.  ');

% d is distance in miles
d = sqrt(2*h1) + sqrt(2*h2);
fprintf('The LOS distance is %g miles\n',d);



