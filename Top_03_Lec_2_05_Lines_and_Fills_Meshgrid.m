% Topic 3 Numerical Analysis of TX Lines - Lecture 2.5 - Lines and fills
% via Linear Meshgrids

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
xa = (0.5:Nx - 0.5) * dx;
ya = (0.5:Ny - 0.5) * dy;

% Creating Grid
[Y,X] = meshgrid(ya,xa);


% DEFINE POINTS ON THE LINE AND WIDTH OF FILL

x1 = 0;     y1 = 8;
x2 = 10;    y2 = 3;
w  = 1.7;               % Width of the line

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Implementing the fill
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% SIGNED DISTANCE FUNCTION

D = (y2 - y1)*X - (x2 - x1)*Y + x2*y1 - x1*y2;

% Scale D to the physical dimensions

D = D./sqrt((y2 - y1)^2 + (x2 - x1)^2);

% Visualize D

subplot(1,2,1);
imagesc(xa, ya, D.');
colorbar;
axis equal tight;
title("Signed Distance, D");

% LINE FILL OF WIDTH, "w" CENTERED AROUND OUR LINE

LFILL = abs(D) < w/2;

% Visualize LFILL

subplot(1,2,2);
imagesc(xa, ya, LFILL.');
colorbar;
axis equal tight;
title("Line Fill of width, w");









































