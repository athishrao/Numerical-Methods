function [y,j]=bisect(a,b,string)
fprintf('Bisection method of Computing Roots:');
eps_abs= 10^-6;
syms x
% prompt=('Enter Function');
% b= input(prompt);
i=0;
q=1;
% string=diff(string)
while (q)>eps_abs
    i=i+1;
    x=a;
    f= eval(string);
    x=b;
    g= eval(string);
    if f==0
        fprintf('a is the root. \n');
        y=a;
        j=1;
        return
    end
    if g==0
        fprintf('b is the root. \n');
        y=b;
        j=1;
        return
    end
    if (f*g>0 && i==1)
        fprintf('Enter Interval where root lies. \n')
        fprintf('Below Values are indicative of ERROR in entered interval \n')
        y=-1;
        j=-1;
        return
    end
    if f*g<0
        c= (a+b)/2;
        x=c;
        e= eval(string);
        if e > 10^2
            fprintf('Enter Interval where root lies. \n');
            fprintf('Below Values are indicative of ERROR in entered interval \n');
            y=-1;
            j=-1;
            return
        end
        if e==0
            y=c;
            return
        elseif f*e<0
            b=c;
        else
            a=c;
        end
    end
    q=(b-a);
    if (q<eps_abs)
        if c==a
            y=a;
            j=i;
            return
        end
        if c==b
            y=b;
            j=i;
            return
    end
    end
end
l='The Value of the root is: %1.6f \n'
fprintf(l,y);
p='Number of iteration(s) is/are: %1.0f \n'
fprintf(p,i);

        
        