%%
% Eddie Molina   ENGR 1300-009   2016-11-10
% Problem Statement: Conduct a breakeven analysis for a wooden baseball bat
% manufacturer who is interested in diversifying their product line.
clear;
clc;
close;

%%
% Variables and Constants
Maple = input('Type the selling price of a maple bat (in dollars): ');          % Selling price for maple bat
Bamboo = input('Type the selling price of a bamboo bat (in dollars): ');        % Selling price for bamboo bat
Total = input('Type total number of bats manufacturer can produce per week: '); % Total bats produced in a week
Weeks = input('Type number of weeks manufacturer plans to run production: ');   % Total weeks for production



%%
% Conversions and Calculations
MRevenue = Maple * Total * Weeks;   % Maple bat revenue
BRevenue = Bamboo * Total * Weeks;  % Bamboo bat revenue
Bats = Total * Weeks;               % Total bats produced

% Print Statement
fprintf(['Producing %.0f bats a week for %.0f weeks will generate: \n'...
'\tMaple bat revenue: $%.2f\n'...
'\tBamboo bat revenue: $%.2f\n'...
'Total number of bats produced: %.3e\n'], Total, Weeks, MRevenue, BRevenue, Bats);

