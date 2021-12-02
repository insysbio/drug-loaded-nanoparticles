$PROB
# Model: `nameless`
  - Title: nameless
  - Notes: Generated automatically from platform with Heta compiler
  - Source: Heta compiler

# Demo
```{r,echo=TRUE}
  ev(amt=10) %>% mrgsim %>% plot
```

$SET end=120, delta=0.1, hmax=0.01, hmin=0, rtol=1e-3, atol=1e-6

$PARAM @annotated
// @Const 'reference mouse weight (U)'
W_animal_061 : 20.8 : (g)
// @Const 
W_T_061 : 0.366 : (g)
// @Const 
w_L_061 : 0.0538 : (dimensionless)
// @Const 
w_S_061 : 0.00601 : (dimensionless)
// @Const 
w_K_061 : 0.0142 : (dimensionless)
// @Const 
w_U_061 : 0.00679 : (dimensionless)
// @Const 
w_B_061 : 0.0814 : (dimensionless)
// @Const 
delta : 0.0075 : (dimensionless)
// @Const 
kdiff : 0.00549 : (kdiffUnits)
// @Const 
gamma : 0.57 : (dimensionless)
// @Const 'mouse weight for U'
W_animal : 20.8 : (g)
// @Const 
W_T : 0.366 : (g)
// @Const 
w_L : 0.0538 : (dimensionless)
// @Const 
w_S : 0.00601 : (dimensionless)
// @Const 
w_K : 0.0142 : (dimensionless)
// @Const 
w_U : 0.00679 : (dimensionless)
// @Const 
PS_K_061 : 0.000927 : (mL/h)
// @Const 
PS_L_061 : 0.0214 : (mL/h)
// @Const 
PS_R_061 : 0.0579 : (mL/h)
// @Const 
PS_S_061 : 0.00202 : (mL/h)
// @Const 
PS_T_061 : 0.00131 : (mL/h)
// @Const 
PS_U_061 : 0.000122 : (mL/h)
// @Const 'Injected dose of drug'
dose_D_ug_g : 2.5 : (ug/g)
// @Const 
w_B : 0.0814 : (dimensionless)
// @Const 
Q_L : 181.92 : (mL/h)
// @Const 
Q_S : 14.88 : (mL/h)
// @Const 
Q_K : 124.6 : (mL/h)
// @Const 
Q_U : 678 : (mL/h)
// @Const 
Q_R : 371.48 : (mL/h)
// @Const 
Q_T_g : 2.06 : (mL/h/g)
// @Const 
kel_L_D : 4.75 : (1/h)
// @Const 
bto_K : 0.0858 : (dimensionless)
// @Const 
bto_L : 0.141 : (dimensionless)
// @Const 
bto_S : 0.153 : (dimensionless)
// @Const 
bto_T : 0.00996 : (dimensionless)
// @Const 
bto_U : 0.223 : (dimensionless)
// @Const 'Hematocrit'
hemato : 0.45 : (dimensionless)
// @Const 
Kp_BC_D : 3.9 : (dimensionless)
// @Const 
Kp_S_D : 64.8 : (dimensionless)
// @Const 
Kp_K_D : 55.6 : (dimensionless)
// @Const 
Kp_U_D : 76.4 : (dimensionless)
// @Const 
Kp_L_D : 42 : (dimensionless)
// @Const 
Kp_R_D : 55.6 : (dimensionless)
// @Const 
Kp_T_D : 63.2 : (dimensionless)
// @Const 
b_PS : 1 : (dimensionless)
// @Const 
koef_resp_K : 79.3 : (dimensionless)
// @Const 
koef_resp_L : 209 : (dimensionless)
// @Const 
koef_resp_R : 246 : (dimensionless)
// @Const 
syn_resp : 1 : (mL/ug/h)
// @Const 
deg_resp : 2.46 : (1/h)
// @Const 'To fit the units checking'
zero_rate : 0 : (ug/h)
// @Const 'Injected dose of nanoparticles'
dose_NP_ug_g : 30 : (ug/g)
// @Const 
Kp_BC_NP : 0 : (dimensionless)
// @Const 
Kp_L_NP : 1000 : (dimensionless)
// @Const 
Kp_S_NP : 1000 : (dimensionless)
// @Const 
Kp_T_NP : 1000 : (dimensionless)
// @Const 
Kp_K_NP : 1000 : (dimensionless)
// @Const 
Kp_U_NP : 1000 : (dimensionless)
// @Const 
Kp_R_NP : 1000 : (dimensionless)
// @Const 
timezero : 1e-12 : (h)
// @Const 
conczero : 1e-9 : (ug/mL)
// @Const 
sigma_K : 0.1 : 
// @Const 
sigma_L : 0.1 : 
// @Const 
sigma_S : 0.1 : 
// @Const 
sigma_T : 0.1 : 
// @Const 
sigma_U : 0.1 : 
// @Const 
sigma_P : 0.1 : 
// @TimeSwitcher 
single_dose_sw : 1 :

