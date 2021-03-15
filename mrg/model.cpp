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
// @Const ''
Vmax_NAT : 300 : (nM/h)
// @Const ''
p_A : 0.051 : (UL)
// @Const ''
p_O : 0.098 : (UL)
// @Const ''
p_P : 0.615 : (UL)
// @Const ''
p_L : 0.016 : (UL)
// @Const ''
p_S : 0.191 : (UL)
// @Const ''
a_NAT_A : 1 : (UL)
// @Const ''
a_NAT_O : 13 : (UL)
// @Const ''
a_NAT_P : 0.42 : (UL)
// @Const ''
a_NAT_L : 8.6 : (UL)
// @Const ''
a_NAT_S : 1 : (UL)
// @Const ''
b_NAT_Brain : 1.667 : (UL)
// @Const ''
b_NAT_Pancreas : 0.333 : (UL)
// @Const ''
b_NAT_Kidney : 0.667 : (UL)
// @Const ''
b_NAT_Heart : 1 : (UL)
// @Const ''
b_NAT_Lungs : 0.033 : (UL)
// @Const ''
b_NAT_Muscles : 0.333 : (UL)
// @Const ''
b_NAT_Testis : 0.667 : (UL)
// @Const ''
b_NAT_Leucocytes : 0 : (UL)
// @Const ''
k_NA_PE : 202 : (1/h)
// @Const ''
k_NO_PE : 230 : (1/h)
// @Const ''
k_NP_PE : 270 : (1/h)
// @Const ''
k_NL_PE : 100 : (1/h)
// @Const ''
k_NS_PE : 280 : (1/h)
// @Const ''
Km_NA_PE : 2800 : (nM)
// @Const ''
Km_NO_PE : 2900 : (nM)
// @Const ''
Km_NP_PE : 3300 : (nM)
// @Const ''
Km_NL_PE : 1000 : (nM)
// @Const ''
Km_NS_PE : 3400 : (nM)
// @Const ''
Ki_A : 230 : (nM)
// @Const ''
Ki_O : 240 : (nM)
// @Const ''
Ki_P : 6700 : (nM)
// @Const ''
Ki_L : 1000 : (nM)
// @Const ''
Ki_S : 840 : (nM)
// @Const ''
kcat_FAAH : 18000 : (1/h)
// @Const ''
FAAH_t : 78 : (nM)
// @Const ''
a_FAAH_A : 1 : (UL)
// @Const ''
a_FAAH_O : 5.7 : (UL)
// @Const ''
a_FAAH_P : 37.8 : (UL)
// @Const ''
a_FAAH_L : 1.15 : (UL)
// @Const ''
a_FAAH_S : 1 : (UL)
// @Const ''
b_FAAH_Liver : 1 : (UL)
// @Const ''
b_FAAH_Brain : 0.197 : (UL)
// @Const ''
b_FAAH_Gut : 0.034 : (UL)
// @Const ''
b_FAAH_Spleen : 0.03 : (UL)
// @Const ''
b_FAAH_Kidney : 0.069 : (UL)
// @Const ''
b_FAAH_Lungs : 0.032 : (UL)
// @Const ''
b_FAAH_Testis : 0.126 : (UL)
// @Const ''
b_FAAH_MEC : 0.137 : (UL)
// @Const ''
b_FAAH_Leucocytes : 0 : (UL)
// @Const ''
Km_FAAH_A : 8200 : (nM)
// @Const ''
Km_FAAH_O : 52200 : (nM)
// @Const ''
Km_FAAH_P : 543000 : (nM)
// @Const ''
Km_FAAH_L : 10800 : (nM)
// @Const ''
Km_FAAH_S : 10000 : (nM)
// @Const ''
k_deg_FAAH : 0.0051 : (1/h)
// @Const ''
k_inh : 1.1 : (1/h/nM)
// @Const ''
kcl_A : 1.74 : (1/h)
// @Const ''
kcl_O : 2.5 : (1/h)
// @Const ''
kcl_P : 2.61 : (1/h)
// @Const ''
kcl_L : 1.25 : (1/h)
// @Const ''
kcl_S : 1.2 : (1/h)
// @Const ''
b_NAAA_Liver : 1 : (UL)
// @Const ''
b_NAAA_Gut : 0.2 : (UL)
// @Const ''
b_NAAA_Spleen : 8 : (UL)
// @Const ''
b_NAAA_Kidney : 0.6 : (UL)
// @Const ''
b_NAAA_Heart : 0.2 : (UL)
// @Const ''
b_NAAA_Lungs : 14 : (UL)
// @Const ''
b_NAAA_Thymus : 4 : (UL)
// @Const ''
b_NAAA_Testis : 0.6 : (UL)
// @Const ''
b_NAAA_Brain : 0.6 : (UL)
// @Const ''
M_A : 347.5 : (g/mole)
// @Const ''
M_O : 325.5 : (g/mole)
// @Const ''
M_P : 299.5 : (g/mole)
// @Const ''
M_L : 323.5 : (g/mole)
// @Const ''
M_S : 321.5 : (g/mole)
// @Const ''
Kd_CB1_A : 239.2 : (nM)
// @Const ''
Kd_AG2 : 3424 : (nM)
// @Const ''
AG2_b : 0 : 
// @Const ''
Dose : 10 : (mg)
// @Const ''
M_PF : 455.4 : (g/mole)
// @Const ''
Vss_PFM : 58.328 : (L)
// @Const ''
Emax_PFM : 0.773 : (UL)
// @Const ''
ED50 : 0.53 : (mg)
// @Const ''
kabs_PFM : 2.2 : (1/h)
// @Const ''
kout_PFM : 0.18 : (1/h)
// @Const ''
kin_PFM : 0.117 : (1/h)
// @Const ''
klinear_PFM : 0.0803 : (1/h)
// @Const ''
Vm_PFM : 1511 : (ng/h)
// @Const ''
Km_PFM : 26.1 : (ng/L)
// @Const 'blood/plasma'
R_PF : 0.6 : (UL)
// @Const ''
Kp_b_PF : 1.3 : (UL)
// @Const ''
Kp_m_PF : 1.3 : (UL)
// @Const ''
Kp_r_PF : 1.5 : (UL)
// @Const ''
m_per_n : 1000000 : ((1e-6 UL))
// @Const ''
PLD_b : 10000000 : (nM)
// @Const ''
PLD_r : 10000000 : (nM)
// @Const ''
LIVER : 1.69 : (L)
// @Const ''
Gut : 1.65 : (L)
// @Const ''
Spleen : 0.192 : (L)
// @Const ''
Kidney : 0.28 : (L)
// @Const ''
Lungs : 1.172 : (L)
// @Const ''
Testis : 0.036 : (L)
// @Const ''
Leucocytes : 0.025 : (L)
// @Const ''
Pancreas : 0.077 : (L)
// @Const ''
Heart : 0.31 : (L)
// @Const ''
Muscles : 35 : (L)
// @Const ''
Thymus : 0.029 : (L)
// @Const ''
H : 0.48 : 
// @Const ''
ktr_m_p_A : 150 : (nM/h)
// @Const ''
Ktr_p_m_A : 1.89 : (UL)
// @Const ''
Km_p_m_A : 1 : (nM)
// @Const ''
ktr_m_p_O : 10 : (1/h)
// @Const ''
Ktr_p_m_O : 9.07 : (UL)
// @Const ''
ktr_m_p_P : 10 : (1/h)
// @Const ''
Ktr_p_m_P : 2.65 : (UL)
// @Const ''
ktr_m_p_L : 0 : (1/h)
// @Const ''
Ktr_p_m_L : 2.77 : (UL)
// @Const ''
ktr_m_p_S : 10 : (1/h)
// @Const ''
Ktr_p_m_S : 30.01 : (UL)
// @Const ''
ktr_r_p_A : 100 : (nM/h)
// @Const ''
ktr_r_p : 100 : (1/h)
// @Const ''
Ktr_p_r_A : 0.62 : (UL)
// @Const ''
Ktr_p_r_O : 2.8 : (UL)
// @Const ''
Ktr_p_r_P : 0.85 : (UL)
// @Const ''
Ktr_p_r_L : 0.89 : (UL)
// @Const ''
Ktr_p_r_S : 9.19 : (UL)

