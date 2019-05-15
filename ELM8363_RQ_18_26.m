%% Eddie Molina   ENGR 1300-009   NOV-30-16
% Problem Statement: Use polyfit to determine the exponential relationship
% for the data set and graph the resulting trendline along with the
% experimental data.
clc; clear; close;
%% Proper plot
Y = [0 5 7 16 25 31 37];                            % Years frin 1967
S = [0.8 0.4 0.2 0.09 0.007 .0002 .000008];         % minimum gear size [mm]
figure('color', 'w')
plot(Y, S, 'ok', 'MarkerFaceColor', 'k', 'MarkerSize', 10)
axis([0 40 0 1])
xlabel('Years from 1967', 'FontSize', 15)
ylabel('Minimum gear size [mm]', 'FontSize', 15)
grid on
%% Determine Model Parameters using Plyfit command
C = polyfit(Y, log(S), 1);
m = C(1);
b = exp(C(2));
%% Create theoretical data series with model results
Ypf = [1:1:30];
Spf = b * exp(m*Ypf);
%% Add theoretical data series to the graph
hold on 
plot(Ypf, Spf, '-b', 'linewidth', 2)
%% Add the trendline equation
TE = sprintf('S = %2.0fe^{%2.1fy}', b,m); % S = gear size & y = year
text(25,.8, TE, 'BackgroundColor', 'w', 'EdgeColor', 'k', 'Color', 'k', 'Fontsize', 16)


