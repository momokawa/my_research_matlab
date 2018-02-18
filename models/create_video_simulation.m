% create video from simulation

model_name = 'second_simulation';
sim(model_name);

videoName = 'sample_trajectory_3/video/torque_animation';
smwritevideo(model_name, videoName);