addpath("../libs/analyze/pad_footing/bearing_capacity")
addpath("../libs/analyze/pad_footing/settlement")
addpath("../libs/optimization-algorithms/GWO")

% Soil properties
phi = 35
gama = 18.5
E = 50
v = 0.3 % poisson ratio

% Design criteria
FS_r = 3
settlement_r = 25

% Dimension
B0 = 0.3
L0 = 0.3
H = 0.6

% Load
F = 3000

% unit costs
Ce = 25.16
Cf = 51.97
Cr = 2.16
Cc = 173.96
Cb = 3.97

% We can have penalize cost function like thing
% max(FS - FS_r, 0) * cost_of_failure + max(settlement - settlement_r, 0) * cost_of_failure
cost_of_failure = 1e9
FS = @(B, L, D) vesic(B, L, D, phi, gama) * B * L / F
settlement = @(B, L) poulos_davis(B, L, E, v, F)
penalty = @(B, L, D) max(FS_r - FS(B, L, D), 0) * cost_of_failure + max(settlement(B, L) - settlement_r, 0) * cost_of_failure
penalized_cost = @(B, L, D) cost(B, B0, L, L0, D, H, Ce, Cf, Cc, Cr, Cb) + penalty(B, L, D)
fobj = @(x) penalized_cost(x(1), x(2), x(3))

% Optimization parameters
num_agents = 50
num_iterations = 1000
dimension = 3
lb = [1.5, 1.5, 0.5]
ub = [3, 3, 2]
[cgwo, xgwo, ccgwo] = GWO(num_agents, num_iterations, lb, ub, dimension, fobj);

% Print optimized values
B_opt = xgwo(1);
L_opt = xgwo(2);
D_opt = xgwo(3);
fprintf('Optimized B: %.4f\n', B_opt);
fprintf('Optimized L: %.4f\n', L_opt);
fprintf('Optimized D: %.4f\n', D_opt);

fprintf('Optimized cost: %.f\n', cgwo);
plot(ccgwo)

fprintf('Optimized FS: %.1f\n', FS(B_opt, L_opt, D_opt));
fprintf('Optimized settlement: %.1f\n', round(settlement(B_opt, L_opt)));
