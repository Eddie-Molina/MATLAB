%%
% Eddie Molina   ENGR 1300-009   2016-10-20
% Problem Statement: Determine how long, in units of seconds,
% it will take a motor to raise a load into the air.
clc;
clear;
close;

%%
% Variables and Constants
P_in = 100;      % Input Power in units of Watts
Efficiency = 60; % Efficiciency in percentage
mass = 100;      % kilograms
gravity = 9.81;  % m/s^2
height = 5;      % meters


%%
% Conversions and Calculations
PE = mass * gravity * height;   % Potential Energy in Joules
Efficiency = Efficiency / 100;  % Percentage --> Decimal
P_out = P_in * Efficiency;      % Output Power
time = PE / P_out;              % Seconds

fprintf(['It takes %0.2f seconds to lift a load %0.0f meters in the air,',...
    'that has a mass of %0.0f kilograms.\n'], time, height, mass);