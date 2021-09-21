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


