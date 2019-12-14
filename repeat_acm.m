function [E_r,E_t,Tim] = repeat_acm(inlier,outlier,noise,c0)
%TEST_OUTLIER 此处显示有关此函数的摘要
%   此处显示详细说明
for i=1:100
    [R,t,data_x,data_y] = gen_data_rigid(inlier,outlier,noise);
    tic
    [opt_R,opt_t] = acm_getRt(data_x,data_y,c0,0.5);
    tim(i)=toc;
    [e_r(i),e_t(i)] = calc_error(opt_R,R,opt_t,t);
    disp(['iter:' num2str(i)])
end
E_r=max(e_r);
E_t=max(e_t);
Tim=max(tim);
figure; bar(e_r);title('rot error');print(gcf,'rot_error','-dpng')
figure; bar(e_t);title('trans error');print(gcf,'trans_error','-dpng')
figure; bar(tim);title('run time');print(gcf,'run_time','-dpng')
end

