

[Timestamped reference](https://www.youtube.com/watch?v=AGzABF4Iyr8&t=46s)

# Why compute Numerical height, Ny instead of using a number in our code?

You might have seen that the numerical height, `Ny` is computed from `Sx, Sy, and Nx`.

And the computation is as follows:

```
% Grid Parameters
Sx = 10;
Sy = 10;
Nx = 100;
Ny = round((Nx/Sx)*Sy);
```

The reason for doing this is to **create a square cell** (not a square grid, mind you). As even if you change the physical width, `Sx` and physical height, `Sy`, each cell on the Numerical grid will be a square!

## Let's test it

```
% Grid Parameters
Sx = 2;
Sy = 5;
Nx = 100;
Ny = round((Nx/Sx) * Sy);    % Evaluates to 250
```

If I computed my cell width,

```
dx = Sx/Nx;  % Evaluates to 0.02
dy = Sy/Ny;  % Evaluates to 0.02
```

See how "100 X 250" now neatly has each cell as a square of dimensions "0.02 X 0.02"! That's why we can comfortably change `Sx and Sy` and still end up with grid with square cells.

## In other words, we're just trying to keep each cell as a square

Observe that the trick in doing that is to maintain the **cell height and cell width as the same**.

```
Cell Height, dy = Sy/Ny;
Cell Width,  dx = Sx/Nx;

For a cell to be square, dy == dx => Sy/Ny == Sx/Nx

Therefore,   Ny = round((Nx/Sx) * Sy);
```