$CMT @annotated
// @Species 'Free drug in blood'
D_B_amt_ : as amount
// @Species 'Free drug in liver'
D_L_amt_ : as amount
// @Species 'Free drug in spleen'
D_S_amt_ : as amount
// @Species 'Free drug in tumor'
D_T_amt_ : as amount
// @Species 'Free drug in kidneys'
D_K_amt_ : as amount
// @Species 'Free drug in lungs'
D_U_amt_ : as amount
// @Species 'Free drug in ROB'
D_R_amt_ : as amount
// @Record ''
response : amount
// @Species 'Nanoparticles in blood'
NP_B_amt_ : as amount
// @Species 'Nanoparticles in liver'
NP_L_amt_ : as amount
// @Species 'Nanoparticles in spleen'
NP_S_amt_ : as amount
// @Species 'Nanoparticles in tumor'
NP_T_amt_ : as amount
// @Species 'Nanoparticles in kidneys'
NP_K_amt_ : as amount
// @Species 'Nanoparticles in lungs'
NP_U_amt_ : as amount
// @Species 'Nanoparticles in ROB'
NP_R_amt_ : as amount

$GLOBAL
#define D_B (D_B_amt_ / V_B)
#define D_L (D_L_amt_ / V_L)
#define D_S (D_S_amt_ / V_S)
#define D_T (D_T_amt_ / V_T)
#define D_K (D_K_amt_ / V_K)
#define D_U (D_U_amt_ / V_U)
#define D_R (D_R_amt_ / V_R)
#define NP_B (NP_B_amt_ / V_B)
#define NP_L (NP_L_amt_ / V_L)
#define NP_S (NP_S_amt_ / V_S)
#define NP_T (NP_T_amt_ / V_T)
#define NP_K (NP_K_amt_ / V_K)
#define NP_U (NP_U_amt_ / V_U)
#define NP_R (NP_R_amt_ / V_R)

$PREAMBLE
//double D_B = 0.0;
//double D_L = 0.0;
//double D_S = 0.0;
//double D_T = 0.0;
//double D_K = 0.0;
//double D_U = 0.0;
//double D_R = 0.0;
//double response = 0.0;
//double NP_B = 0.0;
//double NP_L = 0.0;
//double NP_S = 0.0;
//double NP_T = 0.0;
//double NP_K = 0.0;
//double NP_U = 0.0;
//double NP_R = 0.0;
self.mevent(0, 10);

$MAIN
D_B_amt__0 = (0.0) * V_B;
D_L_amt__0 = (0.0) * V_L;
D_S_amt__0 = (0.0) * V_S;
D_T_amt__0 = (0.0) * V_T;
D_K_amt__0 = (0.0) * V_K;
D_U_amt__0 = (0.0) * V_U;
D_R_amt__0 = (0.0) * V_R;
response_0 = (0.0);
NP_B_amt__0 = (0.0) * V_B;
NP_L_amt__0 = (0.0) * V_L;
NP_S_amt__0 = (0.0) * V_S;
NP_T_amt__0 = (0.0) * V_T;
NP_K_amt__0 = (0.0) * V_K;
NP_U_amt__0 = (0.0) * V_U;
NP_R_amt__0 = (0.0) * V_R;

$TABLE
// single_dose_sw @TimeSwitcher
if (single_dose_sw && EVID==10 && TIME>0.0) { 
  mrg::evdata evt_D_B_(TIME, 8);
  evt_D_B_.amt = dose_D_ug * V_B;
  evt_D_B_.cmt = 1;
  evt_D_B_.now = true;
  self.mevector.push_back(evt_D_B_); 
  mrg::evdata evt_NP_B_(TIME, 8);
  evt_NP_B_.amt = dose_NP_ug * V_B;
  evt_NP_B_.cmt = 9;
  evt_NP_B_.now = true;
  self.mevector.push_back(evt_NP_B_);
}

