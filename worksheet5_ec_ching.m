% MEGN200: Worksheet 5 EC
% Section - C
% Brandon Ching
% 9/21/2021 and Version 1

%% Extra Credit Problem 1
clc; clear;
close all;

txt = upper(fileread('sleepy_hollow.txt'));
numbers=1:26;
letters=char(numbers+64);
letter_count = [];
for letter = numbers
    letter_count = [letter_count, sum(txt == letters(letter))];
end

let = cellstr(split(letters, ''));
let = let(2:27);
X = categorical(let);
X = reordercats(X, let);
bar(X, letter_count)
xlabel('Letters')
ylabel('Count')
title("Letter Frequency in 'Sleepy Hollow'")
%% Extra Credit Problem 2
clc; clear;
close all;


fprintf("Select Resistor Color Bands")
fprintf('\n0 - Black\n1 - Brown\n2 - Red\n3 - Orange\n4 - Yellow\n5 - Green\n6 - Blue\n7 - Violet\n8 - Gray\n9 - White')

band1 = input('\nBand 1: ');
band2 = input('Band 2: ');
band3 = input('Band 3: ');


fprintf("\n\nSelect Resistor Tolerance")
fprintf('\n5 - Gold 5%%\n10 - Silver 10%%\n20 - No Band 20%%')
tolerance = input('\nTolerance Band: ');

nominal_value = (band1*10 + band2)*10.^band3;
range_lower= nominal_value - (tolerance/100)*nominal_value;
range_upper = nominal_value + (tolerance/100)*nominal_value;

if nominal_value < 1000
    fprintf(['\nNominal Resistance: %0.2f' char(937)], nominal_value)
    fprintf(['\nRange: %0.2f' char(937) ' - %0.2f' char(937)], range_lower, range_upper) 
elseif nominal_value < 1000000
    fprintf(['\nNominal Resistance: %0.2fk' char(937)], nominal_value/1000)
    fprintf(['\nRange: %0.2fk' char(937) ' - %0.2fk' char(937)], range_lower/1000, range_upper/1000) 
else
    fprintf(['\nNominal Resistance: %0.2fM' char(937)], nominal_value/1000000)
    fprintf(['\nRange: %0.2fM' char(937) ' - %0.2fM' char(937)], range_lower/1000000, range_upper/1000000) 
end

% Gray Brown Black None
% Nominal Resistance: 81.00Ω
% Range: 64.80Ω - 97.20Ω

% Green Blue Red Silver
% Nominal Resistance: 5.60kΩ
% Range: 5.04kΩ - 6.16kΩ

% Orange Orange Blue Gold
% Nominal Resistance: 33.00MΩ
% Range: 31.35MΩ - 34.65MΩ
