% File: P7_36.m  for Problem 7-36

clear;
clf

mpc = 0:5:100;

for (i = 1:1:length(mpc))
   SNoI(i) = ((mpc(i)/100)^2)/(1+0.5*((mpc(i)/100)^2));
end;

plot(mpc,SNoI);
xlabel('m%,   Percent Modulation  -->');
ylabel('SNoI(m%)');
grid; 

