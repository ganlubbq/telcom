function p = PulseC(t,r, R);
% File: PulseC.m     
% Generates the equivalent impulse response for a Raised 
% Cosine-Rolloff filter.
% This function is used for Example3_15.m of Example 3-15.

% t = Input vector that corresponds to the discrete time values.
% r = Rolloff Factor
% R = Bit Rate


fo = R/2;
fd = r*R/2;
x = 2*pi*fo;
y = 2*pi*fd;
i = length(t);

for (i = 1:length(t));
    p(i) = 2*fo*SA(x*t(i))*(cos(y*t(i))/(1-((4*fd*t(i))^2)));
end;

