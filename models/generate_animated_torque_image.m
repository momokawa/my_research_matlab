% geenerate animated torque image
writerObj = VideoWriter('sample_trajectory_3/video/torque_animation.avi');
open(writerObj);
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
p = uipanel('Parent', f, 'BorderType', 'none');
p.Title = 'Bit title here';
p.TitlePosition = 'centertop';

% add plot for 1_2_joint
subplot(3,3,1,'Parent', p);
plot(time, bracket_1_2_val);
title('1-2-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});
hold on;
p1 = plot(time(1), bracket_1_2_val(1), 'o', 'MarkerFaceColor', 'red');
hold off;

% add plot for 2_3_joint
subplot(3,3,2,'Parent', p);
plot(time, bracket_2_3_val);
title('2-3-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});
hold on;
p2 = plot(time(1), bracket_2_3_val(1), 'o', 'MarkerFaceColor', 'red');
hold off;

% add plot for 3_4_joint
subplot(3,3,3,'Parent', p);
plot(time, bracket_3_4_val);
title('3-4-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});
hold on;
p3 = plot(time(1), bracket_3_4_val(1), 'o', 'MarkerFaceColor', 'red');
hold off;


% add plot for 4_5_joint
subplot(3,3,4,'Parent', p);
plot(time, bracket_4_5_val);
title('4-5-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});
hold on;
p4 = plot(time(1), bracket_4_5_val(1), 'o', 'MarkerFaceColor', 'red');
hold off;


% add plot for 5_6_joint
subplot(3,3,5,'Parent', p);
plot(time, bracket_5_6_val);
title('5-6-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});
hold on;
p5 = plot(time(1), bracket_5_6_val(1), 'o', 'MarkerFaceColor', 'red');
hold off;


% add plot for 6_7_joint
subplot(3,3,6,'Parent', p);
plot(time, bracket_6_7_val);
title('6-7-joint');
xlabel({'Time', '(sec)'});
ylabel({'T','N*m'});
hold on;
p6 = plot(time(1), bracket_6_7_val(1), 'o', 'MarkerFaceColor', 'red');
hold off;

% all-6-images-in-one
print(f, 'sample_trajectory_2/all-in-one-image-torque', '-dpng');

% ------------ animation ---- 
a = tic;
for k = 2:length(time)
    p1.XData = time(k);
    p1.YData = bracket_1_2_val(k);
    p2.XData = time(k);
    p2.YData = bracket_2_3_val(k);
    p3.XData = time(k);
    p3.YData = bracket_3_4_val(k);
    p4.XData = time(k);
    p4.YData = bracket_4_5_val(k);
    p5.XData = time(k);
    p5.YData = bracket_5_6_val(k);
    p6.XData = time(k);
    p6.YData = bracket_6_7_val(k);
    frame = getframe(gcf);
    b = toc(a);
    if b > 1.0
        
        writeVideo(writerObj, frame);
        a = tic;
    end
end

close(writerObj);
    
