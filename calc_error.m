function [e_r,e_t] = calc_error(R1,R2,t1,t2)
%CALC_ERROR 此处显示有关此函数的摘要
%   此处显示详细说明
e_r=rad2deg(norm(rotationMatrixToVector(R1*R2')));
% e_r=acosd(0.5*(trace(R1*R2')-1));
e_t=norm(t1-t2);
end

