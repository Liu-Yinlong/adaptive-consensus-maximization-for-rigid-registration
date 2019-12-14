function [data_x_inlier,data_y_inlier] = get_inlier(data_x,data_y,R,t,delta)
%GET_INLIER 此处显示有关此函数的摘要
%   此处显示详细说明
ind=(vecnorm(R*data_x+t-data_y))<=delta;
data_x_inlier=data_x(:,ind);
data_y_inlier=data_y(:,ind);
end