$CMT @annotated
// @Species ''
PFM_gut : amount
// @Species ''
PFM_p : amount
// @Species ''
PFM_r : amount
// @Species ''
A_b_amt_ : as amount
// @Species ''
O_b_amt_ : as amount
// @Species ''
P_b_amt_ : as amount
// @Species ''
L_b_amt_ : as amount
// @Species ''
S_b_amt_ : as amount
// @Species ''
NAPE_b_amt_ : as amount
// @Species ''
NOPE_b_amt_ : as amount
// @Species ''
NPPE_b_amt_ : as amount
// @Species ''
NLPE_b_amt_ : as amount
// @Species ''
NSPE_b_amt_ : as amount
// @Species ''
FAAH_b_amt_ : as amount
// @Species ''
FAAHinh_b_amt_ : as amount
// @Species 'AEA in rest of body'
A_r_amt_ : as amount
// @Species 'OEA in rest of body'
O_r_amt_ : as amount
// @Species 'PEA in rest of body'
P_r_amt_ : as amount
// @Species 'LEA in rest of body'
L_r_amt_ : as amount
// @Species 'SEA in rest of body'
S_r_amt_ : as amount
// @Species ''
NAPE_r_amt_ : as amount
// @Species ''
NOPE_r_amt_ : as amount
// @Species ''
NPPE_r_amt_ : as amount
// @Species ''
NLPE_r_amt_ : as amount
// @Species ''
NSPE_r_amt_ : as amount
// @Species ''
FAAH_r_amt_ : as amount
// @Species ''
FAAHinh_r_amt_ : as amount
// @Species ''
A_m_amt_ : as amount
// @Species ''
O_m_amt_ : as amount
// @Species ''
P_m_amt_ : as amount
// @Species ''
L_m_amt_ : as amount
// @Species ''
S_m_amt_ : as amount
// @Species ''
FAAH_m_amt_ : as amount
// @Species ''
FAAHinh_m_amt_ : as amount
// @Species ''
A_p_amt_ : as amount
// @Species ''
O_p_amt_ : as amount
// @Species ''
P_p_amt_ : as amount
// @Species ''
L_p_amt_ : as amount
// @Species ''
S_p_amt_ : as amount

