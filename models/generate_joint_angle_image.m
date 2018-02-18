% generate graph for angle of each joint w/ time 

% load joint angle file
sample_trajectory = readtable('sample_trajectory_3/sample_trajectory_3.txt','Delimiter', 'comma');

% time array
time_array = 0:0.01:0.01*549; % 0.01sec interval array of time ( 100hz)

% bracket_1_2_joint angle array
bracket_1_2_joint_angle_array =  (180.0/pi)*table2array(sample_trajectory(:, 11));
% bracket_2_3_joint angle array
bracket_2_3_joint_angle_array =  (180.0/pi)*table2array(sample_trajectory(:, 12));
% bracket_3_4_joint angle array
bracket_3_4_joint_angle_array =  (180.0/pi)*table2array(sample_trajectory(:, 13));
% bracket_4_5_joint angle array
bracket_4_5_joint_angle_array =  (180.0/pi)*table2array(sample_trajectory(:, 14));
% bracket_5_6_joint angle array
bracket_5_6_joint_angle_array =  (180.0/pi)*table2array(sample_trajectory(:, 15));
% bracket_6_7_joint angle array
bracket_6_7_joint_angle_array =  (180.0/pi)*table2array(sample_trajectory(:, 16));

f = figure;
% f.Position = [0 0 1000 1000]; % resize the image
plot(time_array, bracket_1_2_joint_angle_array, 'r', 'LineWidth', 1.2);

hold on;
plot(time_array, bracket_2_3_joint_angle_array, '--r', 'LineWidth', 1.2);
plot(time_array, bracket_3_4_joint_angle_array, 'b', 'LineWidth', 1.2);
plot(time_array, bracket_4_5_joint_angle_array, '--b', 'LineWidth', 1.2);
plot(time_array, bracket_5_6_joint_angle_array, 'g', 'LineWidth', 1.2);
plot(time_array, bracket_6_7_joint_angle_array, '--g', 'LineWidth', 1.2);

legend({'joint-1', 'joint-2', 'joint-3', 'joint-4', 'joint-5', 'joint-6'});
xlabel('Time (sec)', 'FontWeight', 'bold' );
ylabel('Angle (degree)',  'FontWeight', 'bold');
yticks([-360 -270 -180 -90 0 90 180 270 360])
xlim([0 5]);
hold off;

print(f, 'sample_trajectory_3/image/all-in-one-image-angle', '-dpng');
