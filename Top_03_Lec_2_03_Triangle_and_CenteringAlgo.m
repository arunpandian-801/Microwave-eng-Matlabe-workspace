% Topic 3 Numerical Analysis of TX Lines - Lecture 2.3 - Rectangles and
% Centering Algorithm

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

% Equilateral Triangle Parameters
w = 9;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Calculate a Grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Grid Axes
dx = Sx/Nx;
xa = (0.5:Nx-0.5) * dx;
dy = Sy/Ny;
ya = (0.5:Ny-0.5) * dy;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Build a Triangle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Initialize
A = zeros(Nx,Ny);

% Dimensions of triangle
h = w * sqrt(3)/2;  % Height of triangle

% Estimating the y-coordinates
ny  = round(h/dy);             % Gives the numerical height of triangle
ny1 = floor((Ny - ny)/2) + 1;  % Starting y coordinate
ny2 = ny1 + ny;                % Ending y coordinate

% Estimating the x-coordinates
for ny = ny1 : ny2

    % Computing the distance, d from the top
    d   = (ny - ny1);

    % Computing the numerical width, at distance, d
    nx  = round((d/(ny2 - ny1)) * (w/dx)) + 1; % Refer to it's docs

    % Computing start and end co-ordinates
    nx1 = floor((Nx - nx)/2) + 1;
    nx2 = nx1 + nx;

    % Incorporate the appropriate cells into the array
    A(nx1:nx2, ny) = 1;               % Fill only at y-coordinate of ny.
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Draw the rectangle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

imagesc(xa, ya, A.');
axis equal tight;
colorbar;





























