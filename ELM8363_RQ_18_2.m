%%
% Eddie Molina   ENGR 1300-009   2016-10-25
% Problem Statement: Determine speed in units of miles per hour.
clear;
clc;
close;

%%
% Variables and Constants
Speed_Sound = 343;      % Speed of Sound [m/s]
MA = input('Enter the speed as a Mach Number: ');   % User input for Mach Number
%%
% Conversions and Calculations
V = MA * Speed_Sound;                               % Velocity [m/s]
Vmph = V * 3600 * 0.621 / 1000;                     % [m/s] --> [mi/hr]
fprintf('The speed of the plane is %.0f mph.\n', Vmph);