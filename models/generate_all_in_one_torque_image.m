% generate all-in-one picture of 6 joints torques

bracket_1_2_joint_torque = load('sample_trajectory_3/torque/bracket_1_2_joint_torque.mat');
bracket_2_3_joint_torque = load('sample_trajectory_3/torque/bracket_2_3_joint_torque.mat');
bracket_3_4_joint_torque = load('sample_trajectory_3/torque/bracket_3_4_joint_torque.mat');
bracket_4_5_joint_torque = load('sample_trajectory_3/torque/bracket_4_5_joint_torque.mat');
bracket_5_6_joint_torque = load('sample_trajectory_3/torque/bracket_5_6_joint_torque.mat');
bracket_6_7_joint_torque = load('sample_trajectory_3/torque/bracket_6_7_joint_torque.mat');

bracket_1_2_val = bracket_1_2_joint_torque.torque.Data;
bracket_2_3_val = bracket_2_3_joint_torque.torque.Data;
bracket_3_4_val = bracket_3_4_joint_torque.torque.Data;
bracket_4_5_val = bracket_4_5_joint_torque.torque.Data;
bracket_5_6_val = bracket_5_6_joint_torque.torque.Data;
bracket_6_7_val = bracket_6_7_joint_torque.torque.Data;

time = bracket_1_2_joint_torque.torque.Time;

f = figure;
% f.Position = [0 0 1000 1000]; % resize the image
title('Torqeu time series');

% add plot for 1_2_joint
plot(time, bracket_1_2_val, 'LineWidth', 1.5);

hold on;
% add plot for 2_3_joint
plot(time, bracket_2_3_val, 'LineWidth', 1.2);

% add plot for 3_4_joint
plot(time, bracket_3_4_val, 'LineWidth', 1.2);

% add plot for 4_5_joint
plot(time, bracket_4_5_val, 'LineWidth', 1.2);

% add plot for 5_6_joint
plot(time, bracket_5_6_val, 'LineWidth', 1.2);

% add plot for 6_7_joint
plot(time, bracket_6_7_val, 'LineWidth', 1.2);

% add legend
legend({'joint-1', 'joint-2', 'joint-3', 'joint-4', 'joint-5', 'joint-6'});
xlabel('Time (sec)', 'FontWeight', 'bold');
ylabel('T (Nm)', 'FontWeight', 'bold');
xlim([0 5]);

hold off;
% all-6-images-in-one
print(f, 'sample_trajectory_3/image/all-in-one-image-torque', '-dpng');

clear;
