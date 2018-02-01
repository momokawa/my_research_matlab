% generate all-in-one picture of 6 joints torques

bracket_1_2_joint_torque = load('bracket_1_2_joint_torque.mat');
bracket_2_3_joint_torque = load('bracket_2_3_joint_torque.mat');
bracket_3_4_joint_torque = load('bracket_3_4_joint_torque.mat');
bracket_4_5_joint_torque = load('bracket_4_5_joint_torque.mat');
bracket_5_6_joint_torque = load('bracket_5_6_joint_torque.mat');
bracket_6_7_joint_torque = load('bracket_6_7_joint_torque.mat');

bracket_1_2_val = bracket_1_2_joint_torque.bracket_1_2_joint_torque.Data;
bracket_2_3_val = bracket_2_3_joint_torque.bracket_2_3_joint_torque.Data;
bracket_3_4_val = bracket_3_4_joint_torque.bracket_3_4_joint_torque.Data;
bracket_4_5_val = bracket_4_5_joint_torque.bracket_4_5_joint_torque.Data;
bracket_5_6_val = bracket_5_6_joint_torque.bracket_5_6_joint_torque.Data;
bracket_6_7_val = bracket_6_7_joint_torque.bracket_6_7_joint_torque.Data;

time = bracket_1_2_joint_torque.bracket_1_2_joint_torque.Time;

f = figure;
f.Position = [0 0 1000 1000]; % resize the image
title('Torqeu time series');

% add plot for 1_2_joint
plot(time, bracket_1_2_val);

hold on;
% add plot for 2_3_joint
plot(time, bracket_2_3_val);

% add plot for 3_4_joint
plot(time, bracket_3_4_val);

% add plot for 4_5_joint
plot(time, bracket_4_5_val);

% add plot for 5_6_joint
plot(time, bracket_5_6_val);

% add plot for 6_7_joint
plot(time, bracket_6_7_val);

% add legend
legend('bracket_1_2-joint', 'bracket_2_3-joint', 'bracket_3_4-joint', 'bracket_4_5-joint', 'bracket_5_6-joint', 'bracket_6_7_joint');
xlabel('Time (sec)');
ylabel('T (N*m)');

hold off;
% all-6-images-in-one
print(f, 'sample_trajectory_3/image/all-in-one-image-torque', '-dpng');

