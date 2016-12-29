% File: Example2_11.m for Example 2-11 and Eq (2-72)

% This example plots PSD, Pw(f), for a designated 
% values of A and fo

% The Power Spectral Density will be plotted.
% The PSD will be plotted in dB units.


clear;


% For this solution to this M file to be valid, fo is 
% selected to be a positive integer less that 100.
fo = 40;
A = 5;


f = (-100):10:(100);

for k = 1:length(f)
    PSD(k) = 0;
  
    if f(k)==fo;
        PSD(k) = (A^2)/4;
    end
        
    if f(k)==-fo
        PSD(k) = (A^2)/4;
    end
end

  
    
B = log(PSD);
PSDdB = (10/log(10))*real(B);

subplot(211);
stem(f,PSD);
xlabel('f in Hz -->');
ylabel('PSD(f)');
grid;

subplot(212);
stem(f,PSDdB);
xlabel('f in Hz -->');
ylabel('PSDdB(f) in dB');
grid;




