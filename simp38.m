%Composite Simpson's rule

clc
format long

%f(x)
f=@(x) x;

%limits of integration
a=input('Enter lower limit of integration : ');
b=input('Enter uppper limit of integration : ');

n=33;  %sub-intervals divisible by 3
h=(b-a)/n;
m=n/2;

A=f(a);
B=f(b);

sum1=0;
for i=2:3:n-1
    sum1=sum1 + 3*f(a+(i)*h);   
end

sum2=0;
for i=3:3:n-3
    sum1=sum1 + 3*f(a+(i)*h);   
end

sum3=0;
for i=4:3:n-2
    sum3=sum3 + 2*f(a+(i)*h);   
end

I=(A + sum1 + sum2 + sum3 + B)*(3*h/8);

disp('Simpson 3/8 Integral is : ')
disp(I)