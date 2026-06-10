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

% Rectangle Parameters
wx = 7;
wy = 3;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Calculate a Grid
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Grid Axes
dx = Sx/Nx;
xa = (0.5:Nx-0.5)*dx;
dy = Sy/Ny;
ya = (0.5:Ny-0.5)*dy;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Build a Rectangle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Initialize
A = zeros(Nx,Ny);

% Dimensions of rectangle
nx = round(wx/dx);
ny = round(wy/dy);

% Co-ordinates of edges
nx1 = 1 + round((Nx - nx)/2); % Starting co-ordinate - x
nx2 = nx1 + nx;               % Ending co-ordinate - x
ny1 = 1 + round((Ny - ny)/2);
ny2 = ny1 + ny;

% Incorporate
A(nx1:nx2, ny1:ny2) = 1;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Draw the rectangle
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

imagesc(xa, ya, A.');
axis equal tight;
colorbar;





























