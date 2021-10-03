clc; clear; close all;

v = 50;
angle = 35;
g = 9.81;
m = 0.145;
A = pi*0.0336^2;
cd = 0.5;
rho = 1.2;
y = 0;
x = 0;

vy = [v*sind(angle)]; % initial vertical velocity, m/s, calculate based on v and angle
vx = [v*cosd(angle)]; % initial horizontal velocity, m/s, calculate based on v and angle
ay = -g; %assume initial vertical acceleration is -g m/s^2
ax = 0; % assume initial horizontal accleration is 0 m/s^2
delta_t = 0.001;    % set time step delta_t to 0.001, s, higher value decreases accuracy
time_guess=0:delta_t:100;   % create an initial time guess from 0 to 100s (arbitrary starting guess for simulation)
% this is just a time guess to start the simulation, we will need to limit the simulation time when the projectile actually hits the ground
t=[0];    % create actual flight time vector starting with the initial time value as the loop iterates
D = 1/2*(rho * cd * A); % calculate drag constant based on cd, row, A

for n = 1:length(time_guess)-1
    t(n+1) = t(n) + delta_t;    % store the current time value into the actual flight time array t
    v(n+1) = sqrt(vy(n)^2+vx(n)^2); % calculate Eq(1) velocity magnitude v(n)
    ay(n+1) = -g-(D/m) * v(n) *vy(n); % calculate Eq(2) ay(n+1)
    vy(n+1) = vy(n) + ay(n) * delta_t; % calculate Eq(3) vy(n+1)
    y(n+1) = y(n) + vy(n) * delta_t + 1/2*ay(n)*delta_t^2; % calculate Eq(4) y(n+1)
    ax(n+1) = -(D/m)*v(n)*vx(n); % calculate Eq(5) ax(n+1)
    vx(n+1) = vx(n)+ax(n)*delta_t; % calculate Eq(6) vx(n+1)
    x(n+1) = x(n) +vx(n) * delta_t + 1/2*ax(n) * delta_t^2; % calculate Eq(7) x(n+1)
    % conditional statement to stop loop when vertical position y(n+1) <= 0
    % if using a for loop, use conditional statement here to break loop
    % if using a while loop, make sure to increment loop step n by 1
    % end loop
end     % end function