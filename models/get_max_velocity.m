% get max angle velocity

% return max torque val

joint_1_velocity = load('sample_trajectory_3/velocity/velocity_1_2_joint.mat');
joint_2_velocity = load('sample_trajectory_3/velocity/velocity_2_3_joint.mat');
joint_3_velocity = load('sample_trajectory_3/velocity/velocity_3_4_joint.mat');
joint_4_velocity = load('sample_trajectory_3/velocity/velocity_4_5_joint.mat');
joint_5_velocity = load('sample_trajectory_3/velocity/velocity_5_6_joint.mat');
joint_6_velocity = load('sample_trajectory_3/velocity/velocity_6_7_joint.mat');

joint_1_velocity_val = (180.0/pi)*joint_1_velocity.velocity.Data;
joint_2_velocity_val = (180.0/pi)*joint_2_velocity.velocity.Data;
joint_3_velocity_val = (180.0/pi)*joint_3_velocity.velocity.Data;
joint_4_velocity_val = (180.0/pi)*joint_4_velocity.velocity.Data;
joint_5_velocity_val = (180.0/pi)*joint_5_velocity.velocity.Data;
joint_6_velocity_val = (180.0/pi)*joint_6_velocity.velocity.Data;

[max_val_1, index_1_2_joint] = max(abs(joint_1_velocity_val));
[max_val_2, index_2_3_joint] = max(abs(joint_2_velocity_val));
[max_val_3, index_3_4_joint] = max(abs(joint_3_velocity_val));
[max_val_4, index_4_5_joint] = max(abs(joint_4_velocity_val));
[max_val_5, index_5_6_joint] = max(abs(joint_5_velocity_val));
[max_val_6, index_6_7_joint] = max(abs(joint_6_velocity_val));

fprintf('1_2_joint valocity (abs)max %e (degree/s) \n', joint_1_velocity_val(index_1_2_joint));
fprintf('2_3_joint velocity (abs)max %e (degree/s) \n', joint_2_velocity_val(index_2_3_joint));
fprintf('3_4_joint velocity (abs)max %e (degree/s) \n', joint_3_velocity_val(index_3_4_joint));
fprintf('4_5_joint velocity (abs)max %e (degree/s) \n', joint_4_velocity_val(index_4_5_joint));
fprintf('5_6_joint velocity (abs)max %e (degree/s) \n', joint_5_velocity_val(index_5_6_joint));
fprintf('6_7_joint velocity (abs)max %e (degree/s) \n', joint_6_velocity_val(index_6_7_joint));

clear;