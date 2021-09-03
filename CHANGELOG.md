# Change Log

## 0.1.0 - original model in Heta

- model reproduced from the original article
- conversion to SLV format, see simulations in `diagnostics/reproduced model`
- model structure difference: 
    - can be applied separately for different conditions, i.e `form_id=1` and specific mouse population `pop_id=61`
- renaming parameters:
    `w_B_m` => `w_B`,
    `bto_L_m` => `bto_L`,
    `bto_S_m` => `bto_S`,
    `bto_T_m` => `bto_T`,
    `bto_K_m` => `bto_K`,
    `bto_U_m` => `bto_U`
- ! cannot reproduce NoNP data for D_S_log, fitting required
