% File: SA7_3.m for Study-aid Example SA7-3

clear;


No2 = 3e-5;
A = 5;
R = 9600;
No = 2*No2;
EbNodB = 10*log10(A^2/(2*No*R));
fprintf('\nR=%g bits/sec    ',R)
fprintf('EbNodB=%g dB' ,EbNodB)


% Calculate results for a receiver with a a RC low-pass filter
B = 2*R;
fprintf('\n\nResults for receiver with RC LPF with B=%g Hz',B)
SNRLPF = 10*log10(A^2/(2*No*B));
fprintf('\nSNRLPF=%g dB',SNRLPF)
z1 = sqrt(A^2/(4*No*B));
fprintf('\nz1=%g',z1)
BERLPF = Q(z1);
fprintf('\nBERLPF=%g',BERLPF)


% Calculate results for receiver with Matched Filter
fprintf('\n\nResults for receiver with Matched Filter')
SNRMF = 10*log10(A^2/(No*R));
fprintf('\nSNRMF=%g dB',SNRMF)
z2 = sqrt(A^2/(2*No*R));
fprintf('\nz2=%g',z2)
BERMF = Q(z2);
fprintf('\nBERMF=%g\n\n',BERMF)

