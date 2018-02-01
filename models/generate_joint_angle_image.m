% generate graph for angle of each joint w/ time 

% load joint angle file
sample_trajectory = readtable('sample_trajectory_3/sample_trajectory_3.txt','Delimiter', 'comma');

% time array
time_array = 0:0.01:0.01*549; % 0.01sec interval array of time ( 100hz)

% bracket_1_2_joint angle array
bracket_1_2_joint_angle_array =  table2array(sample_trajectory(:, 11));
% bracket_2_3_joint angle array
bracket_2_3_joint_angle_array =  table2array(sample_trajectory(:, 12));
% bracket_3_4_joint angle array
bracket_3_4_joint_angle_array =  table2array(sample_trajectory(:, 13));
% bracket_4_5_joint angle array
bracket_4_5_joint_angle_array =  table2array(sample_trajectory(:, 14));
% bracket_5_6_joint angle array
bracket_5_6_joint_angle_array =  table2array(sample_trajectory(:, 15));
% bracket_6_7_joint angle array
bracket_6_7_joint_angle_array =  table2array(sample_trajectory(:, 16));

f = figure;
plot(time_array, bracket_1_2_joint_angle_array);

hold on;
plot(time_array, bracket_2_3_joint_angle_array);
plot(time_array, bracket_3_4_joint_angle_array);
plot(time_array, bracket_4_5_joint_angle_array);
plot(time_array, bracket_5_6_joint_angle_array);
plot(time_array, bracket_6_7_joint_angle_array);

legend('Location', 'eastoutside');
legend('bracket_1_2-joint', 'bracket_2_3-joint', 'bracket_3_4-joint', 'bracket_4_5-joint', 'bracket_5_6-joint', 'bracket_6_7-joint');
xlabel('Time (sec)');
ylabel('Angle (rad)');
hold off;

print(f, 'sample_trajectory_3/image/all-in-one-image-angle', '-dpng');
