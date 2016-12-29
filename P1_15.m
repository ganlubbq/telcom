% File: P1_15.m

clear;
fprintf('\n');

% Part a.
% chars = Number of available characters
chars = input('Enter the Number of available characters: ');
% Determining the number of bits required to represent a character.
b = ceil(log(chars)/log(2));
fprintf('\n\nThe number of bits required to represent a character = %G\n\n',b);

% Part b.
% B = Channel Bandwidth in Hz.
% SNRdB = Signal to Noise ratio in dB.
B = input('Enter the Channel bandwidth in Hz: '); 
SNRdB = input('Enter the Signal to Noise ratio in dB: ');

SNR = 10^(SNRdB/10);

% Using Shannon's channel capacity theorem
C = B*log(1 + SNR)/log(2);
fprintf('\n\nThe channel capacity is %G (bits/sec)\n',C);
fprintf('or equivalently %G (chars/sec)\n\n',C/b);

% Part c.
% Calculating the Information content of each character assuming that
% each character is equally likely to be sent.

% p = probability of a given character being sent
p = 1/chars;
I = -log(p)/log(2);
fprintf('The information content of each character is %G (bits)\n',I);





