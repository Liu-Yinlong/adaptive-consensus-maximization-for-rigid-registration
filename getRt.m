function [R,t] = getRt(data_x,data_y)
%GETR Summary of this function goes here
%   Detailed explanation goes here
a=mean(data_x,2);
b=mean(data_y,2);
x=data_x-a;
y=data_y-b;

W=y*x';
[U,~,V]=svd(W);

R=U*diag([1,1,det(U*V')])*V';
t=b-R*a;
end

