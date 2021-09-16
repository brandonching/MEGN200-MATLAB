% MEGN200: Worksheet 4 EC
% Section - C
% Brandon Ching
% 9/16/2021 and Version 1

%% Extra Credit 1

clc; clear;
close all;

logo = imread("mines.jpg");
figure(1) ; imshow(logo)

logo = rgb2gray(logo);
figure(2) ; imshow(logo*2)

% just multiply the martix of the photo by 2 to double the brightness