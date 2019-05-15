%% Eddie Molina   ENGR 1300-009   2016/11/04
% Problem Statement: Create a proper plot of the height versus the radius
% assuming the data are experimental
clc;
clear;
close;
%% Experimental Data
Radius = [0.01 0.05 0.10 0.20 0.40 0.50];  % [cm]
Height = [14.0 3.0 1.5 0.8 0.4 0.2];    % [cm]

%% Plots
figure('color', 'w')
plot(Radius, Height, 'd', 'MarkerFaceColor', 'm', 'MarkerEdgeColor', 'm')
grid on
ylabel('Height (H) [cm]');
xlabel('Radius (r) [cm]');
legend('Liquid', 'Location', 'Best')
axis([0 1 0 20]);
