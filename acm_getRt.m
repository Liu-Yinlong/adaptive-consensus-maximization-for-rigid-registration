function [R,t] = acm_getRt(data_x,data_y,c0,k)
%ACM_GETRT �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
[R_ini,t_ini] = getRt(data_x,data_y);
delta=max(vecnorm(R_ini*data_x+t_ini-data_y));

R_pre=R_ini;
t_pre=t_ini;

while(delta>c0)
    [R,t] = inner_EM_Rt(data_x,data_y,R_pre,t_pre,delta);
    delta=delta*k;
    R_pre=R;
    t_pre=t;

end


end

