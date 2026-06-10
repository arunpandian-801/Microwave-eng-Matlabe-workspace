% Topic 3 Numerical Analysis of TX Lines - Lecture 2b - Meshgrids

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Initialize Matlab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all;
clc;
clear all; % Apparently MATLAB advices against using clear all for simply clearing variables

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Dashboard
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Grid Dimensions
Nx = 7;
Ny = 5;

% Grid Resoultion
dx = 1;
dy = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Grid Co-ordinates
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Axis Vectors
xa = (0.5:Nx-0.5)*dx;
ya = (0.5:Ny-0.5)*dy;

% Mesh grid
[Y,X] = meshgrid(ya,xa);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Various Grids
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Radial Grid
RSQ = X.^2 + Y.^2;
Circ = (RSQ <= 20.5);

% Azimuthal Grid
Theta = atan2(Y,X); % Not sure about this






