$ODE
// @Record ''
double rho_avg = 1.0;
// @Compartment 'Blood volume'
double V_B = W_animal / rho_avg * (w_B + w_L * bto_L + w_S * bto_S + w_K * bto_K + w_U * bto_U) + W_T / rho_avg * bto_T;
// @Compartment 'Volume of blood plasma'
double V_P = V_B * (1.0 - hemato);
// @Record ''
double dose_D_ug = delta * dose_D_ug_g * W_animal / V_B;
// @Compartment 'Liver volume'
double V_L = W_animal / rho_avg * w_L * (1.0 - bto_L);
// @Reaction ''
double vdist_D_L = (Q_L - Q_S) * (D_B) - Q_L * (D_L / Kp_L_D * (hemato * Kp_BC_D + 1.0 - hemato));
// @Reaction ''
double vdist_D_S = Q_S * (D_B);
// @Compartment 'Spleen volume'
double V_S = W_animal / rho_avg * w_S * (1.0 - bto_S);
// @Reaction ''
double vdist_D_SL = Q_S * (D_S / Kp_S_D * (hemato * Kp_BC_D + 1.0 - hemato));
// @Record ''
double Q_T = Q_T_g * W_T;
// @Compartment 'Tumor colume'
double V_T = W_T / rho_avg * (1.0 - bto_T);
// @Reaction ''
double vdist_D_T = Q_T * (D_B - D_T / Kp_T_D * (hemato * Kp_BC_D + 1.0 - hemato));
// @Compartment 'Kidneys volume'
double V_K = W_animal / rho_avg * w_K * (1.0 - bto_K);
// @Reaction ''
double vdist_D_K = Q_K * (D_B - D_K / Kp_K_D * (hemato * Kp_BC_D + 1.0 - hemato));
// @Compartment 'Lungs volume'
double V_U = W_animal / rho_avg * w_U * (1.0 - bto_U);
// @Reaction ''
double vdist_D_U = Q_U * (D_B - D_U / Kp_U_D * (hemato * Kp_BC_D + 1.0 - hemato));
// @Record ''
double w_R = 1.0 - w_L - w_S - w_K - w_U - w_B - W_T / W_animal;
// @Compartment 'Rest of body (ROB) volume'
double V_R = W_animal / rho_avg * w_R;
// @Reaction ''
double vdist_D_R = Q_R * (D_B - D_R / Kp_R_D * (hemato * Kp_BC_D + 1.0 - hemato));
// @Reaction ''
double vcl_D_L = V_L * (kel_L_D * D_L);
// @Reaction ''
double vcl_D_S = zero_rate;
// @Reaction ''
double vcl_D_T = zero_rate;
// @Reaction ''
double vcl_D_K = zero_rate;
// @Reaction ''
double vcl_D_U = zero_rate;
// @Reaction ''
double vcl_D_R = zero_rate;
// @Reaction ''
double vcl_D_B = zero_rate;
// @Record ''
double D_P = D_B / (hemato * Kp_BC_D + 1.0 - hemato);
// @Process ''
double v_ir = syn_resp * D_P - deg_resp * response;
// @Record ''
double dose_NP_ug = dose_NP_ug_g * W_animal / V_B;
// @Record ''
double PS_L = PS_L_061 * pow(w_L * W_animal / w_L_061 / W_animal_061, b_PS) * exp(-koef_resp_L * response);
// @Record ''
double NP_P = NP_B / (hemato * Kp_BC_NP + 1.0 - hemato);
// @Reaction ''
double vdist_NP_L = PS_L * (NP_P - NP_L / Kp_L_NP);
// @Record ''
double PS_S = PS_S_061 * pow(w_S * W_animal / w_S_061 / W_animal_061, b_PS);
// @Reaction ''
double vdist_NP_S = PS_S * (NP_P - NP_S / Kp_S_NP);
// @Record ''
double PS_T = PS_T_061 * pow(W_T / W_T_061, b_PS);
// @Reaction ''
double vdist_NP_T = PS_T * (NP_P - NP_T / Kp_T_NP);
// @Record ''
double PS_K = PS_K_061 * pow(w_K * W_animal / w_K_061 / W_animal_061, b_PS) * exp(-koef_resp_K * response);
// @Reaction ''
double vdist_NP_K = PS_K * (NP_P - NP_K / Kp_K_NP);
// @Record ''
double PS_U = PS_U_061 * pow(w_U * W_animal / w_U_061 / W_animal_061, b_PS);
// @Reaction ''
double vdist_NP_U = PS_U * (NP_P - NP_U / Kp_U_NP);
// @Record ''
double w_R_061 = 1.0 - w_L_061 - w_S_061 - w_K_061 - w_U_061 - w_B_061 - W_T_061 / W_animal_061;
// @Record ''
double PS_R = PS_R_061 * pow(w_R * W_animal / w_R_061 / W_animal_061, b_PS) * exp(-koef_resp_R * response);
// @Reaction ''
double vdist_NP_R = PS_R * (NP_P - NP_R / Kp_R_NP);
// @Reaction ''
double vcl_NP_L = zero_rate;
// @Reaction ''
double vcl_NP_S = zero_rate;
// @Reaction ''
double vcl_NP_T = zero_rate;
// @Reaction ''
double vcl_NP_K = zero_rate;
// @Reaction ''
double vcl_NP_U = zero_rate;
// @Reaction ''
double vcl_NP_R = zero_rate;
// @Reaction ''
double vcl_NP_B = zero_rate;
// @Record ''
double v = exp(-kdiff / (1.0 - gamma) * pow(SOLVERTIME + timezero, 1.0 - gamma));
// @Record ''
double vrel = kdiff * pow(SOLVERTIME + timezero, -gamma) * v * (1.0 - delta);
// @Reaction ''
double vrel_L = V_L * NP_L * vrel * dose_D_ug_g / dose_NP_ug_g;
// @Reaction ''
double vrel_S = V_S * NP_S * vrel * dose_D_ug_g / dose_NP_ug_g;
// @Reaction ''
double vrel_T = V_T * NP_T * vrel * dose_D_ug_g / dose_NP_ug_g;
// @Reaction ''
double vrel_K = V_K * NP_K * vrel * dose_D_ug_g / dose_NP_ug_g;
// @Reaction ''
double vrel_U = V_U * NP_U * vrel * dose_D_ug_g / dose_NP_ug_g;
// @Reaction ''
double vrel_R = V_R * NP_R * vrel * dose_D_ug_g / dose_NP_ug_g;
// @Reaction ''
double vrel_B = V_B * NP_B * vrel * dose_D_ug_g / dose_NP_ug_g;
// @Record ''
double NP_L_cap = (NP_B * W_animal * w_L * bto_L) / (W_animal * w_L);
// @Record ''
double NP_S_cap = (NP_B * W_animal * w_S * bto_S) / (W_animal * w_S);
// @Record ''
double NP_T_cap = (NP_B * W_T * bto_T) / (W_T);
// @Record ''
double NP_K_cap = (NP_B * W_animal * w_K * bto_K) / (W_animal * w_K);
// @Record ''
double NP_U_cap = (NP_B * W_animal * w_U * bto_U) / (W_animal * w_U);
// @Record ''
double NP_L_tissue = (NP_L * V_L) / (W_animal / rho_avg * w_L);
// @Record ''
double NP_S_tissue = (NP_S * V_S) / (W_animal / rho_avg * w_S);
// @Record ''
double NP_T_tissue = (NP_T * V_T) / (W_T / rho_avg);
// @Record ''
double NP_K_tissue = (NP_K * V_K) / (W_animal / rho_avg * w_K);
// @Record ''
double NP_U_tissue = (NP_U * V_U) / (W_animal / rho_avg * w_U);
// @Record ''
double NP_L_aver = (NP_L * V_L + NP_B * W_animal / rho_avg * w_L * bto_L) / (W_animal / rho_avg * w_L);
// @Record ''
double D_all_in_NP = (1.0 - delta) * v;
// @Record ''
double D_L_aver0 = NP_L_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g;
// @Record ''
double D_L_free = (D_L * V_L + D_B * W_animal / rho_avg * w_L * bto_L) / (V_L + W_animal / rho_avg * w_L * bto_L);
// @Record ''
double D_L_aver = D_L_aver0 + D_L_free;
// @Record ''
double NP_S_aver = (NP_S * V_S + NP_B * W_animal / rho_avg * w_S * bto_S) / (W_animal / rho_avg * w_S);
// @Record ''
double D_S_aver0 = NP_S_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g;
// @Record ''
double D_S_free = (D_S * V_S + D_B * W_animal / rho_avg * w_S * bto_S) / (V_S + W_animal / rho_avg * w_S * bto_S);
// @Record ''
double D_S_aver = D_S_aver0 + D_S_free;
// @Record ''
double NP_T_aver = (NP_T * V_T + NP_B * W_T / rho_avg * bto_T) / (W_T / rho_avg);
// @Record ''
double D_T_aver0 = NP_T_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g;
// @Record ''
double D_T_free = (D_T * V_T + D_B * W_T / rho_avg * bto_T) / (V_T + W_T / rho_avg * bto_T);
// @Record ''
double D_T_aver = D_T_aver0 + D_T_free;
// @Record ''
double NP_K_aver = (NP_K * V_K + NP_B * W_animal / rho_avg * w_K * bto_K) / (W_animal / rho_avg * w_K);
// @Record ''
double D_K_aver0 = NP_K_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g;
// @Record ''
double D_K_free = (D_K * V_K + D_B * W_animal / rho_avg * w_K * bto_K) / (V_K + W_animal / rho_avg * w_K * bto_K);
// @Record ''
double D_K_aver = D_K_aver0 + D_K_free;
// @Record ''
double NP_U_aver = (NP_U * V_U + NP_B * W_animal / rho_avg * w_U * bto_U) / (W_animal / rho_avg * w_U);
// @Record ''
double D_U_aver0 = NP_U_aver * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g;
// @Record ''
double D_U_free = (D_U * V_U + D_B * W_animal / rho_avg * w_U * bto_U) / (V_U + W_animal / rho_avg * w_U * bto_U);
// @Record ''
double D_U_aver = D_U_aver0 + D_U_free;
// @Record ''
double D_P_aver0 = NP_P * D_all_in_NP * dose_D_ug_g / dose_NP_ug_g;
// @Record ''
double D_P_aver = D_P_aver0 + D_P;

