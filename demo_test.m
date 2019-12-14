clear;clc;
inlier_num=2000;
outlier_num=5000;
noise_level=0.01;
%% =====================run one time=====================%%
% % [R,t,data_x,data_y] = gen_data_rigid(inlier_num,outlier_num,noise_level);
% % [opt_R_,opt_t_] = getRt(data_x,data_y);
% % [e_r_,e_t_] = calc_error(opt_R_,R,opt_t_,t)
% % tic
% % [opt_R,opt_t] = acm_getRt(data_x,data_y,0.01,0.5);
% % tim=toc;
% % [e_r,e_t] = calc_error(opt_R,R,opt_t,t)
%%=====================run one time=====================%%
%% repeat 100 times===============%%
[E_r,E_t,Tim] = repeat_acm(inlier_num,outlier_num,noise_level,0.05);
disp(['max rot error:',num2str(E_r),'(degree)',' max tran error:', num2str(E_t),' Time£º',num2str(Tim),'(s)']);