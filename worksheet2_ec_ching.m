% MEGN200: Worksheet 2 EC
% Section - C
% Brandon Ching
% 8/31/2021 and Version 1

%% Extra Credit Exercise 1

clc; clear;
close all;

load('fibonacci');
larger_terms = fibonacci(fibonacci>=1E100);

fprintf('First term in fibonacci larger than 1E100')
fprintf('\nTerm => %i', find(fibonacci == larger_terms(1)))
fprintf('\nValue => %i', larger_terms(1))
%% Extra Credit Exercise 2

clc; clear;
close all;

P = input('Principal: ');
r = input('Annual Intreset: ');
n = 12;
t = 1:30;

compound_A = P*(1 + r/n).^(n*t);
simple_A = P*(1 + r*t);

plot(t, compound_A, "r", t, simple_A, 'b.')

compund_savings = compound_A(end)/P;
simple_savings = simple_A(end)/P;

fprintf('30 Year Multiplied Savings')
fprintf('\nCompound => %0.2f', compund_savings)
fprintf('\nSimple => %0.2f', simple_savings)