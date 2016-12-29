% File: Example6_05.m for Example 6-5

clear;
clf

% Set values for data autocorrelation function .  For example, 
% evaluate the spectrum for a Bipolar RZ and NRZ Line Codes using the 
% autocorrelation values given (3-44).

% Note that R(i) corresponds to R{subscript i-1}.  Therefore,
% R(1) is the autocorrelation function evaluated at zero time shift.
% Using the fact that R(-k) = R(k) to simplify evaluation

Rb = 1;
Tb = 1/Rb;
df = 0.02*Rb;
f = 0:df:3*Rb;

% ------------------------------------------------------------
% For RZ 
A = 2;
R = [A^2/2 -(A^2)/4 0 0 0 0];
x = (pi*Tb/2)*f;
F = 0.5*Tb*SA(x);

% Generating PSD of the RZ Bipolar Line Code using (6-70a)
P = zeros(length(f),1);
for (i = 1:1:length(f))
  P(i) = (abs(F(i)))^2/Tb;
  temp = 0;
  for (k = 2:1:length(R))
    temp = temp + R(k)*cos(4*(k-1)*x(i));
  end;
  P(i) = P(i)*(R(1)+2*temp);
end;

fprintf('\nRefer to (3-44) for the R(k) of a Bipolar line code.\n');
fprintf('\nSee Window for the PSD of RZ and NRZ Bipolar Line Codes\n');
fprintf('where Rb = %g',Rb)
fprintf(' bits/sec.\n\n');

subplot(211)
plot(f,P);
xlabel('f in Hz -->');
ylabel('P(f)');
title(['PSD of Bipolar RZ Line Code where Rb = ',num2str(Rb),' bits/sec']);
grid;

% --------------------------------------------------------
% For NRZ 
A = sqrt(2);
R = [A^2/2 -(A^2)/4 0 0 0 0];
x = (pi*Tb)*f;
F = Tb*SA(x);

% Generating PSD of the NRZ Bipolar Line Code using (6-70a)
P = zeros(length(f),1);
for (i = 1:1:length(f))
  P(i) = (abs(F(i)))^2/Tb;
  temp = 0;
  for (k = 2:1:length(R))
    temp = temp + R(k)*cos(4*(k-1)*x(i));
  end;
  P(i) = P(i)*(R(1)+2*temp);
end;

Subplot(212)
plot(f,P);
xlabel('f in Hz -->');
ylabel('P(f)');
title(['PSD of Bipolar NRZ Line Code where Rb = ',num2str(Rb),' bits/sec']);
grid;
% --------------------------------------------------------



