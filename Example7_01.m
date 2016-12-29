% File: Example7_01.m for Example 7-1

% Note: This file uses the Q(z) function that is evaluated by the file Q.m

clear;

fprintf('\nThe following parameter values have been selected:\n')

% Set s01, s02, Vt, and sig0
s01  = 6;
s02  = 0;
Vt   = 3;
sig0 = 0.75;
fprintf('\ns01  = %g',s01)
fprintf('\ns02  = %g',s02)
fprintf('\nVt   = %g',Vt)
fprintf('\nsig0 = %g',sig0)

Pe = 0.5*Q((-Vt+s01)/sig0)+0.5*Q((Vt-s02)/sig0);

fprintf('\n\nThe resulting BER is:\n')
fprintf('\nPe = %g\n',Pe)

