% MEGN200: Worksheet 3
% Section - C
% Brandon Ching
% 9/6/2021 and Version 1

%% Tuesday Problem 1

clc; clear;
close all;

z = zeros(10);
z(:,1) = 1;
z(1,:) = 2;
z(:,10) = 3;
z(10,:) = 4;

%% Tuesday Problem 2

clc; clear;
close all;

A = [ 1 0 1 0;0 2 0 2;3 1 3 1 ];

B = A(:,2);
fprintf("Length of B => %i", length(B))

C = A([1 3],:);
fprintf("\nArray C Size => %ix%i",size(C))

D = A;
D(:,2:3) = [];
fprintf('\nElements in Array D => %i', numel(D))

E = A;
E = [E [7; 8; 9;]];
fprintf("\nArray E Size => %ix%i",size(E))

%% Tuesday Problem 3

clc; clear;
close all;

rand_nums_5 = rand(5)
larger_nums_5 = rand_nums_5>=0.5

precent_greater_5 = length(rand_nums_5(larger_nums_5))/numel(rand_nums_5);
fprintf('5x5 Precentage Greater than 1/2 => %0.1f%%', precent_greater_5*100)

% Dont Print out 100x100 arrays
rand_nums_100 = rand(100);
larger_nums_100 = rand_nums_100>=0.5;

precent_greater_100 = length(rand_nums_100(larger_nums_100))/numel(rand_nums_100);
fprintf('\n100x100 Precentage Greater than 1/2 => %0.1f%%', precent_greater_100*100)
% There is a diffrence in the precentages between the 5x5 and 100x100 array
% because they arrays are build via randomness, they wont be the same
%% Thursday Problem 1

clc; clear;
close all;

X = magic(5);
A = X(1:2:end,1:2:end);
B = X(2:end-1,2:end-1);
C = [diag(X,1),diag(X,-1)];


%% Thursday Problem 2

clc; clear;
close all;

Matrix = randi([-5 5] , [3  4])
pos_sum = sum(Matrix(Matrix>0));
neg_sum = sum(Matrix(Matrix<0));

fprintf('The Positive Sum is: %i', pos_sum)
fprintf('\nThe Negative Sum is: %i', neg_sum)

%% Thursday Problem 3

clc; clear;
close all;

[num,txt,raw]=xlsread('Top_NFL_Fantasy_Stats');
top_passing_yards = max(num(:,6));
[row, column] = find(num==top_passing_yards,1);
top_passing_player = txt(row+1,2);

fprintf('Top NFL Passing Player => %s', string(top_passing_player))
fprintf("\nPlayer's Passing Yards => %i", top_passing_yards)

