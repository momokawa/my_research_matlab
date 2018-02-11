% return max torque val

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

[max_val_1_2_joint, index_1_2_joint] = max(bracket_1_2_val);
[max_val_2_3_joint, index_2_3_joint] = max(bracket_2_3_val);
[max_val_3_4_joint, index_3_4_joint] = max(bracket_3_4_val);
[max_val_4_5_joint, index_4_5_joint] = max(bracket_4_5_val);
[max_val_5_6_joint, index_5_6_joint] = max(bracket_5_6_val);
[max_val_6_7_joint, index_6_7_joint] = max(bracket_6_7_val);

fprintf('1_2_joint torque max %e \n', max_val_1_2_joint);
fprintf('2_3_joint torque max %e \n', max_val_2_3_joint);
fprintf('3_4_joint torque max %e\n', max_val_3_4_joint);
fprintf('4_5_joint torque max %e \n', max_val_4_5_joint);
fprintf('5_6_joint torque max %e \n', max_val_5_6_joint);
fprintf('6_7_joint torque max %e \n', max_val_6_7_joint);

clear;