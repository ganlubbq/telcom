% FILE: P1_18.m

% Solution to Convolutional Encoder

clear;
fprintf('\n');

% Defining the input vector, x.  The left-most value is the first data bit.
x = [1 0 1 1 1];
fprintf('The input vector is:\n');
x

% Initializing the shift-register
s = zeros(4,1);

% Defining the Connections between the shift-register and the
% Modulo-2 adders;

add1 = [1 0 0 1];
add2 = [1 1 1 1];
out1 = 0;
out2 = 0;

% Shifting the input vector through the shift-register.
for (bit_in = 1:length(x))
  for (state_shift = length(s):-1:2)
    s(state_shift) = s(state_shift-1);
  end;
  s(1) = x(bit_in);
% Performing modulo-2 addition
  out1 = [out1; rem(add1*s,2)];
  out2 = [out2; rem(add2*s,2)];
end;

% Forming the encoder output
out1 = out1(2:length(out1));
out2 = out2(2:length(out2));
output = [out1';out2'];
output = output(:)';
fprintf('The output vector is:\n');
output




