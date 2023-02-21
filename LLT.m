function [ l ] = LLT ( a )
%Shahin Hasan Beigi      
%   This function computes the factor " L " of Cholesky factorization.

s=isequal(a,a');
if s==0
    disp('The Matrix is "NOT" Symmetric.');
    return
else
    n=length(a);
    l=zeros(n,n);
    for i=1:n
        for j=i:n 
            w=a(j,i);
            q=a(j,i);
            if i==j
                for k=1:i-1
                    w=w-(l(j,k)^2);
                end
                l(j,i)=sqrt(w);
            else
                for m=1:i-1
                    q=q-(l(j,m)*l(i,m));
                end
                l(j,i)=(q/l(i,i));
            end
        end
    end
end
k=PDChek(a);
if k==0
    disp('The Matrix is " NOT " Positive Definit.')
end