dxdt_D_B_amt_ = (-1)*vdist_D_L + (-1)*vdist_D_S + (-1)*vdist_D_T + (-1)*vdist_D_K + (-1)*vdist_D_U + (-1)*vdist_D_R + (-1)*vcl_D_B + (1)*vrel_B;
dxdt_D_L_amt_ = (1)*vdist_D_L + (1)*vdist_D_SL + (-1)*vcl_D_L + (1)*vrel_L;
dxdt_D_S_amt_ = (1)*vdist_D_S + (-1)*vdist_D_SL + (-1)*vcl_D_S + (1)*vrel_S;
dxdt_D_T_amt_ = (1)*vdist_D_T + (-1)*vcl_D_T + (1)*vrel_T;
dxdt_D_K_amt_ = (1)*vdist_D_K + (-1)*vcl_D_K + (1)*vrel_K;
dxdt_D_U_amt_ = (1)*vdist_D_U + (-1)*vcl_D_U + (1)*vrel_U;
dxdt_D_R_amt_ = (1)*vdist_D_R + (-1)*vcl_D_R + (1)*vrel_R;
dxdt_response = (1)*v_ir;
dxdt_NP_B_amt_ = (-1)*vdist_NP_L + (-1)*vdist_NP_S + (-1)*vdist_NP_T + (-1)*vdist_NP_K + (-1)*vdist_NP_U + (-1)*vdist_NP_R + (-1)*vcl_NP_B;
dxdt_NP_L_amt_ = (1)*vdist_NP_L + (-1)*vcl_NP_L;
dxdt_NP_S_amt_ = (1)*vdist_NP_S + (-1)*vcl_NP_S;
dxdt_NP_T_amt_ = (1)*vdist_NP_T + (-1)*vcl_NP_T;
dxdt_NP_K_amt_ = (1)*vdist_NP_K + (-1)*vcl_NP_K;
dxdt_NP_U_amt_ = (1)*vdist_NP_U + (-1)*vcl_NP_U;
dxdt_NP_R_amt_ = (1)*vdist_NP_R + (-1)*vcl_NP_R;

