%Composite Simpson's rule

clc
format long

%f(x)
f=@(x) exp(-x.^2);

%limits of integration
a=input('Enter lower limit of integration : ');
b=input('Enter uppper limit of integration : ');

n=18;  %sub-intervals  even number of panels
h=(b-a)/n;
m=n/2;

A=f(a);
B=f(b);

sum1=0;
for i=1:2:n-1
    sum1=sum1 + 4*f(a+(i)*h);   
end

sum2=0;
for j=1:(n/2-1)
    sum2=sum2 + 2*f(a+(2*j)*h);
end

I=(A + sum1 + sum2 + B)*(h/3);

disp('Simpson 1/3 Integral is : ')
disp(I)