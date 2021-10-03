%% Title of Code/Problem
% First & Last Name
% MEGN 200 Section
% Date

%% Part 2
% The bullet needs to launch vertically upwards (angle = 90 degrees)
% initial guess for projectile trajectory
% v, initial velocity
% angle, launch angle
% g, gravity, m/s^2
% m, mass, kg
% A, drag area, m^2
% cd, dimensionless drag coefficient
% rho, air density, kg/m^3
% y, initial vertical position, m
% x, initial horizontal position, m

% Call the projectile_motion_drag function with the function inputs, i.e.
% [x1,y1,vx1,vy1,t1] = projectile_motion_drag(v,angle,g,m,A,cd,rho,y,x)
% find out how high the round travels vertically under these conditions
% plot the vertical height of the project over time with appropriate axes
% include title, axis labels, legend, at least 14 font size

%%
% Part 3a
% Use the fzero function to find the exact angle for the world record shot
% define x_final target
% [initial angle solution] = fzero(@initialvariable myfunction(inputs), initialguess)
% use this code line below for fsolve
[angle_sol]=fzero(@(angle) find_solution(v,angle,g,m,A,cd,rho,y,x,x_final), angle);
% print out "The world record target was shot with an angle of x degrees."
% assign angle=angle_sol
% Call the projectile_motion_drag function with the function inputs
% plot your results for Part 2 with a formatted plot
% include title, axis labels, legend, at least 14 font size

%%
% Part 3b
% create a loop to loop through integer angle values between 1 and 90 degrees
% inside the loop, call the projectile_motion_drag function with the function inputs
% determine which angle resulted in the longest horizontal distance traveled
% print out "The optimal shot angle is x and the projectile would travel y m."
% after finding the optimal angle, call the projectile_motion_drag function with the optimal angle
% plot your results for Part 2 with a formatted plot
% include title, axis labels, legend, at least 14 font size
