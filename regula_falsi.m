function [y,j]=regula_falsi(x_1,x_0,string)
fprintf('Regla-Falsi method of Computing Roots: ');
eps_abs= 10^-4;
% prompt=('Enter Function: \n');
% b= input(prompt);
b=string;
j=1;
k1=x_0;
k2=x_1;
p=0;
while (j>eps_abs)
    p=p+1;
    x=k1;
    a=eval(b);
    x=k2;
    d=eval(b);
    t=d*a;
    if t<0
        k= k2-((k2-k1)*(d/(d-a)));
        x=k;
        c=eval(b);
        if c==0
            k;
            return;
        end
        if a*c<0
            k2=k; 
        else
            k1=k;
        end
        j=abs(((k2-k1)*(d/(d-a))));
        
    else
        'No root in this interval please run the program again with anotehr interval'
        break;
    end
    if (j<eps_abs)
        if k2 == k
            'k2';
            y=k2;
            j=p;
            return
        end
        if k1 == k
            'k1';
            y=k1;
            j=p;
            return
        end
    end
end
l='The Value of the root is: %1.4f \n';
fprintf(l,y);
m='Number of iteration(s) is/are: %1.0f \n';
fprintf(m,p);
end
