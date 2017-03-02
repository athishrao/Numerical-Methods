function [x,m]=newton(x_0,string)
fprintf('Newton"s Numerical method of Computing Roots: ');
eps_abs= 10^-8;
%syms x
% prompt=('Enter Function');
% b= input(prompt);
b=string;
j= diff(b);
x=x_0;
a=eval(b);
m=0;
while abs(a)>eps_abs
    m=m+1;
    a= eval(b);
    p=eval(j);
    h=a/p;
    x=x - a/p;
end
% l='The Value of the root is: %1.6f \n';
% fprintf(l,x);
% p='Number of iteration(s) is/are: %1.0f \n';
% fprintf(p,m);
end




