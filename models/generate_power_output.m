% generate power output array with time
% from velocity file and torque file

% import torque array
bracket_1_2_joint_torque = load('sample_trajectory_3/torque/bracket_1_2_joint_torque.mat');
bracket_2_3_joint_torque = load('sample_trajectory_3/torque/bracket_2_3_joint_torque.mat');
bracket_3_4_joint_torque = load('sample_trajectory_3/torque/bracket_3_4_joint_torque.mat');
bracket_4_5_joint_torque = load('sample_trajectory_3/torque/bracket_4_5_joint_torque.mat');
bracket_5_6_joint_torque = load('sample_trajectory_3/torque/bracket_5_6_joint_torque.mat');
bracket_6_7_joint_torque = load('sample_trajectory_3/torque/bracket_6_7_joint_torque.mat');

% import velocity array
velocity_1_2_joint = load('sample_trajectory_3/velocity/velocity_1_2_joint.mat');
velocity_2_3_joint = load('sample_trajectory_3/velocity/velocity_2_3_joint.mat');
velocity_3_4_joint = load('sample_trajectory_3/velocity/velocity_3_4_joint.mat');
velocity_4_5_joint = load('sample_trajectory_3/velocity/velocity_4_5_joint.mat');
velocity_5_6_joint = load('sample_trajectory_3/velocity/velocity_5_6_joint.mat');
velocity_6_7_joint = load('sample_trajectory_3/velocity/velocity_6_7_joint.mat');

% power output array
power_output_1_2_joint = get_power_output(bracket_1_2_joint_torque.torque, velocity_1_2_joint);
power_output_2_3_joint = get_power_output(bracket_2_3_joint_torque.torque, velocity_2_3_joint);
power_output_3_4_joint = get_power_output(bracket_3_4_joint_torque.torque, velocity_3_4_joint);
power_output_4_5_joint = get_power_output(bracket_4_5_joint_torque.torque, velocity_4_5_joint);
power_output_5_6_joint = get_power_output(bracket_5_6_joint_torque.torque, velocity_5_6_joint);
power_output_6_7_joint = get_power_output(bracket_6_7_joint_torque.torque, velocity_6_7_joint);

% get max output
[max_power_1_2_joint, index_1_2_joint] = max(abs(power_output_1_2_joint));
[max_power_2_3_joint, index_2_3_joint] = max(abs(power_output_2_3_joint));
[max_power_3_4_joint, index_3_4_joint] = max(abs(power_output_3_4_joint));
[max_power_4_5_joint, index_4_5_joint] = max(abs(power_output_4_5_joint));
[max_power_5_6_joint, index_5_6_joint] = max(abs(power_output_5_6_joint));
[max_power_6_7_joint, index_6_7_joint] = max(abs(power_output_6_7_joint));

fprintf('1_2_joint max power(abs): %e (W) \n', max_power_1_2_joint);
fprintf('2_3_joint max power(abs): %e (W) \n', max_power_2_3_joint);
fprintf('3_4_joint max power(abs): %e (W) \n', max_power_3_4_joint);
fprintf('4_5_joint max power(abs): %e (W) \n', max_power_4_5_joint);
fprintf('5_6_joint max power(abs): %e (W) \n', max_power_5_6_joint);
fprintf('6_7_joint max power(abs): %e (W) \n', max_power_6_7_joint);


