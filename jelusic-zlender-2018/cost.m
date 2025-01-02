% this is function taken from Jelusic, P., Zlender, 2018 - Page 4 - Table 1
function result = cost(L, B, dexc, nexc, t1, t2, cexc, csta, cfso, ctran, cform, crein, ccund, cconc, chins, ctins, p, sr, rper, qs, ttins, h2, b2, fck, cn, tundc)
    % Calculate Ground Excavation Cost (Cexc)
    term1 = (L + 2*dexc) * (B + 2*dexc) * (t1 + t2 + dexc);
    term2 = (L + 2*dexc) * (t1 + t2 + dexc) * (t1 + t2 + dexc) / nexc;
    term3 = (B + 2*dexc) * (t1 + t2 + dexc) * (t1 + t2 + dexc) / nexc;
    term4 = 2 * (t1 + t2 + dexc) * 2 * (t1 + t2 + dexc) * (t1 + t2 + dexc) / (3 * nexc * nexc);
    Cexc = (term1 + term2 + term3 + term4) * cexc;

    % Calculate Stabilization Cost (Csta)
    Csta = (L + 2*dexc) * (B + 2*dexc) * csta;

    % Calculate Made Ground Cost (Cfso)
    term1 = (L + 2*dexc) * (B + 2*dexc) * (t1 + t2 + dexc);
    term2 = (L + 2*dexc) * (t1 + t2 + dexc) * (t1 + t2 + dexc) / nexc;
    term3 = (B + 2*dexc) * (t1 + t2 + dexc) * (t1 + t2 + dexc) / nexc;
    term4 = 2 * (t1 + t2 + dexc) * 2 * (t1 + t2 + dexc) * (t1 + t2 + dexc) / (3 * nexc * nexc);
    Cfso = (term1 + term2 + term3 + term4) * cfso;

    % Calculate Transportation Cost (Ctran)
    term1 = (L + 2*dexc) * (B + 2*dexc) * (t1 + t2 + dexc);
    term2 = (L + 2*dexc) * (t1 + t2 + dexc) * (t1 + t2 + dexc) / nexc;
    term3 = (B + 2*dexc) * (t1 + t2 + dexc) * (t1 + t2 + dexc) / nexc;
    term4 = 2 * (t1 + t2 + dexc) * 2 * (t1 + t2 + dexc) * (t1 + t2 + dexc) / (3 * nexc * nexc);
    Ctran = (term1 + term2 + term3 + term4) * ctran;

    % Calculate Formwork Cost (Cform)
    Cform = 2 * (L + B) * t2 * cform;

    % Calculate Reinforcing Steel Cost (Crein)
    term1 = (100 * p * pi * qs^2) / (4 * B * 1/sr);
    term2 = B * (t2 - cn - qs/2);
    max_term = max(term1 / term2, rper);
    Crein = (L * B * t2 * (max_term + 0.1) / 100 * qs) * 2 * crein;

    % Calculate Underlay Concrete Cost (Ccund)
    Ccund = (L + ttins) * (B + ttins) * tundc * ccund;

    % Calculate Concrete Cost (Cconc)
    term1 = L * B * t2 + h2 * b2 * t1;
    term2 = -0.027387 * (fck - 24) + 2.13392 * (fck - 24) + 82.99397;
    Cconc = (term1 * term2) * cconc / 85;

    % Calculate Hydro Insulation Cost (Chins)
    Chins = (2 * (L + B) * t2 + L * B) * chins;

    % Calculate Thermo Insulation Cost (Ctins)
    Ctins = (2 * (L + B) * t2 + L * B) * ctins;

    result = Cexc + Csta + Cfso + Ctran + Cform + Crein + Ccund + Cconc + ...
        Chins + Ctins;
endfunction
