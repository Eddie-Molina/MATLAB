%% Eddie Molina   ENGR 1300-009   NOV-30-16
% Problem Statement: Create proper plot of power versus the diameter
% assuming the data are experimental.
clc; clear; close;
%% Proper plot
D = [0.5 0.75 1 1.5 2 2.25 2.5 2.75];       % Diameter [ft]
P = [.004 .04 .13 .65 3 8 18 22];           % Power [hp]
figure('color', 'w')
plot(D, P, 'ob', 'MarkerFaceColor', 'b', 'MarkerSize', 10)
axis([0 3 0 25])
xlabel('Diameter (D)[ft]', 'FontSize', 15)
ylabel('Power (P)[hp]', 'FontSize', 15)
grid on
%% Determine Model Parameters using Plyfit command
C = polyfit(log10(D), log10(P), 1);
m = C(1);
b = 10^C(2);
%% Create theoretical data series with model results
Dpf = [0.5: 0.1: 2.75];
Ppf = b * Dpf.^m;
%% Add theoretical data series to the graph
hold on 
plot(Dpf, Ppf, '-b', 'linewidth', 2)
%% Add the trendline equation
TE = sprintf('P = %3.1fD^{%1.3f}', b,m);
text(.8,12, TE, 'BackgroundColor', 'w', 'EdgeColor', 'b', 'Color', 'b', 'Fontsize', 14)

