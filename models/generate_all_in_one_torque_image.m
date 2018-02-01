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
p = uipanel('Parent', f, 'Title','6 Joints Torques','FontSize',16, 'BorderType', 'none');
p.TitlePosition = 'centertop';

% add plot for 1_2_joint
subplot(3,3,1,'Parent', p);
plot(time, bracket_1_2_val);
title('1-2-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});

% add plot for 2_3_joint
subplot(3,3,2,'Parent', p);
plot(time, bracket_2_3_val);
title('2-3-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});

% add plot for 3_4_joint
subplot(3,3,3,'Parent', p);
plot(time, bracket_3_4_val);
title('3-4-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});


% add plot for 4_5_joint
subplot(3,3,4,'Parent', p);
plot(time, bracket_4_5_val);
title('4-5-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});

% add plot for 5_6_joint
subplot(3,3,5,'Parent', p);
plot(time, bracket_5_6_val);
title('5-6-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});


% add plot for 6_7_joint
subplot(3,3,6,'Parent', p);
plot(time, bracket_6_7_val);
title('6-7-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});

% all-6-images-in-one
print(f, 'sample_trajectory_3/image/all-in-one-image-torque', '-dpng');
clear;
