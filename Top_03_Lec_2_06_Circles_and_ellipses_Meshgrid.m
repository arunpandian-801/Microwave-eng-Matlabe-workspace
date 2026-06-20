% Topic 3 Numerical Analysis of TX Lines - Lecture 2.6 - Circles and
% ellipses via Linear Meshgrids

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Initialize Matlab
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all;
clc;
clear all; % Apparently MATLAB advices against using clear all for simply clearing variables

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Dashboard
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Grid Parameters
Sx = 10;
Sy = 10;
Nx = 100;
Ny = round((Nx/Sx)*Sy);

% Computing Axes
dx = Sx/Nx;
dy = Sy/Ny;
xa = (0.5:Nx - 0.5) * dx;   xa = xa - mean(xa); % Centers the grid
ya = (0.5:Ny - 0.5) * dy;   ya = ya - mean(ya); % Centers the grid

% Creating Grid
[Y,X] = meshgrid(ya,xa);

% Creating radial Grid
RSQ = X.^2 + Y.^2;

% Visualize the radial Grid
subplot(2,3,1);
imagesc(xa, ya, RSQ.');
colorbar;
axis equal tight;
title("Radial Grid Centered");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Circle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Circle centered at origin

r  = 4;             % Radius
C1 = RSQ <= r^2;    % Building Circle

% Visualize circle
subplot(2,3,2);
imagesc(xa, ya, C1.');
colorbar;
axis equal tight;
title("Circle centered at origin");

%% Circle centered elsewhere

% Defining radius and center co-ordinates
r   = 2;
x0  = 2;
y0  = -3;

% Defining a new grid axis centered around x0, y0 and not somewhere else
xa1 = xa - x0;
ya1 = ya - y0;
% Notice how we are using centered grid axis and not standard grid axis!

% Creating new meshgrid
[Y1, X1] = meshgrid(ya1, xa1);

% Creating radial grid
RSQ1 = X1.^2 + Y1.^2;

% Creating the circle
C2 = RSQ1 <= r^2;

% Visualize circle
subplot(2,3,3);
imagesc(xa, ya, C2.');  % Notice how I am still using xa and ya and not xa1 and ya1
                        % You need the old centered co-ordinate axis

colorbar;
axis equal tight;
title("Circle centered elsewhere");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Ellipse
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Defining radiuses and centre co-ordinates
r1 = 2;
r2 = 3;





































