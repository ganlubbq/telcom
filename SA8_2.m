% File: SA8_2.m for SA8-2

clear;


CNdB = 16.03;
LfadedB = 4.0;
fprintf('\n(C/N)db=%g dB   ',CNdB)
fprintf('      LfadedB=%g db',LfadedB)
CNfadedB = CNdB - LfadedB;
fprintf('\n(C/N)fadedB=%g dB     ',CNfadedB)
EbNodB = CNfadedB + 10*log10(24/40);
fprintf('(Eb/No)fsdrdB=%g dB   ',EbNodB)
EbNo = 10^(EbNodB/10);
z = sqrt(2*EbNo);
fprintf('\n\nz=%g    ',z)
BER = Q(z);
fprintf('\nBER=Q(z)=%g\n\n',BER)







