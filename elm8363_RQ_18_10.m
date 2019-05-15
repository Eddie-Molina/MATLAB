%% Eddie Molina   ENGR 1300-009   2016/11/04
% Problem Statement: Create a proper plot
clc;
clear;
close;
%% Experimental Data
Velocity = [20; 30; 40; 50; 60; 70];  % Vehicle speed (v) [mph]
Reaction = [6; 9; 12; 15; 18; 21];    % Distance for reaction (m)
Braking = [6; 14; 24; 38; 55; 75];    % Distance for braking (m)

%% Plots
figure('color', 'w')
plot(Velocity, Reaction, 'o', 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'r')
hold on
plot(Velocity, Braking, 's','MarkerFaceColor', 'b', 'MarkerEdgeColor', 'b')
grid on
ylabel('Distance (d) [m]');
xlabel('Velocity (v) [mph]');
legend('Reacation (d_{r})', 'Braking (d_{b})', 'Location', 'Best')
axis([0 100 0 100]);