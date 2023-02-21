function [ c ] = PM( f )
%Shahin Hasan Beigi      
%This function computes the multiplies of polynomials
syms x
n=0
a=f
z=1
while z==1
    a=diff(a)
    n=n+1
    if a==0
        break
    else
        z=1
    end
end
for i=1:n-1
    x=0
    c(n-i)=eval(diff(f,i))/factorial(i)
end

end


