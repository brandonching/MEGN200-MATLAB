% MEGN200: Worksheet 5
% Section - C
% Brandon Ching
% 9/21/2021 and Version 1

%% Tuesday Problem 1
clc; clear;
close all;

a=5; b=6; c=3;

% Step 1
if a > 3 && c < 7
    result = a + b*c;
elseif a > 1 && b == 3
    result = a*c;
elseif b == 5 || c < 5
    result = b-15;
end
message = ['result = ' num2str(result)];
disp(message)

% Step 2
if a > 3 && c < 7
    result = a + b*c;
end
if a > 1 && b == 3
    result = a*c;
end
if b == 5 || c < 5
    result = b-15;
end
message = ['result = ' num2str(result)];
disp(message)
% Part a & b have diffrent outputs becuse the first part uses else, which
% will only assign result once on the first valid test (a > 3 && c < 7) 
% while part b conducts 3 diffrent test each assigning result when true so
% on the first and last test (a > 3 && c < 7) & (b == 5 || c < 5). Only the
% result value of the last test will be stored
%% Tuesday Problem 2
clc; clear;
close all;

temp = randi([110,180],1);
cook = ["Underdone", "Rare", "Medium Rare", "Medium", "Medium Well", "Well", "Overdone"];
cook_temp = [125, 131, 141, 151, 161, 170, 200];
steak_cooked = temp<cook_temp;
steak_cooked_name = cook(steak_cooked);

fprintf(['A Steak of %i' char(176) 'F will be cooked %s'], temp, steak_cooked_name(1))

%% Tuesday Problem 3
clc; clear;
close all;

angle = input('Enter an Angle: ');
unit = input('Select a Unit \n 1 - Degrees \n 2 - Radians \n[1/2]: ');

switch unit
    case 1
        sin = sind(angle);
        cos = cosd(angle);
        fprintf(['The Sin of %i' char(176) ' = %0.2f'], angle, sin)
        fprintf(['\nThe Cos of %i' char(176) ' = %0.2f'], angle, cos)
    case 2
        sin = sin(angle);
        cos = cos(angle);
        fprintf(['The Sin of %i' char(928) ' = %0.2f'], angle, sin)
        fprintf(['\nThe Cos of %i' char(928) ' = %0.2f'], angle, cos)
end

%% Tuesday Problem 4
clc; clear;
close all;

d20 = randi([1,20],1);
d12 = randi([1,12],1);

fprintf("d20 dice = %i \nd12 dice = %i\n", d20, d12)

if d20 >=11
    fprintf('Enemy Hit!')
    if d12 >=7
        fprintf('\nEnemy Defeated!')
    else
       fprintf('\nEnemy health remaining = %i', 7-d12) 
    end
else
    fprintf('No Hit & No Damage \nEnemy health remaining = 7')
end
%% Thursday Problem 1
clc; clear;
close all;

%Step 1
x = 10; sum1 = 0;
for k = 1:x
    sum1 = sum1 + 1;
end
disp('sum ='); disp(sum1);
% Ran 10 times as expected

% Step 2
x = 2; N = 5;
series = 0;
for m = 1:N
    series = series + x^m;% Geometric Series
end
message = ['The sum for the geometric series withx = ',num2str(x),' and ',num2str(N),' terms is: ',num2str(series)];disp(message);
% num2string converts a numerical value to a string

% Step 3
sum2 = 0;
while sum2 <= 10
    sum2 = sum2 + 3;
end
disp('sum = '); disp(sum2);
% Sum = 12 as expected

%% Thursday Problem 2
clc; clear;
close all;



%% Thursday Problem 3
clc; clear;
close all;


