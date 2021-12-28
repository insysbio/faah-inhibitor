clear; clc; close all;

% full list of records which are able to be outputted, see show_names
output_ids = ["GUT", "F_PFM", "dose_amount", "PFM_gut", "absorp", "PFM_p", "PFM_r", "dist", "elim", "BRAIN", "FAAH_b", "A_b", "O_b", "P_b", "L_b", "S_b", "FAAH_D_b", "vA_degr_b", "vO_degr_b", "vP_degr_b", "vL_degr_b", "vS_degr_b", "vNAPE_syn_b", "vNOPE_syn_b", "vNPPE_syn_b", "vNLPE_syn_b", "vNSPE_syn_b", "NAPE_b", "NOPE_b", "NPPE_b", "NLPE_b", "NSPE_b", "slag1_b", "slag2_b", "den_b", "vA_syn_b", "vO_syn_b", "vP_syn_b", "vL_syn_b", "vS_syn_b", "vFAAH_syn_b", "vFAAH_degr_b", "PF_p", "PF_b", "vFAAH_inh_b", "FAAHinh_b", "vFAAH_inh_degr_b", "vA_UE_b", "vO_UE_b", "vP_UE_b", "vL_UE_b", "vS_UE_b", "ROB", "FAAH_r", "A_r", "O_r", "P_r", "L_r", "S_r", "FAAH_D_r", "vA_degr_r", "vO_degr_r", "vP_degr_r", "vL_degr_r", "vS_degr_r", "c_NAT_ROB", "vNAPE_syn_r", "vNOPE_syn_r", "vNPPE_syn_r", "vNLPE_syn_r", "vNSPE_syn_r", "NAPE_r", "NOPE_r", "NPPE_r", "NLPE_r", "NSPE_r", "slag1_r", "slag2_r", "den_r", "vA_syn_r", "vO_syn_r", "vP_syn_r", "vL_syn_r", "vS_syn_r", "c_FAAH_ROB", "vFAAH_syn_r", "vFAAH_degr_r", "PF_r", "vFAAH_inh_r", "FAAHinh_r", "vFAAH_inh_degr_r", "c_NAAA_ROB", "vA_UE_r", "vO_UE_r", "vP_UE_r", "vL_UE_r", "vS_UE_r", "MEC", "FAAH_m", "A_m", "O_m", "P_m", "L_m", "S_m", "FAAH_D_m", "vA_degr_m", "vO_degr_m", "vP_degr_m", "vL_degr_m", "vS_degr_m", "vFAAH_syn_m", "vFAAH_degr_m", "PF_m", "vFAAH_inh_m", "FAAHinh_m", "vFAAH_inh_degr_m", "PLASMA", "A_p", "vA_m_p", "O_p", "vO_m_p", "P_p", "vP_m_p", "L_p", "vL_m_p", "S_p", "vS_m_p", "vA_b_m", "vO_b_m", "vP_b_m", "vL_b_m", "vS_b_m", "vA_r_p", "vO_r_p", "vP_r_p", "vL_r_p", "vS_r_p"];
% full list of constants (not used)
p_names = ["Vmax_NAT", "p_A", "p_O", "p_P", "p_L", "p_S", "a_NAT_A", "a_NAT_O", "a_NAT_P", "a_NAT_L", "a_NAT_S", "b_NAT_Brain", "b_NAT_Pancreas", "b_NAT_Kidney", "b_NAT_Heart", "b_NAT_Lungs", "b_NAT_Muscles", "b_NAT_Testis", "b_NAT_Leucocytes", "k_NA_PE", "k_NO_PE", "k_NP_PE", "k_NL_PE", "k_NS_PE", "Km_NA_PE", "Km_NO_PE", "Km_NP_PE", "Km_NL_PE", "Km_NS_PE", "Ki_A", "Ki_O", "Ki_P", "Ki_L", "Ki_S", "kcat_FAAH", "FAAH_t", "a_FAAH_A", "a_FAAH_O", "a_FAAH_P", "a_FAAH_L", "a_FAAH_S", "b_FAAH_Liver", "b_FAAH_Brain", "b_FAAH_Gut", "b_FAAH_Spleen", "b_FAAH_Kidney", "b_FAAH_Lungs", "b_FAAH_Testis", "b_FAAH_MEC", "b_FAAH_Leucocytes", "Km_FAAH_A", "Km_FAAH_O", "Km_FAAH_P", "Km_FAAH_L", "Km_FAAH_S", "k_deg_FAAH", "k_inh", "kcl_A", "kcl_O", "kcl_P", "kcl_L", "kcl_S", "b_NAAA_Liver", "b_NAAA_Gut", "b_NAAA_Spleen", "b_NAAA_Kidney", "b_NAAA_Heart", "b_NAAA_Lungs", "b_NAAA_Thymus", "b_NAAA_Testis", "b_NAAA_Brain", "M_A", "M_O", "M_P", "M_L", "M_S", "Kd_CB1_A", "Kd_AG2", "AG2_b", "Dose", "M_PF", "Vss_PFM", "Emax_PFM", "ED50", "kabs_PFM", "kout_PFM", "kin_PFM", "klinear_PFM", "Vm_PFM", "Km_PFM", "R_PF", "Kp_b_PF", "Kp_m_PF", "Kp_r_PF", "m_per_n", "PLD_b", "PLD_r", "LIVER", "Gut", "Spleen", "Kidney", "Lungs", "Testis", "Leucocytes", "Pancreas", "Heart", "Muscles", "Thymus", "H", "ktr_m_p_A", "Ktr_p_m_A", "Km_p_m_A", "ktr_m_p_O", "Ktr_p_m_O", "ktr_m_p_P", "Ktr_p_m_P", "ktr_m_p_L", "Ktr_p_m_L", "ktr_m_p_S", "Ktr_p_m_S", "ktr_r_p_A", "ktr_r_p", "Ktr_p_r_A", "Ktr_p_r_O", "Ktr_p_r_P", "Ktr_p_r_L", "Ktr_p_r_S", "evt1_", ];

% initialization of constants and model
p = nameless_param();
[ode_func, out_func, y0, events_conditions, events_affects] = nameless_model(p);

%%% default task
t_span = [0 100]; % [0:1:100]
opt = odeset('OutputFcn', out_func, 'Events', events_conditions, 'MaxStep', 1); % odeset(, 'Mass',M,'RelTol',1e-4,'AbsTol',[1e-6 1e-10 1e-6], 'Stats','on');

% solution without events
%[tout, y] = ode15s(ode_func, t_span, y0, opt);

% solution with events
ti = t_span(1);
yi = y0;
tout = [];
output = [];
while ti < t_span(2)
    [t, y, te, ye, ie] = ode15s(ode_func, [ti t_span(2)], yi, opt);

    tout = vertcat(tout, t);
    if isempty(ie)
        break
    end
    ti = t(end);
    ev = events_affects(ie(end));
    yi = ev{1}(ti, ye(end,:));
end

%  list of record to plot
show_ids = ["PFM_p", "A_p", "O_p", "P_p"];

% plot records
figure
hold on
[idx, loc] = ismember(show_ids, output_ids);
for i = loc
    plot(tout, output(:, i), '-', 'Linewidth', 1)
end
title('Default plot','Fontsize', 14)
xlabel('t', 'Fontsize', 14)
ylabel('records', 'Fontsize', 14)
legend(show_ids)
hold off
