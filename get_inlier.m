function [data_x_inlier,data_y_inlier] = get_inlier(data_x,data_y,R,t,delta)
%GET_INLIER �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
ind=(vecnorm(R*data_x+t-data_y))<=delta;
data_x_inlier=data_x(:,ind);
data_y_inlier=data_y(:,ind);
end

