%% Eddie Molina   ENGR 1300-009   NOV-30-16
% Problem Statement: Create proper plot of the gear size versus the number
% of years from 1967 assuming the data area experimental.
clc; clear; close;
%% Proper plot
Y = [0 5 7 16 25 31 37];                            % Years frin 1967
S = [0.8 0.4 0.2 0.09 0.007 .0002 .000008];         % minimum gear size [mm]
figure('color', 'w')
plot(Y, S, 'om', 'MarkerFaceColor', 'm', 'MarkerSize', 10)
axis([0 40 0 1])
xlabel('Years from 1967', 'FontSize', 15)
ylabel('Minimum gear size [mm]', 'FontSize', 15)
grid on

