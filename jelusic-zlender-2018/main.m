% Material and labor costs
Cexc = 9.84; % Unit price of ground excavation (€/m³)
Csun = 2.0; % Unit price of the fill soil stabilization (€/m²)
Cjpo = 18.32; % Unit price of the fill soil (€/m³)
Ctram = 3.5; % Unit price of soil transportation (€/m³)
Cjorm = 15.5; % Unit price of the formwork (€/m²)
Crein = 1.2; % Unit price of steel reinforcement (€/kg)
Csmid = 70; % Unit price for underlay concrete (€/m³)
Cc = 85; % Unit price for foundation concrete (€/m³)
Chins = 10; % Unit price for hydro-insulation (€/m²)
Cinn = 0; % Unit price for thermo-insulation (€/m²)

% Thickness and density
Tunik = 0.1; % Thickness of the underlayment of concrete (m)
Tines = 0; % Thickness of the thermo-insulation (m)
Ps = 7850; % Steel density (kg/m³)
gamma_concrete = 25; % Concrete weight (kN/m³)

% Reinforcement and material properties
K = 0.13; % Steel reinforcement percentage (%)
Ec = 30000; % Relative stiffness coefficient (MPa)
Esub = 14; % Elasticity modulus of concrete (MPa)
gamma_soil = 18; % Weight density of soil (kN/m³)
phi = 35; % Shear angle (°)
c = 0; % Effective cohesion (kPa)
nu = 0.3; % Poisson ratio of soil

% Column dimensions
I1 = 0; % Column height (m)
I2 = 0.5; % Column length (m)
b2 = 0.5; % Column width (m)
Cn = 50; % Cover of concrete (mm)
dexc = 0.3; % Excavation width of soil (m)

% Partial safety factors
gamma_G = 1.35; % Partial safety factor for permanent actions
gamma_Q = 1.5; % Partial safety factor for variable actions
gamma_R = 1.4; % Partial safety factor for bearing resistance
gamma_phi = 1.25; % Partial factor on shearing resistance
gamma_c = 1.25; % Partial factor on cohesion resistance

% Foundation limits
S_max = 25; % Maximum settlement of foundation (mm)
theta_max = 0.002; % Maximum rotation of foundation (rad)

% Material properties
alpha_cc = 0.85; % Shearing resistance coefficient for concrete cast in situ
f_yk = 500; % Steel tensile strength (MPa)

% Loads
G_k = 1000; % Vertical permanent load (kN)
Q_k = 500; % Vertical variable load (kN)
H_Gx_k = 200; % Horizontal permanent load in x direction (kN)
H_Gy_k = 200; % Horizontal permanent load in y direction (kN)
H_Qx_k = 100; % Horizontal variable load in x direction (kN)
H_Qy_k = 100; % Horizontal variable load in y direction (kN)

% Moments
M_Gx_k = 0; % Permanent moment around x direction (kNm)
M_Qy_k = 0; % Variable moment around y direction (kNm)

% Eccentricity
e_x = 0; % Eccentricity of the column in x direction (mm)
e_y = 0; % Eccentricity of the column in y direction (mm)

% Discrete alternatives for dimensions and compressive strength of concrete
B = [0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9, 3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7, 3.8, 3.9, 4.0, 4.1, 4.2, 4.3, 4.4, 4.5, 4.6, 4.7, 4.8, 4.9, 5.0]; % Width of the pad footing (m)
L = [0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9, 3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7, 3.8, 3.9, 4.0, 4.1, 4.2, 4.3, 4.4, 4.5, 4.6, 4.7, 4.8, 4.9, 5.0]; % Length of the pad footing (m)
f_k = [25, 30, 35, 40, 45, 50]; % Compressive strength of concrete (MPa)

% Initial values
B_initial = 2.75; % Initial width of the pad footing (m)
L_initial = 2.75; % Initial length of the pad footing (m)
f_k_initial = 37.5; % Initial compressive strength of concrete (MPa)