$GLOBAL
#define A_b (A_b_amt_ / BRAIN)
#define O_b (O_b_amt_ / BRAIN)
#define P_b (P_b_amt_ / BRAIN)
#define L_b (L_b_amt_ / BRAIN)
#define S_b (S_b_amt_ / BRAIN)
#define NAPE_b (NAPE_b_amt_ / BRAIN)
#define NOPE_b (NOPE_b_amt_ / BRAIN)
#define NPPE_b (NPPE_b_amt_ / BRAIN)
#define NLPE_b (NLPE_b_amt_ / BRAIN)
#define NSPE_b (NSPE_b_amt_ / BRAIN)
#define FAAH_b (FAAH_b_amt_ / BRAIN)
#define FAAHinh_b (FAAHinh_b_amt_ / BRAIN)
#define A_r (A_r_amt_ / ROB)
#define O_r (O_r_amt_ / ROB)
#define P_r (P_r_amt_ / ROB)
#define L_r (L_r_amt_ / ROB)
#define S_r (S_r_amt_ / ROB)
#define NAPE_r (NAPE_r_amt_ / ROB)
#define NOPE_r (NOPE_r_amt_ / ROB)
#define NPPE_r (NPPE_r_amt_ / ROB)
#define NLPE_r (NLPE_r_amt_ / ROB)
#define NSPE_r (NSPE_r_amt_ / ROB)
#define FAAH_r (FAAH_r_amt_ / ROB)
#define FAAHinh_r (FAAHinh_r_amt_ / ROB)
#define A_m (A_m_amt_ / MEC)
#define O_m (O_m_amt_ / MEC)
#define P_m (P_m_amt_ / MEC)
#define L_m (L_m_amt_ / MEC)
#define S_m (S_m_amt_ / MEC)
#define FAAH_m (FAAH_m_amt_ / MEC)
#define FAAHinh_m (FAAHinh_m_amt_ / MEC)
#define A_p (A_p_amt_ / PLASMA)
#define O_p (O_p_amt_ / PLASMA)
#define P_p (P_p_amt_ / PLASMA)
#define L_p (L_p_amt_ / PLASMA)
#define S_p (S_p_amt_ / PLASMA)

