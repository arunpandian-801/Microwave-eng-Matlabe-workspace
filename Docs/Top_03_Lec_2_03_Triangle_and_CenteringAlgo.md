

# Explaining how the triangle is formed

The trick in filling a triangle, is to move from top to bottom along height. We will use just the **simple equilateral triangle**.

See Figure 01:

<img src="./Assets/Top_03_Lec_2_03_Triangle_and_CenteringAlgo/01_EquilateralTriangle_Construction_logic_dark.webp">
<figcaption><b>Figure 01:</b> Computing the width of triangle as we move along the height</figcaption>

<br>

At the top, we have no width. And the bottom (or at full depth of h from top) we have full width, W. In between we have a **proportional width which depends on how far we have traversed with respect to the total height, h.**

```
When d = 0,         f = 0   => No width
When d = h,         f = 1   => Full width
When d in between,  f = d/h => Width = f * w
```

Repeat till you traverse the full height.

## How the width in terms of cells is counted

We have `f = d/h`, which gives the fraction of width necessary for the triangle at a distance, d from the top.

Instead of multiplying that with the physical width, w, we will **multiply it with the numerical width** `w/Nx`, where `Nx` is the numerical width along 'x'.

By this, we have:

```
Width at distance, d, nx = round((d/h) * (w/Nx)) + 1;
```

> 📝 **NOTE:** The `+ 1` at the end takes care of adjusting the index to 1 and not to zero (0), as MATLAB indices start from 1.