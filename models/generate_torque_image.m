% generate each joint's torque figure

% bracket_1_2_joint_torque
fig1 = figure('visible', 'off');
plot(bracket_1_2_joint_torque);
title("bracket_1_2_joint_torque");
print(fig1, "image/bracket_1_2_joint_torque", '-dpng');

% bracket_2_3_joint_torque
fig2 = figure('visible', 'off');
plot(bracket_2_3_joint_torque);
title("bracket_2_3_joint_torque");
print(fig2, "image/bracket_2_3_joint_torque", '-dpng');

% bracket_3_4_joint_torque
fig3 = figure('visible', 'off');
plot(bracket_3_4_joint_torque);
title("bracket_3_4_joint_torque");
print(fig3, "image/bracket_3_4_joint_torque", '-dpng');

% bracket_4_5_joint_torque
fig4 = figure('visible', 'off');
plot(bracket_4_5_joint_torque);
title("bracket_4_5_joint_torque");
print(fig4, "image/bracket_4_5_joint_torque", '-dpng');

% bracket_5_6_joint_torque
fig5 = figure('visible', 'off');
plot(bracket_5_6_joint_torque);
title("bracket_5_6_joint_torque");
print(fig5, "image/bracket_5_6_joint_torque", '-dpng');

% bracket_6_7_joint_torque
fig6 = figure('visible', 'off');
plot(bracket_6_7_joint_torque);
title("bracket_6_7_joint_torque");
print(fig6, "image/bracket_6_7_joint_torque", '-dpng');

clear;

% TODO: calculate max i from max torque