%% Eddie Molina   ENGR 1300-009   2016/11/04
% Problem Statement: Create a proper plot of temperature change versus the
% heat applied to an object
clc;
clear;
close;
%% Experimental Data
Heat = [12 17 25 40 50 58];  % Heat applied [J]
TempChange = [1.50 2.00 3.25 5.00 6.25 7.00];    % Change in Temerature [k]

%% Plots
figure('color', 'w')
plot(Heat, TempChange, 'o', 'MarkerFaceColor', 'k', 'MarkerEdgeColor', 'k')
grid on
ylabel('Temp change (\DeltaT) [K]');
xlabel('Heat applied (Q) [J]');
legend('Object', 'Location', 'Best')
axis([0 60 0 10]);