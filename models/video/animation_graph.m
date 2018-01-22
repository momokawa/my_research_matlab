% this file can create animation of graph for joint torque simulation
% 時間どおりにうごくグラフ
writerObj = VideoWriter('sample_animation.avi');
open(writerObj);
figure;
x = linspace(0,10,1000);
y = sin(x);
plot(x,y);
hold on
p = plot(x(1), y(1), 'o', 'MarkerFaceColor', 'red');
hold off 
axis manual
a = tic; % start timer
for k = 2:length(x)
    p.XData = x(k);
    p.YData = y(k);
    % get frame as image
    frame = getframe(gcf);
    b = toc(a);
    if  b > (1/30)
    % add frame to video
      writeVideo(writerObj, frame);
      a = tic;
    end
end

% close video file
close(writerObj);