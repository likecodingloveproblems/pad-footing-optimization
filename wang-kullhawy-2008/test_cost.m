% Dimension
B0 = 0.3
L0 = 0.3
H = 0.6

% unit costs
Ce = 25.16
Cf = 51.97
Cr = 2.16
Cc = 173.96
Cb = 3.97

fobj = @(B, L, D) cost(B, B0, L, L0, D, H, Ce, Cf, Cc, Cr, Cb)

% First example
B = 2.6
L = 2.6
D = 0.6
assert(round(fobj(B, L, D)) == 1421, "Cost function is buggy!")

% Second example
B = 1.7
L = 2.4
D = 2.0
assert(round(fobj(B, L, D)) == 1143, "Cost function is buggy!")

disp("Tests completed successfully!")

