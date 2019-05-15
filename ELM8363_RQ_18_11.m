%% Eddie Molina   ENGR 1300-009   NOV-30-16
% Problem Statement: Create proper plot of the experimental temperature
% change versus the heat applied.
clc; clear; close;
%% Proper plot
H = [12 17 25 40 50 58];                 % Heat
T = [1.50 2.00 3.25 5.00 6.25 7.00];     % Temperature
figure('color', 'w')
plot(H, T, 'or', 'MarkerFaceColor', 'r', 'MarkerSize', 10)
axis([10 60 1 10])
xlabel('Heat applied (Q)[J]', 'FontSize', 15)
ylabel('Temp Change (\DeltaT)[K]', 'FontSize', 15)
grid on

