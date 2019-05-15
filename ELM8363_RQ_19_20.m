%%
% Eddie Molina      ENGR 1300-009     2016-12-6
% Problem Statement:   Write an if-elseif-else statement that displays the letter grade 
% (any format) corresponding to a numerical grade in an appropriately formatted output statement. 
clc; clear; close;
%%
% Print letter grade that the numerical grade falls under
grade = input('Enter a grade in numerical form between 0 and 100: ');

if (grade > 100 || grade < 0)
    fprintf('Grade should be between 0 and 100.\n');
    elseif (grade <= 100 && grade >= 90)
        fprintf('That grade corresponds with an A.\n');
    elseif (grade < 90 && grade >= 80)
        fprintf('That grade corresponds with a B.\n');
    elseif (grade < 80 && grade >= 70)
        fprintf('That grade corresponds with a C.\n');
    elseif (grade < 70 && grade >= 60)
        fprintf('That grade corresponds with a D.\n');
    else
        fprintf('That grade corresponds with an F.\n');

end