$PREAMBLE
double GUT = 1.0;
//double PFM_gut = 0.0;
//double PFM_p = 0.0;
//double PFM_r = 0.0;
double BRAIN = 1.45;
//double FAAH_b = 15.366;
//double A_b = 0.7493309;
//double O_b = 20.77858;
//double P_b = 6.541209;
//double L_b = 2.319571;
//double S_b = 3.427807;
//double NAPE_b = 3.879041e-5;
//double NOPE_b = 8.814287e-4;
//double NPPE_b = 1.732296e-4;
//double NLPE_b = 7.550331e-5;
//double NSPE_b = 1.272629e-4;
//double FAAHinh_b = 0.0;
double ROB = 65.3;
//double FAAH_r = 2.165868;
//double A_r = 0.5419204;
//double O_r = 14.23822;
//double P_r = 4.121915;
//double L_r = 1.705466;
//double S_r = 2.515968;
//double NAPE_r = 4.241633e-6;
//double NOPE_r = 9.638198e-5;
//double NPPE_r = 1.894222e-5;
//double NLPE_r = 8.256095e-6;
//double NSPE_r = 1.391587e-5;
//double FAAHinh_r = 0.0;
double MEC = 1.5e-5;
//double FAAH_m = 10.686;
//double A_m = 0.97761;
//double O_m = 16.3219;
//double P_m = 5.809415;
//double L_m = 0.0;
//double S_m = 2.968774;
//double FAAHinh_m = 0.0;
//double A_p = 0.8740574;
//double O_p = 5.085073;
//double P_p = 4.849307;
//double L_p = 1.916254;
//double S_p = 0.273772;
double PLASMA = 2.649;

$MAIN
PFM_gut_0 = (0.0);
PFM_p_0 = (0.0);
PFM_r_0 = (0.0);
FAAH_b_amt__0 = (15.366) * BRAIN;
A_b_amt__0 = (0.7493309) * BRAIN;
O_b_amt__0 = (20.77858) * BRAIN;
P_b_amt__0 = (6.541209) * BRAIN;
L_b_amt__0 = (2.319571) * BRAIN;
S_b_amt__0 = (3.427807) * BRAIN;
NAPE_b_amt__0 = (3.879041e-5) * BRAIN;
NOPE_b_amt__0 = (8.814287e-4) * BRAIN;
NPPE_b_amt__0 = (1.732296e-4) * BRAIN;
NLPE_b_amt__0 = (7.550331e-5) * BRAIN;
NSPE_b_amt__0 = (1.272629e-4) * BRAIN;
FAAHinh_b_amt__0 = (0.0) * BRAIN;
FAAH_r_amt__0 = (2.165868) * ROB;
A_r_amt__0 = (0.5419204) * ROB;
O_r_amt__0 = (14.23822) * ROB;
P_r_amt__0 = (4.121915) * ROB;
L_r_amt__0 = (1.705466) * ROB;
S_r_amt__0 = (2.515968) * ROB;
NAPE_r_amt__0 = (4.241633e-6) * ROB;
NOPE_r_amt__0 = (9.638198e-5) * ROB;
NPPE_r_amt__0 = (1.894222e-5) * ROB;
NLPE_r_amt__0 = (8.256095e-6) * ROB;
NSPE_r_amt__0 = (1.391587e-5) * ROB;
FAAHinh_r_amt__0 = (0.0) * ROB;
FAAH_m_amt__0 = (10.686) * MEC;
A_m_amt__0 = (0.97761) * MEC;
O_m_amt__0 = (16.3219) * MEC;
P_m_amt__0 = (5.809415) * MEC;
L_m_amt__0 = (0.0) * MEC;
S_m_amt__0 = (2.968774) * MEC;
FAAHinh_m_amt__0 = (0.0) * MEC;
A_p_amt__0 = (0.8740574) * PLASMA;
O_p_amt__0 = (5.085073) * PLASMA;
P_p_amt__0 = (4.849307) * PLASMA;
L_p_amt__0 = (1.916254) * PLASMA;
S_p_amt__0 = (0.273772) * PLASMA;

