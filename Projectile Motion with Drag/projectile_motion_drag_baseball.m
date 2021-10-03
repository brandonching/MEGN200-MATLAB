% MEGN200: Projectile Motion 
% Section - C
% Brandon Ching
% 9/28/2021 and Version 1

%% Part 1: Baseball Projectile Model with Aerodynamic Drag
clc; clear; close all;

% Setup parameters to model a baseball projectile with drag
v = 50; % v, initial velocity
angle = 35; % angle, launch angle
g = 9.81; % g, gravity, m/s^2
m = 0.145; % m, mass, kg
A = pi*0.0336^2; % A, drag area, m^2
cd = 0.5; % cd, dimensionless drag coefficient
rho = 1.2; % rho, air density, kg/m^3
y = 0; % y, initial vertical position, m
x = 0; % x, initial horizontal position, m

% call the projectile_motion_drag function times with the function inputs, i.e.
[x1,y1,vx1,vy1,t1] = projectile_motion_drag(v,angle,g,m,A,cd,rho,y,x);
above_ground1 = y1>=0;
% store first set of outputs
% calculate the max horizontal position of the baseball

% change cd drag coefficient for no drag condition
cd = 0;
% call the projectile_motion_drag function with the function inputs, i.e.
[x2,y2,vx2,vy2,t2] = projectile_motion_drag(v,angle,g,m,A,cd,rho,y,x);
above_ground2 = y2>=0;

% store second set of outputs
% calculate the max horizontal position of the baseball

% change cd drag coefficient back to 0.5 and rho to 82% of sea level air density
cd = 0.5;
rho = 0.82*(1.2);
% call the projectile_motion_drag function with the function inputs
[x3,y3,vx3,vy3,t3] = projectile_motion_drag(v,angle,g,m,A,cd,rho,y,x);
above_ground3 = y3>=0;
% store third set of outputs
% calculate the max horizontal position of the baseball

% plot results on the same plot as shown in baseball example plot
% plot commands here
hold on
plot(x1(above_ground1), y1(above_ground1), 'r', 'LineWidth', 2);
plot(x2(above_ground2), y2(above_ground2), 'k--', 'LineWidth', 2);
plot(x3(above_ground3), y3(above_ground3), 'b', 'LineWidth', 2);
legend('Sea Level Drag', 'Without Drag', 'Denver Drag')
xlabel('x(m)')
ylabel('y(m)')
title('Baseball Projectile Motion with/without Drag')
% include title, axis labels, legend, at least 14 font size
set(gca,'FontSize',14)  % set text size for the entire figure
% use the axis function to set axis limits, i.e. axis([xmin xmax ymin ymax])
axis([0 300 0 50])
% print out the % difference in vertical and horizontal distance of the baseball relative to sea level

max_sea_drag = max(x1(above_ground1));
max_no_drag = max(x2(above_ground2));
max_denver_drag = max(x3(above_ground3));

fprintf('Max Distances\n\tSea Level Drag: %0.2fm\n\tWithout Drag: %0.2fm\n\tDenver Drag %0.2fm\n', max_sea_drag, max_no_drag, max_denver_drag)

pdif_no_drag = (abs(max_sea_drag-max_no_drag)/((max_sea_drag+max_no_drag)/2))*100;
pdif_denver_drag = (abs(max_sea_drag-max_denver_drag)/((max_sea_drag+max_denver_drag)/2))*100;


fprintf('Precent Differance in max horizontal distance relative to baseball at sea level')
fprintf('\n\tWithout Drag: %0.2f%%\n\tDenver Drag: %0.2f%%\n', pdif_no_drag, pdif_denver_drag)