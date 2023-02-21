%Shahin Hasan Beigi        
%Optimization Project  
%Dr. MohammadRea Eslahchi
%Hessian Modification 
%%
clc
clear                   %Clear previos data
%%
a=input('insert the matrix A:')     %Taking matrix from user
n=length(a);
b=frobenios(a);                          %Compute the frobenios norm of matrix
w=min(diag(a));
if w>0
    t=0;
else
    t=b/2;
end
k=1;
s=PDChek(a);                               %Checking that matrix is positive definit or not
if s==1                                          %If it is positive definit applying "Cholesky Factorization" on matrix
    l=LLT(a);                                   % Computing the cholesky factor L 
    disp('______________________________________________________________________________')
    disp('The cholesky factor is : ')
    disp(l);                                       %Showing the cholesky factor L
else
    while s~=1                                  %If it is not positive definit 
        a=a+(t(k)*eye(n,n));                 %Adding a multiple of Identity to matrix
        if PDChek(a)==1                     %Cheking for positive definity
            v=LLT(a);
            disp('______________________________________________________________________________')
            disp('The cholesky factor of modified matrix is :')
            disp(v);
            disp('______________________________________________________________________________')
            disp(['The number of modification is : ',num2str(k)]); 
            disp('and the matrix turns to :')
            disp(v*v')
            break
        else
            t(k+1)=max(2*t(k),b/2);         %Changing the multiply
        end
        k=k+1;
    end
end
 