% return max torque val

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

[max_val_1_2_joint, index_1_2_joint] = max(abs(bracket_1_2_val));
[max_val_2_3_joint, index_2_3_joint] = max(abs(bracket_2_3_val));
[max_val_3_4_joint, index_3_4_joint] = max(abs(bracket_3_4_val));
[max_val_4_5_joint, index_4_5_joint] = max(abs(bracket_4_5_val));
[max_val_5_6_joint, index_5_6_joint] = max(abs(bracket_5_6_val));
[max_val_6_7_joint, index_6_7_joint] = max(abs(bracket_6_7_val));

fprintf('1_2_joint (abs)torque max %e (Nm) \n', bracket_1_2_val(index_1_2_joint));
fprintf('2_3_joint (abs)torque max %e (Nm) \n', bracket_2_3_val(index_2_3_joint));
fprintf('3_4_joint (abs)torque max %e (Nm) \n', bracket_3_4_val(index_3_4_joint));
fprintf('4_5_joint (abs)torque max %e (Nm) \n', bracket_4_5_val(index_4_5_joint));
fprintf('5_6_joint (abs)torque max %e (Nm) \n', bracket_5_6_val(index_5_6_joint));
fprintf('6_7_joint (abs)torque max %e (Nm) \n', bracket_6_7_val(index_6_7_joint));

clear;