% generate all-in-one picture of 6 joints torques

joint_1_vel = load('sample_trajectory_3/velocity/velocity_1_2_joint.mat');
joint_2_vel = load('sample_trajectory_3/velocity/velocity_2_3_joint.mat');
joint_3_vel = load('sample_trajectory_3/velocity/velocity_3_4_joint.mat');
joint_4_vel = load('sample_trajectory_3/velocity/velocity_4_5_joint.mat');
joint_5_vel = load('sample_trajectory_3/velocity/velocity_5_6_joint.mat');
joint_6_vel = load('sample_trajectory_3/velocity/velocity_6_7_joint.mat');

joint_1_vel_value = (180.0/pi)*joint_1_vel.velocity.Data;
joint_2_vel_value = (180.0/pi)*joint_2_vel.velocity.Data;
joint_3_vel_value = (180.0/pi)*joint_3_vel.velocity.Data;
joint_4_vel_value = (180.0/pi)*joint_4_vel.velocity.Data;
joint_5_vel_value = (180.0/pi)*joint_5_vel.velocity.Data;
joint_6_vel_value = (180.0/pi)*joint_6_vel.velocity.Data;

time = joint_1_vel.velocity.Time;

f = figure;
% f.Position = [0 0 1000 1000]; % resize the image
title('Angle Velocity time series');

% add plot for 1_2_joint
plot(time, joint_1_vel_value,'LineWidth', 1.2);

hold on;
% add plot for 2_3_joint
plot(time, joint_2_vel_value, 'LineWidth', 1.2);

% add plot for 3_4_joint
plot(time, joint_3_vel_value, 'LineWidth', 1.2);

% add plot for 4_5_joint
plot(time, joint_4_vel_value, 'LineWidth', 1.5);

% add plot for 5_6_joint
plot(time, joint_5_vel_value, 'LineWidth', 1.5);

% add plot for 6_7_joint
plot(time, joint_6_vel_value,  'LineWidth', 1.5);

% add legend
legend({'joint-1', 'joint-2', 'joint-3', 'joint-4', 'joint-5', 'joint-6'},'FontSize',18);
xlabel('Time (sec)', 'FontSize', 22, 'FontWeight', 'bold');
ylabel('Velocity (degree/s)', 'FontSize', 22, 'FontWeight', 'bold');
xlim([0 5]);

hold off;
% all-6-images-in-one
print(f, 'sample_trajectory_3/image/all-in-one-image-velocity', '-dpng');

clear;