$CAPTURE @annotated
D_all_in_NP :  (dimensionless)
NP_L_aver :  (ug/mL)
NP_S_aver :  (ug/mL)
NP_T_aver :  (ug/mL)
NP_K_aver :  (ug/mL)
NP_U_aver :  (ug/mL)
NP_L_cap :  (ug/mL)
NP_S_cap :  (ug/mL)
NP_T_cap :  (ug/mL)
NP_K_cap :  (ug/mL)
NP_U_cap :  (ug/mL)
NP_L_tissue :  (ug/mL)
NP_S_tissue :  (ug/mL)
NP_T_tissue :  (ug/mL)
NP_K_tissue :  (ug/mL)
NP_U_tissue :  (ug/mL)
D_L_free :  (ug/mL)
D_S_free :  (ug/mL)
D_T_free :  (ug/mL)
D_K_free :  (ug/mL)
D_U_free :  (ug/mL)
D_L_aver0 :  (ug/mL)
D_S_aver0 :  (ug/mL)
D_T_aver0 :  (ug/mL)
D_K_aver0 :  (ug/mL)
D_U_aver0 :  (ug/mL)
D_P_aver0 :  (ug/mL)
D_L_aver :  (ug/mL)
D_S_aver :  (ug/mL)
D_T_aver :  (ug/mL)
D_K_aver :  (ug/mL)
D_U_aver :  (ug/mL)
D_P_aver :  (ug/mL)
