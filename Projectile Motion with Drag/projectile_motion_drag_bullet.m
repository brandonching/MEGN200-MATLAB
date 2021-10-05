% MEGN200: Projectile Motion 
% Section - C
% Brandon Ching
% 9/28/2021 and Version 1

%% Part 2:Simulating a Projectile Shot Vertically with Drag
clc; clear; close all;

% The bullet needs to launch vertically upwards (angle = 90 degrees)
% initial guess for projectile trajectory
v = 715;% v, initial velocity
angle = 90;% angle, launch angle
g = 9.81;% g, gravity, m/s^2
m = 0.0079;% m, mass, kg
A = pi*(0.00762/2)^2;% A, drag area, m^2
cd=0.24;% cd, dimensionless drag coefficient
rho = 1.2;% rho, air density, kg/m^3
y=0;% y, initial vertical position, m
x=0;% x, initial horizontal position, m

% Call the projectile_motion_drag function with the function inputs, i.e.
[x1,y1,vx1,vy1,t1] = projectile_motion_drag(v,angle,g,m,A,cd,rho,y,x);
% find out how high the round travels vertically under these conditions
max_height = max(y1);
flight_time = max(t1);
fprintf('A 7.62 bullet shot strait up at %im/s will reach a height of %0.2fm, with a ground impact time of %0.2fs', v, max_height, flight_time) 

% plot the vertical height of the project over time with appropriate axes
yyaxis left
plot(t1,y1, 'LineWidth', 3);
xlabel('Time')
ylabel('Height (m)')
title('Bullet Shot Strait Up')
axis([0 50 0 2500])
set(gca,'FontSize',14)

yyaxis right
v1 = sqrt(vx1.^2 + vy1.^2);
plot(t1, v1, 'LineWidth', 3)
ylabel('Velocity (m/s)')
% include title, axis labels, legend, at least 14 font size
set(gca,'FontSize',14)


e_initial = 1/2*m*v^2;
e_final = 1/2*m*v1(end)^2;
precent_energy = (e_final/e_initial)*100;
fprintf('\nWith an inital energy of %0.2fJ and a final energy of %0.2fJ, only %0.2f%% of the energy remains', e_initial, e_final, precent_energy);

% This bullet will likely not do much to you, while it techincally could
% cause damange it is only traveling at arround 107m/s or less than whats
% typically required to break skin
%%
% Part 3a
clc; clear; close all;

v = 964;% v, initial velocity
angle = 10;% angle, launch angle
g = 9.81;% g, gravity, m/s^2
m = 0.01846;% m, mass, kg
A = pi*(0.00861/2)^2;% A, drag area, m^2
cd=0.24;% cd, dimensionless drag coefficient
rho = 1.2;% rho, air density, kg/m^3
y=0;% y, initial vertical position, m
x=0;% x, initial horizontal position, m

% Use the fzero function to find the exact angle for the world record shot
x_final = 3780;% define x_final target

% [initial angle solution] = fzero(@initialvariable myfunction(inputs), initialguess)
% use this code line below for fsolve
angle_sol=fzero(@(angle) find_solution(v,angle,g,m,A,cd,rho,y,x,x_final), angle);
% print out "The world record target was shot with an angle of x degrees."
angle=angle_sol; % assign angle=angle_sol
fprintf("The world record target was shot with an angle of %0.2f degrees.", angle)
% Call the projectile_motion_drag function with the function inputs
[x1,y1,vx1,vy1,t1] = projectile_motion_drag(v,angle,g,m,A,cd,rho,y,x);
% plot your results for Part 2 with a formatted plot
above_ground = y1>=0;
plot(x1,y1, 'r', 'LineWidth', 3)
title('World Record Shot')
ylabel('y(m)')
xlabel('x(m)')
set(gca,'FontSize',14)
% include title, axis labels, legend, at least 14 font size

%%
% Part 3b
clc; clear; close all;

v = 964;% v, initial velocity
g = 9.81;% g, gravity, m/s^2
m = 0.01846;% m, mass, kg
A = pi*(0.00861/2)^2;% A, drag area, m^2
cd=0.24;% cd, dimensionless drag coefficient
rho = 1.2;% rho, air density, kg/m^3
y=0;% y, initial vertical position, m
x=0;% x, initial horizontal position, m
distance = zeros(1,90);
for angle = 1:90
    [x1,y1,vx1,vy1,t1] = projectile_motion_drag(v,angle,g,m,A,cd,rho,y,x);
    distance(angle) = max(x1);
    
    if angle==1
    elseif max(x1)<=distance(angle-1)
        max_angle = angle-1;
        max_distance = distance(angle-1);
        break
    end
end

% create a loop to loop through integer angle values between 1 and 90 degrees
% inside the loop, call the projectile_motion_drag function with the function inputs
% determine which angle resulted in the longest horizontal distance traveled
% print out "The optimal shot angle is x and the projectile would travel y m."
fprintf("The optimal shot angle is %i and the projectile would travel %0.2fm.\n", max_angle, max_distance)
% after finding the optimal angle, call the projectile_motion_drag function with the optimal angle
[x1,y1,vx1,vy1,t1] = projectile_motion_drag(v,max_angle,g,m,A,cd,rho,y,x);
hold on
plot(x1,y1, 'r', 'LineWidth', 3);
title('Theoretical World Record Shot')
ylabel('y(m)')
xlabel('x(m)')
set(gca,'FontSize',14)
% plot your results for Part 2 with a formatted plot
% include title, axis labels, legend, at least 14 font size

[x2,y2,vx2,vy2,t2] = projectile_motion_drag(v,5.21,g,m,A,cd,rho,y,x);
plot(x2,y2, 'b', 'LineWidth', 3);
hold off
legend('Theoretial', 'Actual', 'Location', 'NorthWest');


