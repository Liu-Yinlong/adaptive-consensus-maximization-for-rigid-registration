function [R,t,data_x,data_y] = gen_data_rigid(inlier,outlier,noise)
%GEN_DATA_RIGID Summary of this function goes here
%   Detailed explanation goes here

data_x_inlier=rand(3,inlier);
R=rotationVectorToMatrix(rand(3,1));
t=rand(3,1)*2-1;
data_y_inlier=R*data_x_inlier+t;

data_x_outlier=rand(3,outlier)*2-1;
data_y_outlier=rand(3,outlier)*2-1;

data_x=[data_x_inlier,data_x_outlier]+normrnd(0,noise,3,inlier+outlier);
data_y=[data_y_inlier,data_y_outlier]+normrnd(0,noise,3,inlier+outlier);

end