$ODE
// @Record ''
double F_PFM = Emax_PFM * Dose / (ED50 + Dose);
// @Record ''
double dose_amount = F_PFM * m_per_n * Dose * F_PFM;
// @Reaction ''
double absorp = kabs_PFM * PFM_gut;
// @Reaction ''
double dist = kout_PFM * PFM_p - kin_PFM * PFM_r;
// @Reaction ''
double elim = klinear_PFM * PFM_p + (Vm_PFM * PFM_p / Vss_PFM) / (Km_PFM + PFM_p / Vss_PFM);
// @Record ''
double FAAH_D_b = 1.0 + A_b / Km_FAAH_A + O_b / Km_FAAH_O + P_b / Km_FAAH_P + L_b / Km_FAAH_L + S_b / Km_FAAH_S;
// @Reaction ''
double vA_degr_b = BRAIN * FAAH_b * kcat_FAAH * a_FAAH_A * A_b / (Km_FAAH_A * FAAH_D_b);
// @Reaction ''
double vO_degr_b = BRAIN * FAAH_b * kcat_FAAH * a_FAAH_O * O_b / (Km_FAAH_O * FAAH_D_b);
// @Reaction ''
double vP_degr_b = BRAIN * FAAH_b * kcat_FAAH * a_FAAH_P * P_b / (Km_FAAH_P * FAAH_D_b);
// @Reaction ''
double vL_degr_b = BRAIN * FAAH_b * kcat_FAAH * a_FAAH_L * L_b / (Km_FAAH_L * FAAH_D_b);
// @Reaction ''
double vS_degr_b = BRAIN * FAAH_b * kcat_FAAH * a_FAAH_S * S_b / (Km_FAAH_S * FAAH_D_b);
// @Reaction ''
double vNAPE_syn_b = BRAIN * Vmax_NAT * p_A * a_NAT_A * b_NAT_Brain;
// @Reaction ''
double vNOPE_syn_b = BRAIN * Vmax_NAT * p_O * a_NAT_O * b_NAT_Brain;
// @Reaction ''
double vNPPE_syn_b = BRAIN * Vmax_NAT * p_P * a_NAT_P * b_NAT_Brain;
// @Reaction ''
double vNLPE_syn_b = BRAIN * Vmax_NAT * p_L * a_NAT_L * b_NAT_Brain;
// @Reaction ''
double vNSPE_syn_b = BRAIN * Vmax_NAT * p_S * a_NAT_S * b_NAT_Brain;
// @Record ''
double slag1_b = NAPE_b / Km_NA_PE + NOPE_b / Km_NO_PE + NPPE_b / Km_NP_PE + NLPE_b / Km_NL_PE + NSPE_b / Km_NS_PE;
// @Record ''
double slag2_b = A_b / Ki_A + O_b / Ki_O + P_b / Ki_P + L_b / Ki_L + S_b / Ki_S;
// @Record ''
double den_b = 1.0 + slag1_b + slag2_b;
// @Reaction ''
double vA_syn_b = BRAIN * PLD_b * k_NA_PE * NAPE_b / Km_NA_PE / den_b;
// @Reaction ''
double vO_syn_b = BRAIN * PLD_b * k_NO_PE * NOPE_b / Km_NO_PE / den_b;
// @Reaction ''
double vP_syn_b = BRAIN * PLD_b * k_NP_PE * NPPE_b / Km_NP_PE / den_b;
// @Reaction ''
double vL_syn_b = BRAIN * PLD_b * k_NL_PE * NLPE_b / Km_NL_PE / den_b;
// @Reaction ''
double vS_syn_b = BRAIN * PLD_b * k_NS_PE * NSPE_b / Km_NS_PE / den_b;
// @Reaction ''
double vFAAH_syn_b = BRAIN * FAAH_t * b_FAAH_Brain * k_deg_FAAH;
// @Reaction ''
double vFAAH_degr_b = BRAIN * k_deg_FAAH * FAAH_b;
// @Record ''
double PF_p = PFM_p / M_PF / Vss_PFM;
// @Record ''
double PF_b = PF_p * Kp_b_PF;
// @Reaction ''
double vFAAH_inh_b = BRAIN * k_inh * FAAH_b * PF_b;
// @Reaction ''
double vFAAH_inh_degr_b = BRAIN * k_deg_FAAH * FAAHinh_b;
// @Reaction ''
double vA_UE_b = BRAIN * b_FAAH_Brain * kcl_A * A_b;
// @Reaction ''
double vO_UE_b = BRAIN * b_FAAH_Brain * kcl_O * O_b;
// @Reaction ''
double vP_UE_b = BRAIN * b_FAAH_Brain * kcl_P * P_b;
// @Reaction ''
double vL_UE_b = BRAIN * b_FAAH_Brain * kcl_L * L_b;
// @Reaction ''
double vS_UE_b = BRAIN * b_FAAH_Brain * kcl_S * S_b;
// @Record ''
double FAAH_D_r = 1.0 + A_r / Km_FAAH_A + O_r / Km_FAAH_O + P_r / Km_FAAH_P + L_r / Km_FAAH_L + S_r / Km_FAAH_S;
// @Reaction ''
double vA_degr_r = ROB * FAAH_r * kcat_FAAH * a_FAAH_A * A_r / (Km_FAAH_A * FAAH_D_r);
// @Reaction ''
double vO_degr_r = ROB * FAAH_r * kcat_FAAH * a_FAAH_O * O_r / (Km_FAAH_O * FAAH_D_r);
// @Reaction ''
double vP_degr_r = ROB * FAAH_r * kcat_FAAH * a_FAAH_P * P_r / (Km_FAAH_P * FAAH_D_r);
// @Reaction ''
double vL_degr_r = ROB * FAAH_r * kcat_FAAH * a_FAAH_L * L_r / (Km_FAAH_L * FAAH_D_r);
// @Reaction ''
double vS_degr_r = ROB * FAAH_r * kcat_FAAH * a_FAAH_S * S_r / (Km_FAAH_S * FAAH_D_r);
// @Record ''
double c_NAT_ROB = Pancreas * b_NAT_Pancreas + Kidney * b_NAT_Kidney + Heart * b_NAT_Heart + Lungs * b_NAT_Lungs + Muscles * b_NAT_Muscles + Testis * b_NAT_Testis + Leucocytes * b_NAT_Leucocytes;
// @Reaction ''
double vNAPE_syn_r = Vmax_NAT * p_A * a_NAT_A * c_NAT_ROB;
// @Reaction ''
double vNOPE_syn_r = Vmax_NAT * p_O * a_NAT_O * c_NAT_ROB;
// @Reaction ''
double vNPPE_syn_r = Vmax_NAT * p_P * a_NAT_P * c_NAT_ROB;
// @Reaction ''
double vNLPE_syn_r = Vmax_NAT * p_L * a_NAT_L * c_NAT_ROB;
// @Reaction ''
double vNSPE_syn_r = Vmax_NAT * p_S * a_NAT_S * c_NAT_ROB;
// @Record ''
double slag1_r = NAPE_r / Km_NA_PE + NOPE_r / Km_NO_PE + NPPE_r / Km_NP_PE + NLPE_r / Km_NL_PE + NSPE_r / Km_NS_PE;
// @Record ''
double slag2_r = A_r / Ki_A + O_r / Ki_O + P_r / Ki_P + L_r / Ki_L + S_r / Ki_S;
// @Record ''
double den_r = 1.0 + slag1_r + slag2_r;
// @Reaction ''
double vA_syn_r = ROB * PLD_r * k_NA_PE * NAPE_r / Km_NA_PE / den_r;
// @Reaction ''
double vO_syn_r = ROB * PLD_r * k_NO_PE * NOPE_r / Km_NO_PE / den_r;
// @Reaction ''
double vP_syn_r = ROB * PLD_r * k_NP_PE * NPPE_r / Km_NP_PE / den_r;
// @Reaction ''
double vL_syn_r = ROB * PLD_r * k_NL_PE * NLPE_r / Km_NL_PE / den_r;
// @Reaction ''
double vS_syn_r = ROB * PLD_r * k_NS_PE * NSPE_r / Km_NS_PE / den_r;
// @Record ''
double c_FAAH_ROB = LIVER * b_FAAH_Liver + Gut * b_FAAH_Gut + Spleen * b_FAAH_Spleen + Kidney * b_FAAH_Kidney + Lungs * b_FAAH_Lungs + Testis * b_FAAH_Testis + Leucocytes * b_FAAH_Leucocytes;
// @Reaction ''
double vFAAH_syn_r = FAAH_t * c_FAAH_ROB * k_deg_FAAH;
// @Reaction ''
double vFAAH_degr_r = ROB * k_deg_FAAH * FAAH_r;
// @Record ''
double PF_r = PF_p * Kp_r_PF;
// @Reaction ''
double vFAAH_inh_r = ROB * k_inh * FAAH_r * PF_r;
// @Reaction ''
double vFAAH_inh_degr_r = ROB * k_deg_FAAH * FAAHinh_r;
// @Record ''
double c_NAAA_ROB = LIVER * b_NAAA_Liver + Gut * b_NAAA_Gut + Spleen * b_NAAA_Spleen + Kidney * b_NAAA_Kidney + Heart * b_NAAA_Heart + Lungs * b_NAAA_Lungs + Thymus * b_NAAA_Thymus + Testis * b_NAAA_Testis;
// @Reaction ''
double vA_UE_r = c_NAAA_ROB * kcl_A * A_r;
// @Reaction ''
double vO_UE_r = c_NAAA_ROB * kcl_O * O_r;
// @Reaction ''
double vP_UE_r = c_NAAA_ROB * kcl_P * P_r;
// @Reaction ''
double vL_UE_r = c_NAAA_ROB * kcl_L * L_r;
// @Reaction ''
double vS_UE_r = c_NAAA_ROB * kcl_S * S_r;
// @Record ''
double FAAH_D_m = 1.0 + A_m / Km_FAAH_A + O_m / Km_FAAH_O + P_m / Km_FAAH_P + L_m / Km_FAAH_L + S_m / Km_FAAH_S;
// @Reaction ''
double vA_degr_m = MEC * FAAH_m * kcat_FAAH * a_FAAH_A * A_m / (Km_FAAH_A * FAAH_D_m);
// @Reaction ''
double vO_degr_m = MEC * FAAH_m * kcat_FAAH * a_FAAH_O * O_m / (Km_FAAH_O * FAAH_D_m);
// @Reaction ''
double vP_degr_m = MEC * FAAH_m * kcat_FAAH * a_FAAH_P * P_m / (Km_FAAH_P * FAAH_D_m);
// @Reaction ''
double vL_degr_m = MEC * FAAH_m * kcat_FAAH * a_FAAH_L * L_m / (Km_FAAH_L * FAAH_D_m);
// @Reaction ''
double vS_degr_m = MEC * FAAH_m * kcat_FAAH * a_FAAH_S * S_m / (Km_FAAH_S * FAAH_D_m);
// @Reaction ''
double vFAAH_syn_m = MEC * FAAH_t * b_FAAH_MEC * k_deg_FAAH;
// @Reaction ''
double vFAAH_degr_m = MEC * k_deg_FAAH * FAAH_m;
// @Record ''
double PF_m = PF_p * Kp_m_PF;
// @Reaction ''
double vFAAH_inh_m = MEC * k_inh * FAAH_m * PF_m;
// @Reaction ''
double vFAAH_inh_degr_m = MEC * k_deg_FAAH * FAAHinh_m;
// @Reaction ''
double vA_m_p = MEC * ktr_m_p_A * (A_m - A_p * Ktr_p_m_A) / (A_m + A_p + Km_p_m_A);
// @Reaction ''
double vO_m_p = MEC * ktr_m_p_O * (O_m - O_p * Ktr_p_m_O);
// @Reaction ''
double vP_m_p = MEC * ktr_m_p_P * (P_m - P_p * Ktr_p_m_P);
// @Reaction ''
double vL_m_p = MEC * ktr_m_p_L * (L_m - L_p * Ktr_p_m_L);
// @Reaction ''
double vS_m_p = MEC * ktr_m_p_S * (S_m - S_p * Ktr_p_m_S);
// @Reaction ''
double vA_b_m = MEC * ktr_m_p_A * (A_b - A_m) / (A_m + A_b + Km_p_m_A);
// @Reaction ''
double vO_b_m = MEC * ktr_m_p_O * (O_b - O_m);
// @Reaction ''
double vP_b_m = MEC * ktr_m_p_P * (P_b - P_m);
// @Reaction ''
double vL_b_m = MEC * ktr_m_p_L * (L_b - L_m);
// @Reaction ''
double vS_b_m = MEC * ktr_m_p_S * (S_b - S_m);
// @Reaction ''
double vA_r_p = PLASMA * ktr_r_p_A * (A_r - A_p * Ktr_p_r_A) / (A_r + A_p + Km_p_m_A);
// @Reaction ''
double vO_r_p = PLASMA * ktr_r_p * (O_r - O_p * Ktr_p_r_O);
// @Reaction ''
double vP_r_p = PLASMA * ktr_r_p * (P_r - P_p * Ktr_p_r_P);
// @Reaction ''
double vL_r_p = PLASMA * ktr_r_p * (L_r - L_p * Ktr_p_r_L);
// @Reaction ''
double vS_r_p = PLASMA * ktr_r_p * (S_r - S_p * Ktr_p_r_S);

