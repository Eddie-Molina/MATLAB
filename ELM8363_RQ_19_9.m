%%
% Eddie Molina      ENGR 1300-009     2016-12-6
% Problem Statement:  Create a program to determine if a user-specified wavelength [nanometer, nm]
% is one of the six spectral colors.
clc; clear; close;
%%
% print spectral color wavelenght falls under
wave = input('Enter wavelengtgh in nanometers [nm]: ');

if (wave > 700 || wave < 400)
    fprintf('That wavelength is not within the visible spectrum.\n');
    elseif (wave <= 700 && wave >= 635)
        fprintf('That wavelenght falls within the Red spectral color.\n');
    elseif (wave < 635 && wave >= 590)
        fprintf('That wavelenght falls within the Orange spectral color.\n');
    elseif (wave < 590 && wave >= 560)
        fprintf('That wavelenght falls within the Yellow spectral color.\n');
    elseif (wave < 560 && wave >= 490)
        fprintf('That wavelenght falls within the Green spectral color.\n');
    elseif (wave < 490 && wave >= 450)
        fprintf('That wavelenght falls within the Blue spectral color.\n');
    elseif (wave < 450 && wave >= 400)
        fprintf('That wavelenght falls within the Violet spectral color.\n');
end
