%%
% Eddie Molina   ENGR 1300-009   2016-10-20
% Problem Statement: (1) Calculate the thermal energy in joules that must
% be removed for each rod to cool it from 300 to 50 degrees Ceslsius for
% each mass. (2) Determine the volume of fluid needed in gallons to
% properly cool the rod for each mass.
clc;
clear;
close;

%%
% Variables and Constants
SG_glyc = 1.261; % Specific Gravity of glycerol Unitless
rho_water = 1;   % g/cm^3

% Temperatures
Temp_one = 300; % Degrees Celsius
Temp_two = 50;  % Degrees Celsius
Temp_diff = Temp_one - Temp_two;
% Specific Heats [J/(g C)]
cp_alum = 0.897; % Aluminum 
cp_cad = 0.231;  % Cadmium
cp_ir = 0.450;   % Iron
cp_tung = 0.134; % Tungsten
cp_glyc = 2.4;   % Glycerol

% Mass in grams
massAl = [2000;2500;3000;4000;5500;7500;8000];
massCad = [3000;4000;6500;8000;10000;11000;15000];
massIron = [2500;3500;4500;5000;5500;7500;9000];
massTung = [4800;6400;10400;12800;16000;17600;24000];



%%
% Conversions and Calculations
rho_glyc = SG_glyc * rho_water;                    % g/cm^3
rho_glyc = (rho_glyc * 1000) / 0.264;                % g/gal
Q_alum = massAl * cp_alum * Temp_diff; % Joules
Q_cad = massCad * cp_cad * Temp_diff;
Q_iron = massIron * cp_ir * Temp_diff;
Q_tung = massTung * cp_tung * Temp_diff;
Vol_alum = massAl / rho_glyc;                      % gal
Vol_cad = massCad / rho_glyc;
Vol_iron = massIron / rho_glyc;
Vol_tung = massTung / rho_glyc;


fprintf('Thermal Energy removed for Aluminum:\n');
fprintf('%0.0f [J]\n', Q_alum);
fprintf('\n');

fprintf('Thermal Energy removed for Cadmium:\n');
fprintf('%0.0f [J]\n', Q_cad);
fprintf('\n');

fprintf('Thermal Energy removed for Iron:\n');
fprintf('%0.0f [J]\n', Q_iron);
fprintf('\n');

fprintf('Thermal Energy removed for Tungsten:\n');
fprintf('%0.0f [J]\n', Q_tung);
fprintf('\n');


% Matrix for Aluminum
matrixAl = [massAl, Vol_alum]
matrixCad = [massCad, Vol_cad]
matrixIron = [massIron, Vol_iron]
matrixTung = [massTung, Vol_tung]


