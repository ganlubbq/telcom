% This is a HELP file that gives lines of code that are useful to use 
% to solve Communication problems. 

% This file is NOT intended to be Run as a MATHCAD program.

% You can use this file to copy appropriate lines of code below and paste
% them into MATLAB files that you are developing for solving a problem.
% Of course, the parameters in these lines of code need to be changed to
% fit the problem that you are developing. 


% Catalog of some useful Matlab statements


% Use in for and if loops
t = 0:dt:4*Ta;
x = Ac*(1+a*cos(wa*t));
for (i = 1:1:length(x))
  if (x(i) < 0)
    x(i) = 0;
  end;
end;
y = zeros(length(t),1);

% This is the code for printing
fprintf('\nSee Window for plot.\n');
fprintf(['\n   is down by only ',num2str(dBdown), ' dB at 1000 Hz. \n\n']);
fprintf('\nA      = %g',m);

% If fprintf below is used in a loop, it will create a string of dots, 
% one dot added esch time the loop is incremented
fprintf('.');

% This is the code for plotting
subplot(211)
plot(t,v1,'*',t,v2,'--',t,v3,':');
axis([0 2 0 12]);
xlabel('t in sec -->');
ylabel('v(t)');
text(1,8,'a=0.1: Asterisk');
text(1,6,'a=1.0: Dashed Line');
text(1,4,'a=10: Dotted Line');
title(['Impulse Response where 1/tau = ',num2str(1/tau),' ']);

plot(t,m,'--',t,sp);
stem(freq,G)

% Semilog on y Axis, linear on x axis
semilogy(t,v1,'*',t,v2,'--',t,v3,':')   

% Semilog on x Axis, linear on y axis
semilogx(t,v1,'*',t,v2,'--',t,v3,':')   


% Integrating using the quad function 
% To evaluate the intergal from a to b
% The intergrand is given by the function defined in the file P5_34mod.m
% The function id y = P5_34mod(x) where x and y are vectors,
% each one of length(x),defined by the quad integration algorithm.
  z = quad(@P5_34mod,a,b);
