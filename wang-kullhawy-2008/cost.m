function result = cost(B, B0, L, L0, D, H, Ce, Cf, Cc, Cr, Cb)
  k = 29.67; % kg/m^3 (Means 1990)
  Qe = (B + B0) * (L + L0) * D;
  Qf = 2 * H * (B + L);
  Qc = B * L * H;
  Qr = k * Qc;
  Qb = Qe - Qc;
  result = Qe * Ce + Qf * Cf + Qc * Cc + Qb * Cb + Qr * Cr;
end
