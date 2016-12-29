% File: SA8_1.m for SA8-1

clear;


d = 3.7E7;
F = 1.15;
Te = (F-1)*290;
lamda = 3E8/12.45E9;
Tar = 20;
fprintf('\nd=%g meters     ',d)
fprintf('F=%g    ',F)
fprintf('      lamda=%g meters    ',lamda)
fprintf('\nTar=%g degrees K    ',Tar)
GardB = 10*log10(7*pi*((0.46/2)^2)/lamda^2);
TsdB = 10*log10(Tar+Te);
fprintf('  TsdB=%g',TsdB)
GTdB = GardB - TsdB;
fprintf('\n(G/T)db=%g    ',GTdB)
LfsdB = 20*log10(4*pi*d/lamda);
fprintf('   LfsdB=%g dB',LfsdB)
BdB = 10*log10(24E6);
CNdB = 52-LfsdB+GTdB+228.6-BdB;
fprintf('\n(C/N)db=%g dB    ',CNdB)
EbNodB = CNdB + BdB - 10*log10(40E6);
fprintf('(Eb/No)dB=%g',EbNodB)
EbNo = 10^(EbNodB/10);
z = sqrt(2*EbNo);
fprintf('\n\nz=%g    ',z)
BER = Q(z);
fprintf('\nBER=Q(z)=%g\n\n',BER)







