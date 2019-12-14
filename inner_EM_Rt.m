function [R,t] = inner_EM_Rt(data_x,data_y,R_in,t_in,delta)
%INNER_EM_RT 此处显示有关此函数的摘要
%   此处显示详细说明

while(1)

    [data_x_inlier,data_y_inlier] = get_inlier(data_x,data_y,R_in,t_in,delta);
    if(size(data_x_inlier,2)==0)
        warning('Inlier threshold is too small!')
        keyboard
    end
    [R,t] = getRt(data_x_inlier,data_y_inlier);
    [e_r,e_t] = calc_error(R_in,R,t_in,t);
    if(e_r<0.1 && e_t<1e-3)
        break;
    end
    R_in=R;
    t_in=t;

end


end

