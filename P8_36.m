% File: P8_36.m for Problem 8-36

clear;

% Antenna Characteristics
Gar = 10^(65.53/10);
Tar = 60;
% Waveguide Characteristics
L1 = 10^(1.28/10);
Te1 = 290*(L1-1);
% LNA Characteristics 
G2 = 10^(60/10);
Te2 = 50;
% Downconverter Characteristics
Te3 = 11000;

% (a) Find (G/T)dB at the input to the LNA
fprintf('\nAnswers to part (a): Input to LNA');
Ts = (Tar + Te1)/L1 + Te2 + Te3/G2;
Gs = Gar/L1;
GTsdB = 10*log10(Gs/Ts);
fprintf('\n  Ts = %g',Ts);
fprintf('\n  Ga = %e',Gs);
fprintf('\n  (G/T)db = %g',GTsdB);

% (b) Find (G/T)dB at the input to the waveguide
fprintf('\n\nAnswers to part (b): Input to waveguide');
Ts = Tar + Te1 + Te2*L1 + Te3*L1/G2;
Gs = Gar;
GTsdB = 10*log10(Gs/Ts);
fprintf('\n  Ts = %g',Ts);
fprintf('\n  Ga = %e',Gs);
fprintf('\n  (G/T)db = %g',GTsdB);

% (b) Find (G/T)dB at the input to the downconverter
fprintf('\n\nAnswers to part (c): Input to Down Converter');
Ts = (Tar + Te1)*G2/L1 + Te2*G2 + Te3;
Gs = Gar*G2/L1;
GTsdB = 10*log10(Gs/Ts);
fprintf('\n  Ts = %g',Ts);
fprintf('\n  Ga = %e',Gs);
fprintf('\n  (G/T)db = %g',GTsdB);
fprintf('\n\n');

