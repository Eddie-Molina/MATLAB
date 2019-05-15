%%
% Eddie Molina   ENGR 1300-009   2016-10-25
% Problem Statement: Write a program to measure 
% the efficiency of stove-top burners.
clear;
clc;
close;

%%
% Variables and Constants
volume_gal = 1;      % volume in gallons
rho_water = 1;       % density of water [g/cm^3]
Temp_final = 212;    % boiling temperature Fahrenheit
Cp = 4.186;          % Specific heat of water [J/(g Celsius)]


%%
% Conversions and Calculations
Cp_F = Cp / 1.8;    % Specific heat of water [J/(g Fahrenheit)]
fprintf('Houshold Appliance Efficiency Calculator: Stove\n\n');
Temp_initial = input('Type the initial room temperature of the water [deg F]: ');
Temp_diff = Temp_final - Temp_initial;                                    % Fahrenheit 
volume_cm_cubed = volume_gal * 1000 / 0.264;                              % Volume in cm^3
mass = rho_water * volume_cm_cubed;                                       % Mass in grams
Q = mass * Cp_F * Temp_diff;                                              % Units in Joules
Boil_time = input('Type the time it takes the water to boil [min]: ');    % Minutes
Boil_time_sec = Boil_time * 60;                                           % min --> sec
brand_name = input('Type the brand name and model of your stove: ', 's'); % User inputs brand name
Input_power = input('Type the power of the stove-top burner [W]: ');      % Input Power in Watts
Output_power = Q / Boil_time_sec;                                         % Output Power in Watts
Efficiency = (Output_power / Input_power) * 100;                          % Efficiency in percentage
% Print Statements
fprintf('\n\nEnergy required:\t%.0f J\n', Q);
fprintf('Power used by burner:\t%.0f W\n\n', Output_power);
fprintf('Burner efficency for a %s stove: %.1f%%\n', brand_name, Efficiency);