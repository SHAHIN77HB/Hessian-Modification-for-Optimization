function [ a ] = frobenios ( x )
%Shahin Hasan Beigi     
%This function takes the "Frobenios" norm of a matrix.
sum=0;
n=numel(x);
for i=1:n
    sum=sum+(x(i)^2);
end
a=sqrt(sum);

