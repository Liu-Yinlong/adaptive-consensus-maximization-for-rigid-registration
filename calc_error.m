function [e_r,e_t] = calc_error(R1,R2,t1,t2)
%CALC_ERROR �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
e_r=rad2deg(norm(rotationMatrixToVector(R1*R2')));
% e_r=acosd(0.5*(trace(R1*R2')-1));
e_t=norm(t1-t2);
end

