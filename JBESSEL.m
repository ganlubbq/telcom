function y = JBESSEL(n,beta);
if n <0
    y = ((-1)^n)*besselj(-n,beta);
else 
    y = besselj(n,beta);
end;




