% File: Example5_10.m for Example 5-10 and Fig. 5-27

clear;

% Setting the value of the modulation index
h = 0.7;

Ac = 1;
R = 1;
Tb = 1/R;
DF = h*R/2;

df = 1.5*R/50;
f = 0:df:1.5*R;

xf = 2*pi*f*Tb;
xF = 2*pi*DF*Tb;

% Generating Equation 5-90b for An(f) for n = 1,2;
A1 = SA(pi*Tb*(f-DF*(2*1-3)));
A2 = SA(pi*Tb*(f-DF*(2*2-3)));

% Generating Bij(f) for ij=11,12,22 (See equation 5-90a)
xc11 = xF*(1+1-3);
xc12 = xF*(1+2-3);
xc22 = xF*(2+2-3);
B11 = zeros(length(xf),1);
B12 = zeros(length(xf),1);
B22 = zeros(length(xf),1);
for (i = 1:1:length(xf))
  B11(i) = (cos(xf(i)-xc11) - cos(xF)*cos(xc11));
  B11(i) = B11(i)/(1+cos(xF)^2-2*cos(xF)*cos(xf(i)));
  B12(i) = (cos(xf(i)-xc12) - cos(xF)*cos(xc12));
  B12(i) = B12(i)/(1+cos(xF)^2-2*cos(xF)*cos(xf(i)));
  B22(i) = (cos(xf(i)-xc22) - cos(xF)*cos(xc22));
  B22(i) = B22(i)/(1+cos(xF)^2-2*cos(xF)*cos(xf(i)));
end;

% Combining terms to produce equation 5-90a
P1 = (A1.*A1).*(1 + B11);
P2 = (A2.*A2).*(1 + B22);
P12 = (2*B12).*(A1.*A2);
P = 0.5*Ac^2*Tb*(P1+P2+P12);

plot(f,P);
xlabel('f -->');
ylabel('P(f)');
title(['Equation (5-90a) using a mod. index of h = ', num2str(h)]);
grid;



