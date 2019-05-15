%% Eddie Molina   ENGR 1300-009   NOV-30-16
% Problem Statement: Use polyfit to determine a linear relationship for the
% data and graph the resulting trendline along with the experimental data.
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
%% Determine Model Parameters using polyfit command
C = polyfit(H, T, 1);
m = C(1);
b = C(2);
%% Create theoretical data series to the graph
Hpf = [12: 6: 58];
Tpf = m*Hpf + b;
%% Add theoretical data series to the graph
hold on 
plot(Hpf, Tpf, '-r', 'linewidth', 2)
%% Add the trendline equation
TE = sprintf('T = %4.3f Q', m);
text(20, 8, TE, 'BackgroundColor', 'w', 'EdgeColor', 'r', 'FontSize', 16)

