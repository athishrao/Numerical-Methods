function [k,p]=secant(x_0,x_1,string)
fprintf('Secant method of Computing Roots: ');
eps_abs= 10^-8;
% prompt=('Enter Function: \n');
% b= input(prompt);
b=string;
j=1;
k1=x_0;
k2=x_1;
p=0;
while (j>eps_abs)
    p=p+1
    x=k1;
    a=eval(b);
    x=k2;
    d=eval(b);
    k= k2-((k2-k1)*(d/(d-a)));
    k1=k2;
    k2=k;
    j=abs(((k2-k1)*(d/(d-a))));
end
% 
% l='The Value of the root is: %1.6f \n';
% fprintf(l,k);
% m='Number of iteration(s) is/are: %1.0f \n';
% fprintf(m,p);
end
