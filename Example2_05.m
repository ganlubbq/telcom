% File: Example2_05.m for Example 2-5

% This example plots W(f) for a designated values of A, fo, and thets0

% The Magnitude-Phase Spectral Functions
% will be plotted.
% The Magnitude function will be plotted in dB units.
% The Phase function will be plotted in degree units.

clear;

thetao  = 0;
% For this solution to this M file to be valid, fo is 
% selected to be a positive integer less that 100.
fo = 40;
A = 30;
% Enter thetao in degree units
thetao = 20;

f = (-100):1:(100);

for k = 1:201
    W(k) = 0;
  
    if f(k)==fo;
        W(k) = A/2;
    end
        
    if f(k)==-fo
        W(k) = A/2;
    end
end

for k = 1:201
    theta(k) = 0;
    
    if f(k)<0,
       theta(k) = 90-thetao; 

    end
    
    if f(k)>0,
       theta(k) = -90+thetao; 

    end
end    
    

B = log(W);
WdB = (20/log(10))*real(B);

subplot(211);
stem(f,WdB);
xlabel('f');
ylabel('W(f) in dB');
grid;

subplot(212);
plot(f,theta);
xlabel('f');
ylabel('Angle of W(f) in degrees');
grid;