dxdt_PFM_gut = (-1)*absorp;
dxdt_PFM_p = (1)*absorp + (-1)*dist + (-1)*elim;
dxdt_PFM_r = (1)*dist;
dxdt_A_b_amt_ = (-1)*vA_degr_b + (1)*vA_syn_b + (-1)*vA_UE_b + (-1)*vA_b_m;
dxdt_O_b_amt_ = (-1)*vO_degr_b + (1)*vO_syn_b + (-1)*vO_UE_b + (-1)*vO_b_m;
dxdt_P_b_amt_ = (-1)*vP_degr_b + (1)*vP_syn_b + (-1)*vP_UE_b + (-1)*vP_b_m;
dxdt_L_b_amt_ = (-1)*vL_degr_b + (1)*vL_syn_b + (-1)*vL_UE_b + (-1)*vL_b_m;
dxdt_S_b_amt_ = (-1)*vS_degr_b + (1)*vS_syn_b + (-1)*vS_UE_b + (-1)*vS_b_m;
dxdt_NAPE_b_amt_ = (1)*vNAPE_syn_b + (-1)*vA_syn_b;
dxdt_NOPE_b_amt_ = (1)*vNOPE_syn_b + (-1)*vO_syn_b;
dxdt_NPPE_b_amt_ = (1)*vNPPE_syn_b + (-1)*vP_syn_b;
dxdt_NLPE_b_amt_ = (1)*vNLPE_syn_b + (-1)*vL_syn_b;
dxdt_NSPE_b_amt_ = (1)*vNSPE_syn_b + (-1)*vS_syn_b;
dxdt_FAAH_b_amt_ = (1)*vFAAH_syn_b + (-1)*vFAAH_degr_b + (-1)*vFAAH_inh_b;
dxdt_FAAHinh_b_amt_ = (1)*vFAAH_inh_b + (-1)*vFAAH_inh_degr_b;
dxdt_A_r_amt_ = (-1)*vA_degr_r + (1)*vA_syn_r + (-1)*vA_UE_r + (-1)*vA_r_p;
dxdt_O_r_amt_ = (-1)*vO_degr_r + (1)*vO_syn_r + (-1)*vO_UE_r + (-1)*vO_r_p;
dxdt_P_r_amt_ = (-1)*vP_degr_r + (1)*vP_syn_r + (-1)*vP_UE_r + (-1)*vP_r_p;
dxdt_L_r_amt_ = (-1)*vL_degr_r + (1)*vL_syn_r + (-1)*vL_UE_r + (-1)*vL_r_p;
dxdt_S_r_amt_ = (-1)*vS_degr_r + (1)*vS_syn_r + (-1)*vS_UE_r + (-1)*vS_r_p;
dxdt_NAPE_r_amt_ = (1)*vNAPE_syn_r + (-1)*vA_syn_r;
dxdt_NOPE_r_amt_ = (1)*vNOPE_syn_r + (-1)*vO_syn_r;
dxdt_NPPE_r_amt_ = (1)*vNPPE_syn_r + (-1)*vP_syn_r;
dxdt_NLPE_r_amt_ = (1)*vNLPE_syn_r + (-1)*vL_syn_r;
dxdt_NSPE_r_amt_ = (1)*vNSPE_syn_r + (-1)*vS_syn_r;
dxdt_FAAH_r_amt_ = (1)*vFAAH_syn_r + (-1)*vFAAH_degr_r + (-1)*vFAAH_inh_r;
dxdt_FAAHinh_r_amt_ = (1)*vFAAH_inh_r + (-1)*vFAAH_inh_degr_r;
dxdt_A_m_amt_ = (-1)*vA_degr_m + (-1)*vA_m_p + (1)*vA_b_m;
dxdt_O_m_amt_ = (-1)*vO_degr_m + (-1)*vO_m_p + (1)*vO_b_m;
dxdt_P_m_amt_ = (-1)*vP_degr_m + (-1)*vP_m_p + (1)*vP_b_m;
dxdt_L_m_amt_ = (-1)*vL_degr_m + (-1)*vL_m_p + (1)*vL_b_m;
dxdt_S_m_amt_ = (-1)*vS_degr_m + (-1)*vS_m_p + (1)*vS_b_m;
dxdt_FAAH_m_amt_ = (1)*vFAAH_syn_m + (-1)*vFAAH_degr_m + (-1)*vFAAH_inh_m;
dxdt_FAAHinh_m_amt_ = (1)*vFAAH_inh_m + (-1)*vFAAH_inh_degr_m;
dxdt_A_p_amt_ = (1)*vA_m_p + (1)*vA_r_p;
dxdt_O_p_amt_ = (1)*vO_m_p + (1)*vO_r_p;
dxdt_P_p_amt_ = (1)*vP_m_p + (1)*vP_r_p;
dxdt_L_p_amt_ = (1)*vL_m_p + (1)*vL_r_p;
dxdt_S_p_amt_ = (1)*vS_m_p + (1)*vS_r_p;

$CAPTURE @annotated
A_p :  (nM)
O_p :  (nM)
P_p :  (nM)
