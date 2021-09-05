% MEGN200: Matlab Assignment 1
% Brandon Ching
% 8/26/2021 and Version 1

%% Exercise 1
% clear
clc; clear;
close all;

% define graph data
x = 0:pi/100:2*pi;
y1 = sin(2*x);
y2 = 2*cos(2*x);

%Plot graph
plot(x, y1,'--r',x , y2, '-bo')
title('Sin and Cos')
xlabel('x')
ylabel('y')

%% Exercise 2

% clear
clc; clear;
close all;

% Ask user for inputs
year = input('Enter Birth Year:');
month = input('Enter Birth Month:', 's');
day = input('Enter Birth Day:');

% print user outputs
fprintf('My Birthday is %s %i, %i',month, day, year);

