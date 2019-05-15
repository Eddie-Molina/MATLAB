%%
% Eddie Molina      ENGR 1300-009     2016-10-25
% Problem Statement: Determine how far the Microjoule
% will travel in kilometers.
clc;
clear;
close;

%%
% Variables and Constants
SG_ethonal = 0.787;                                       % Specific gravity is unitless
rho_water = 1;                                            % Units in g/cm^3
mass_ethonal = input('Enter mass of ethonal [grams]: ');  % Units in grams
mpg = 10705;                                              % Units mi/gal


%%
% Conversions and Calculations
rho_ethonal = SG_ethonal * rho_water; % Density of ethonal g/cm^3
volInCM = mass_ethonal/rho_ethonal;   % Volume in cm^3
volInGal = volInCM * .264 / 1000;     % cm^3 --> mL --> L --> gal
distance_miles = mpg * volInGal;      % Distance in miles
distance_km = distance_miles / 0.621; % miles --> kilometers

fprintf(('The distance the Microjoule traveled is %.0f kilometers.\n'), distance_km);

