function [ s ] = PDChek ( a )
%Shahin Hasan Beigi          
%   This function cheking that a martix is positive definit or not
%Return s=1 if matrix is a positive definit matrix 
%Return s=0 if it's not.
n=length(a);

s=1;

for i=1:n
    D=a(1:i,1:i);   %Extract the main submatrixes of matrix A
    if det(D)<=0
        s=0;
        break
    end
end
