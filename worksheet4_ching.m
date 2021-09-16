% MEGN200: Worksheet 4
% Section - C
% Brandon Ching
% 9/16/2021 and Version 1

%% Problem 1

clc; clear;
close all;

t = -2.5:0.1:4;
f_t = t.^4 - 3.5*t.^3 - 2.5*t.^2 + 14*t - 6;

plot(t, f_t, "r", "LineWidth", 4)
set(gca,'FontSize',16)
xlabel("t")
ylabel("f(t)")
title("f(t)=t^4-3.5t^3-2.5t^2+14t-6")
grid ON

% Roots: x={-2,1/2,2,3}

p= [1, -3.5, -2.5, 14, -6];
roots = roots(p)
%% Problem 2

clc; clear;
close all;

r = 3;
theta = 0:pi/100:2*pi;
x1 = r * cos(theta);
x2 = r * cos(theta) - r/2;
x3 = r * cos(theta) + r/2;
y1 = r * sin(theta) + r;
y2 = r * sin(theta);
y3 = r * sin(theta);

hold on
plot(x1, y1)
plot(x2, y2)
plot(x3, y3)
hold off
set(gca,'FontSize',16)
title("Venn diagram / Reuleaux Triangle")
xlabel('x')
ylabel('y')
axis([-6, 6, -3, 6])

%% Problem 3

clc; clear;
close all;

load("uspopulation");
P = polyfit(years, pop, 2);
P_val = polyval(P, years);

hold on
plot(years, pop, "ro")
plot(years, P_val, "k")
hold off
set(gca,'FontSize',16)
title("U.S. Population Quadratic Model")
xlabel('Year')
ylabel('U.S. Population')
legend("Census Data", "Model", 'Location', 'NorthWest')

pop_2020 = polyval(P, 2020);
pop_2050 = polyval(P, 2050);
act_2020 = 331000000;

precent_differance = (abs(pop_2020 - act_2020)/((pop_2020 + act_2020)/2))*100;

fprintf("2020 Predicted Population: %i", pop_2020)
fprintf("\n2020 %% Differance: %0.3f%%",precent_differance)
fprintf("\n2050 Predicted Population: %i", pop_2050)
