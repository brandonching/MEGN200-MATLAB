% MEGN200: Worksheet 2
% Section - C
% Brandon Ching
% 8/31/2021 and Version 1

%% Tuesday Problem 1

clc; clear;
close all;

x = rand([1,5]);
mean_x = mean(x);
min_x = min(x);
max_x = max(x);

fprintf('Random Numbers: ')
fprintf('%0.2f ', x)
fprintf('\nMean => %0.2f', mean_x)
fprintf('\nMin => %0.2f', min_x)
fprintf('\nMax => %0.2f', max_x)
%% Tuesday Problem 2

clc; clear;
close all;

list(1) = input('Enter the first number: ');
list(2) = input('Enter the second number: ');
list(3) = input('Enter the third number: ');
min_value = input('Enter a minimum comparison value: ');

larger_than_min = (list>min_value);

fprintf('Numbers larger than min value => ')
fprintf('%i ', list(larger_than_min))

%% Tuesday Problem 3

clc; clear;
close all;

student_id = [104, 156, 126, 178, 101];
scores = [86, 91, 74, 95, 89];

scored_A = (scores>=90);

fprintf('Students with >A => ')
fprintf('%i ', student_id(scored_A))
%% Thursday Problem 1

clc; clear;
close all;

radius = 1:100;
area = pi*radius.^2;
corn_plants = area/0.1;
corn_yeild = corn_plants*1.5;
bushel_yeild = corn_yeild/50;
crop_value = bushel_yeild*4.35;
plot(radius, crop_value)
title('Center-Pivot Irrigation Crop Value')
xlabel('Radius (m)')
ylabel('Crop Value ($)')

needed_fields = ceil(1000000/crop_value(100));
fprintf('You would need %i center-piviot fields of 100m radius to raise $1 Million worth of corn',needed_fields)
%% Thursday Problem 2

clc; clear;
close all;

v_0 = 715;
t = 0:0.1:200;
y = v_0*t - (1/2) * (9.81) * t.^2;
above_ground = (y>=0);
time_above_ground = t(above_ground);
plot(time_above_ground, y(above_ground))
title("Bullet Projectile Trajectory")
xlabel("Time (s)")
ylabel("Altitude (m)")

max_height = max(y);
max_time = t(y==max_height);

fprintf('Max Height => %0.2fm', max_height)
fprintf('\nMax Time => %0.2fs', max_time)
fprintf('\nGround Impact Time => %0.2fs', time_above_ground(end))
