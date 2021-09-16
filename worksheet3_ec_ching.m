% MEGN200: Worksheet 3 EC
% Section - C
% Brandon Ching
% 9/6/2021 and Version 1

%% Extra Credit 1

clc; clear;
close all;

student = [];
mean_grade = [];
[num,txt,raw]=xlsread('HW_Grades');
for idx = [1:3]
    student = [student string(txt(idx+1))];
    mean_grade = [mean_grade (sum(num(idx,:))-min(num(idx,:)))/(length(num(idx,:))-1)];
end
above_90 = mean_grade>=90;

fprintf('Class Avg => %0.2f', mean(mean_grade))
fprintf('\nStudents With a Avg  Score Above 90%%')
fprintf('\n%s %0.2f', [student(above_90); mean_grade(above_90)])

%% Extra Credit 2

clc; clear;
close all;

[num,txt,raw]=xlsread('Top_NFL_Fantasy_Stats');
passing_yd = sortrows(raw(2:end,[2 6]), 2, 'descend');
TDs = sortrows(raw(2:end,[2 7]), 2, 'descend');
rushing_yd = sortrows(raw(2:end,[2 9]), 2, 'descend');

fprintf('Top 10 Passing Yards NFL Players')
fprintf('\n\tPlayer | Passing Yards')
for idx = [1:10]
    fprintf('\n\t%s | ', passing_yd{idx,1})
    fprintf('%i', passing_yd{idx,2})
end

fprintf('\n\nTop 10 Touch Down NFL Players')
fprintf('\n\tPlayer | Touch Downs')
for idx = [1:10]
    fprintf('\n\t%s | ', TDs{idx,1})
    fprintf('%i', TDs{idx,2})
end

fprintf('\n\nTop 10 Rushing Yards NFL Players')
fprintf('\n\tPlayer | Rushing Yards')
for idx = [1:10]
    fprintf('\n\t%s | ', rushing_yd{idx,1})
    fprintf('%i', rushing_yd{idx,2})
end
