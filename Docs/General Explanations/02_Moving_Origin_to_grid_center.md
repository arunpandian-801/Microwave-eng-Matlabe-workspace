# How to move origin of grid to center

We're calculating the grid axis, `xa` and `ya`. All we have to do, is to subtract it's contents from the mean of it's contents.

```
Nx = 100;
dx = 0.1;
xa = (0.5:Nx - 0.5)*dx;     % Yields: 0.05,   0.15,  0.25,.... 9.95
xa = xa - mean(xa);         % Yields: -4.95, -4.85, -4.75,.... 4.95
```

Similarly, when you do for `ya`, you get a centered axis values.

## Use this "centered" axis vectors to create your meshgrid

That's it, just use this adjusted axis vectors to create meshgrid as well as use it as x and y axis vectors when calling any drawing functions.

```
imagesc(xa, ya, X.');   % Uses the adjusted xa vector. Adjusted by "mean(xa)" in this case
```