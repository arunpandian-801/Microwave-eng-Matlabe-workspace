% Topic 3 Numerical Analysis of TX Lines - Lecture 2.4 - Bars and Rectangles
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

% Bar and Rectangle combined co-ordinates in physical dimensions
x1 = 3.8;
x2 = 5.3;
y1 = 6;
y2 = 8;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Visualize Bars
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Horizontal Bar
A = (Y>=y1 & Y<=y2);
subplot(2,2,1);
imagesc(xa, ya, A.');
axis equal tight;
colorbar;
title("Horizontal bar");

% Vertical Bar
A = (X>=x1 & X<=x2);
subplot(2,2,2);
imagesc(xa, ya, A.');
axis equal tight;
colorbar;
title("Vertical bar");

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Visualize Rectangle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Rectangle is formed by the intersection of both Horizontal bar and
% Vertical bar

% Of course you can use your own edge co-ordinates
% But I got lazy and am just using the bar co-ordinates

% Rectangle confined within x1, x2, y1, y2
A = (X>=x1 & X<=x2 & Y>=y1 & Y<=y2);
subplot(2,2,3);
imagesc(xa, ya, A.');
axis equal tight;
colorbar;
title("Rectangle");




























