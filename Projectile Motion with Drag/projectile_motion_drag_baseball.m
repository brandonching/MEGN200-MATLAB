%% Title of Code/Problem
% First & Last Name
% MEGN 200 Section
% Date

%% Part 1
% Setup parameters to model a baseball projectile with drag
% v, initial velocity
% angle, launch angle
% g, gravity, m/s^2
% m, mass, kg
% A, drag area, m^2
% cd, dimensionless drag coefficient
% rho, air density, kg/m^3
% y, initial vertical position, m
% x, initial horizontal position, m

% call the projectile_motion_drag function times with the function inputs, i.e.
% [x1,y1,vx1,vy1,t1] = projectile_motion_drag(v,angle,g,m,A,cd,rho,y,x)
% store first set of outputs
% calculate the max horizontal position of the baseball

% change cd drag coefficient for no drag condition
% call the projectile_motion_drag function with the function inputs, i.e.
% [x2,y2,vx2,vy2,t2] = projectile_motion_drag(v,angle,g,m,A,cd,rho,y,x)
% store second set of outputs
% calculate the max horizontal position of the baseball

% change cd drag coefficient back to 0.5 and rho to 82% of sea level air density
% call the projectile_motion_drag function with the function inputs
% store third set of outputs
% calculate the max horizontal position of the baseball

% plot results on the same plot as shown in baseball example plot
% plot commands here
% include title, axis labels, legend, at least 14 font size
set(gca,'FontSize',14)  % set text size for the entire figure
% use the axis function to set axis limits, i.e. axis([xmin xmax ymin ymax])

% print out the % difference in vertical and horizontal distance of the baseball relative to sea level