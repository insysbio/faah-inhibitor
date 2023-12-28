%%%% This code was generated by heta-compiler of v0.7.3
% 

function [ode_func, out_func, y0_, events_conditions, events_affects] = nameless_model(p)

    %%% auxilary
    % ternary operator
    function out = tern__(cond, x, y)
        if cond
            out = x;
        else
            out = y;
        end
    end

    ode_func = @ODEFunc;
    out_func = @OutputFunc;
    events_conditions = @Conditions;
    events_affects = {@evt1_affect};
    y0_ = InitFunc();

    % shared variable
    shared_values = zeros(1, 137);
    integrator = [];

    %%% Initialization of dynamic records
    function y__ = InitFunc()
        integrator = []; % reset integrator
        time = 0; % zero time
        
        GUT = 1; % GUT,  (L)
        F_PFM = p(83) * p(80) / (p(84) + p(80)); % F_PFM,  (UL)
        dose_amount = F_PFM * p(95) * p(80) * F_PFM; % dose_amount,  (ng)
        PFM_gut = 0; % PFM_gut,  (ng)
        absorp = p(85) * PFM_gut; % absorp,  (ng/h)
        PFM_p = 0; % PFM_p,  (ng)
        PFM_r = 0; % PFM_r,  (ng)
        dist = p(86) * PFM_p - p(87) * PFM_r; % dist,  (ng/h)
        elim = p(88) * PFM_p + (p(89) * PFM_p / p(82)) / (p(90) + PFM_p / p(82)); % elim,  (ng/h)
        BRAIN = 1.45; % BRAIN,  (L)
        FAAH_b = 15.366; % FAAH_b,  (nM)
        A_b = 0.7493309; % A_b,  (nM)
        O_b = 20.77858; % O_b,  (nM)
        P_b = 6.541209; % P_b,  (nM)
        L_b = 2.319571; % L_b,  (nM)
        S_b = 3.427807; % S_b,  (nM)
        FAAH_D_b = 1 + A_b / p(51) + O_b / p(52) + P_b / p(53) + L_b / p(54) + S_b / p(55); % FAAH_D_b,  (UL)
        vA_degr_b = BRAIN * FAAH_b * p(35) * p(37) * A_b / (p(51) * FAAH_D_b); % vA_degr_b,  (nmole/h)
        vO_degr_b = BRAIN * FAAH_b * p(35) * p(38) * O_b / (p(52) * FAAH_D_b); % vO_degr_b,  (nmole/h)
        vP_degr_b = BRAIN * FAAH_b * p(35) * p(39) * P_b / (p(53) * FAAH_D_b); % vP_degr_b,  (nmole/h)
        vL_degr_b = BRAIN * FAAH_b * p(35) * p(40) * L_b / (p(54) * FAAH_D_b); % vL_degr_b,  (nmole/h)
        vS_degr_b = BRAIN * FAAH_b * p(35) * p(41) * S_b / (p(55) * FAAH_D_b); % vS_degr_b,  (nmole/h)
        vNAPE_syn_b = BRAIN * p(1) * p(2) * p(7) * p(12); % vNAPE_syn_b,  (nmole/h)
        vNOPE_syn_b = BRAIN * p(1) * p(3) * p(8) * p(12); % vNOPE_syn_b,  (nmole/h)
        vNPPE_syn_b = BRAIN * p(1) * p(4) * p(9) * p(12); % vNPPE_syn_b,  (nmole/h)
        vNLPE_syn_b = BRAIN * p(1) * p(5) * p(10) * p(12); % vNLPE_syn_b,  (nmole/h)
        vNSPE_syn_b = BRAIN * p(1) * p(6) * p(11) * p(12); % vNSPE_syn_b,  (nmole/h)
        NAPE_b = 3.879041e-5; % NAPE_b,  (nM)
        NOPE_b = 8.814287e-4; % NOPE_b,  (nM)
        NPPE_b = 1.732296e-4; % NPPE_b,  (nM)
        NLPE_b = 7.550331e-5; % NLPE_b,  (nM)
        NSPE_b = 1.272629e-4; % NSPE_b,  (nM)
        slag1_b = NAPE_b / p(25) + NOPE_b / p(26) + NPPE_b / p(27) + NLPE_b / p(28) + NSPE_b / p(29); % slag1_b,  (UL)
        slag2_b = A_b / p(30) + O_b / p(31) + P_b / p(32) + L_b / p(33) + S_b / p(34); % slag2_b,  (UL)
        den_b = 1 + slag1_b + slag2_b; % den_b,  (UL)
        vA_syn_b = BRAIN * p(96) * p(20) * NAPE_b / p(25) / den_b; % vA_syn_b,  (nmole/h)
        vO_syn_b = BRAIN * p(96) * p(21) * NOPE_b / p(26) / den_b; % vO_syn_b,  (nmole/h)
        vP_syn_b = BRAIN * p(96) * p(22) * NPPE_b / p(27) / den_b; % vP_syn_b,  (nmole/h)
        vL_syn_b = BRAIN * p(96) * p(23) * NLPE_b / p(28) / den_b; % vL_syn_b,  (nmole/h)
        vS_syn_b = BRAIN * p(96) * p(24) * NSPE_b / p(29) / den_b; % vS_syn_b,  (nmole/h)
        vFAAH_syn_b = BRAIN * p(36) * p(43) * p(56); % vFAAH_syn_b,  (nmole/h)
        vFAAH_degr_b = BRAIN * p(56) * FAAH_b; % vFAAH_degr_b,  (nmole/h)
        PF_p = PFM_p / p(81) / p(82); % PF_p,  (nM)
        PF_b = PF_p * p(92); % PF_b,  (nM)
        vFAAH_inh_b = BRAIN * p(57) * FAAH_b * PF_b; % vFAAH_inh_b,  (nmole/h)
        FAAHinh_b = 0; % FAAHinh_b,  (nM)
        vFAAH_inh_degr_b = BRAIN * p(56) * FAAHinh_b; % vFAAH_inh_degr_b,  (nmole/h)
        vA_UE_b = BRAIN * p(43) * p(58) * A_b; % vA_UE_b,  (nmole/h)
        vO_UE_b = BRAIN * p(43) * p(59) * O_b; % vO_UE_b,  (nmole/h)
        vP_UE_b = BRAIN * p(43) * p(60) * P_b; % vP_UE_b,  (nmole/h)
        vL_UE_b = BRAIN * p(43) * p(61) * L_b; % vL_UE_b,  (nmole/h)
        vS_UE_b = BRAIN * p(43) * p(62) * S_b; % vS_UE_b,  (nmole/h)
        ROB = 65.3; % ROB,  (L)
        FAAH_r = 2.165868; % FAAH_r,  (nM)
        A_r = 0.5419204; % A_r, AEA in rest of body (nM)
        O_r = 14.23822; % O_r, OEA in rest of body (nM)
        P_r = 4.121915; % P_r, PEA in rest of body (nM)
        L_r = 1.705466; % L_r, LEA in rest of body (nM)
        S_r = 2.515968; % S_r, SEA in rest of body (nM)
        FAAH_D_r = 1 + A_r / p(51) + O_r / p(52) + P_r / p(53) + L_r / p(54) + S_r / p(55); % FAAH_D_r,  (UL)
        vA_degr_r = ROB * FAAH_r * p(35) * p(37) * A_r / (p(51) * FAAH_D_r); % vA_degr_r,  (nmole/h)
        vO_degr_r = ROB * FAAH_r * p(35) * p(38) * O_r / (p(52) * FAAH_D_r); % vO_degr_r,  (nmole/h)
        vP_degr_r = ROB * FAAH_r * p(35) * p(39) * P_r / (p(53) * FAAH_D_r); % vP_degr_r,  (nmole/h)
        vL_degr_r = ROB * FAAH_r * p(35) * p(40) * L_r / (p(54) * FAAH_D_r); % vL_degr_r,  (nmole/h)
        vS_degr_r = ROB * FAAH_r * p(35) * p(41) * S_r / (p(55) * FAAH_D_r); % vS_degr_r,  (nmole/h)
        c_NAT_ROB = p(105) * p(13) + p(101) * p(14) + p(106) * p(15) + p(102) * p(16) + p(107) * p(17) + p(103) * p(18) + p(104) * p(19); % c_NAT_ROB,  (L)
        vNAPE_syn_r = p(1) * p(2) * p(7) * c_NAT_ROB; % vNAPE_syn_r,  (nmole/h)
        vNOPE_syn_r = p(1) * p(3) * p(8) * c_NAT_ROB; % vNOPE_syn_r,  (nmole/h)
        vNPPE_syn_r = p(1) * p(4) * p(9) * c_NAT_ROB; % vNPPE_syn_r,  (nmole/h)
        vNLPE_syn_r = p(1) * p(5) * p(10) * c_NAT_ROB; % vNLPE_syn_r,  (nmole/h)
        vNSPE_syn_r = p(1) * p(6) * p(11) * c_NAT_ROB; % vNSPE_syn_r,  (nmole/h)
        NAPE_r = 4.241633e-6; % NAPE_r,  (nM)
        NOPE_r = 9.638198e-5; % NOPE_r,  (nM)
        NPPE_r = 1.894222e-5; % NPPE_r,  (nM)
        NLPE_r = 8.256095e-6; % NLPE_r,  (nM)
        NSPE_r = 1.391587e-5; % NSPE_r,  (nM)
        slag1_r = NAPE_r / p(25) + NOPE_r / p(26) + NPPE_r / p(27) + NLPE_r / p(28) + NSPE_r / p(29); % slag1_r,  (UL)
        slag2_r = A_r / p(30) + O_r / p(31) + P_r / p(32) + L_r / p(33) + S_r / p(34); % slag2_r,  (UL)
        den_r = 1 + slag1_r + slag2_r; % den_r,  (UL)
        vA_syn_r = ROB * p(97) * p(20) * NAPE_r / p(25) / den_r; % vA_syn_r,  (nmole/h)
        vO_syn_r = ROB * p(97) * p(21) * NOPE_r / p(26) / den_r; % vO_syn_r,  (nmole/h)
        vP_syn_r = ROB * p(97) * p(22) * NPPE_r / p(27) / den_r; % vP_syn_r,  (nmole/h)
        vL_syn_r = ROB * p(97) * p(23) * NLPE_r / p(28) / den_r; % vL_syn_r,  (nmole/h)
        vS_syn_r = ROB * p(97) * p(24) * NSPE_r / p(29) / den_r; % vS_syn_r,  (nmole/h)
        c_FAAH_ROB = p(98) * p(42) + p(99) * p(44) + p(100) * p(45) + p(101) * p(46) + p(102) * p(47) + p(103) * p(48) + p(104) * p(50); % c_FAAH_ROB,  (L)
        vFAAH_syn_r = p(36) * c_FAAH_ROB * p(56); % vFAAH_syn_r,  (nmole/h)
        vFAAH_degr_r = ROB * p(56) * FAAH_r; % vFAAH_degr_r,  (nmole/h)
        PF_r = PF_p * p(94); % PF_r,  (nM)
        vFAAH_inh_r = ROB * p(57) * FAAH_r * PF_r; % vFAAH_inh_r,  (nmole/h)
        FAAHinh_r = 0; % FAAHinh_r,  (nM)
        vFAAH_inh_degr_r = ROB * p(56) * FAAHinh_r; % vFAAH_inh_degr_r,  (nmole/h)
        c_NAAA_ROB = p(98) * p(63) + p(99) * p(64) + p(100) * p(65) + p(101) * p(66) + p(106) * p(67) + p(102) * p(68) + p(108) * p(69) + p(103) * p(70); % c_NAAA_ROB,  (L)
        vA_UE_r = c_NAAA_ROB * p(58) * A_r; % vA_UE_r,  (nmole/h)
        vO_UE_r = c_NAAA_ROB * p(59) * O_r; % vO_UE_r,  (nmole/h)
        vP_UE_r = c_NAAA_ROB * p(60) * P_r; % vP_UE_r,  (nmole/h)
        vL_UE_r = c_NAAA_ROB * p(61) * L_r; % vL_UE_r,  (nmole/h)
        vS_UE_r = c_NAAA_ROB * p(62) * S_r; % vS_UE_r,  (nmole/h)
        MEC = 1.5e-5; % MEC,  (L)
        FAAH_m = 10.686; % FAAH_m,  (nM)
        A_m = 0.97761; % A_m,  (nM)
        O_m = 16.3219; % O_m,  (nM)
        P_m = 5.809415; % P_m,  (nM)
        L_m = 0; % L_m,  (nM)
        S_m = 2.968774; % S_m,  (nM)
        FAAH_D_m = 1 + A_m / p(51) + O_m / p(52) + P_m / p(53) + L_m / p(54) + S_m / p(55); % FAAH_D_m,  (UL)
        vA_degr_m = MEC * FAAH_m * p(35) * p(37) * A_m / (p(51) * FAAH_D_m); % vA_degr_m,  (nmole/h)
        vO_degr_m = MEC * FAAH_m * p(35) * p(38) * O_m / (p(52) * FAAH_D_m); % vO_degr_m,  (nmole/h)
        vP_degr_m = MEC * FAAH_m * p(35) * p(39) * P_m / (p(53) * FAAH_D_m); % vP_degr_m,  (nmole/h)
        vL_degr_m = MEC * FAAH_m * p(35) * p(40) * L_m / (p(54) * FAAH_D_m); % vL_degr_m,  (nmole/h)
        vS_degr_m = MEC * FAAH_m * p(35) * p(41) * S_m / (p(55) * FAAH_D_m); % vS_degr_m,  (nmole/h)
        vFAAH_syn_m = MEC * p(36) * p(49) * p(56); % vFAAH_syn_m,  (nmole/h)
        vFAAH_degr_m = MEC * p(56) * FAAH_m; % vFAAH_degr_m,  (nmole/h)
        PF_m = PF_p * p(93); % PF_m,  (nM)
        vFAAH_inh_m = MEC * p(57) * FAAH_m * PF_m; % vFAAH_inh_m,  (nmole/h)
        FAAHinh_m = 0; % FAAHinh_m,  (nM)
        vFAAH_inh_degr_m = MEC * p(56) * FAAHinh_m; % vFAAH_inh_degr_m,  (nmole/h)
        A_p = 0.8740574; % A_p,  (nM)
        vA_m_p = MEC * p(110) * (A_m - A_p * p(111)) / (A_m + A_p + p(112)); % vA_m_p,  (nmole/h)
        O_p = 5.085073; % O_p,  (nM)
        vO_m_p = MEC * p(113) * (O_m - O_p * p(114)); % vO_m_p,  (nmole/h)
        P_p = 4.849307; % P_p,  (nM)
        vP_m_p = MEC * p(115) * (P_m - P_p * p(116)); % vP_m_p,  (nmole/h)
        L_p = 1.916254; % L_p,  (nM)
        vL_m_p = MEC * p(117) * (L_m - L_p * p(118)); % vL_m_p,  (nmole/h)
        S_p = 0.273772; % S_p,  (nM)
        vS_m_p = MEC * p(119) * (S_m - S_p * p(120)); % vS_m_p,  (nmole/h)
        vA_b_m = MEC * p(110) * (A_b - A_m) / (A_m + A_b + p(112)); % vA_b_m,  (nmole/h)
        vO_b_m = MEC * p(113) * (O_b - O_m); % vO_b_m,  (nmole/h)
        vP_b_m = MEC * p(115) * (P_b - P_m); % vP_b_m,  (nmole/h)
        vL_b_m = MEC * p(117) * (L_b - L_m); % vL_b_m,  (nmole/h)
        vS_b_m = MEC * p(119) * (S_b - S_m); % vS_b_m,  (nmole/h)
        PLASMA = 2.649; % PLASMA,  (L)
        vA_r_p = PLASMA * p(121) * (A_r - A_p * p(123)) / (A_r + A_p + p(112)); % vA_r_p,  (nmole/h)
        vO_r_p = PLASMA * p(122) * (O_r - O_p * p(124)); % vO_r_p,  (nmole/h)
        vP_r_p = PLASMA * p(122) * (P_r - P_p * p(125)); % vP_r_p,  (nmole/h)
        vL_r_p = PLASMA * p(122) * (L_r - L_p * p(126)); % vL_r_p,  (nmole/h)
        vS_r_p = PLASMA * p(122) * (S_r - S_p * p(127)); % vS_r_p,  (nmole/h)

        % before reinitialization
        y0__ = [GUT; PLASMA; ROB; PFM_gut; PFM_p; PFM_r; BRAIN; A_b * BRAIN; O_b * BRAIN; P_b * BRAIN; L_b * BRAIN; S_b * BRAIN; NAPE_b * BRAIN; NOPE_b * BRAIN; NPPE_b * BRAIN; NLPE_b * BRAIN; NSPE_b * BRAIN; FAAH_b * BRAIN; FAAHinh_b * BRAIN; A_r * ROB; O_r * ROB; P_r * ROB; L_r * ROB; S_r * ROB; NAPE_r * ROB; NOPE_r * ROB; NPPE_r * ROB; NLPE_r * ROB; NSPE_r * ROB; FAAH_r * ROB; FAAHinh_r * ROB; MEC; A_m * MEC; O_m * MEC; P_m * MEC; L_m * MEC; S_m * MEC; FAAH_m * MEC; FAAHinh_m * MEC; A_p * PLASMA; O_p * PLASMA; P_p * PLASMA; L_p * PLASMA; S_p * PLASMA];

        % reinitialization by events
        y__ = ReinitY0(time, y0__);
    end

    %%% Check events conditions at `zero`
    function y__ = ReinitY0(time, y0)
        
        cond_zero = Conditions(time, y0);
        ev_idxs = find(cond_zero==0, 1);
        
        if ~isempty(ev_idxs)
            for idx = 1:length(ev_idxs)
                ev = events_affects(idx);
                y__ = ev{1}(0.0,y0);
            end
        else
            y__ = y0;
        end
    end

    function status = OutputFunc(time, y, flag)
        switch flag
            case 'done'
                assignin('base', 'output', integrator);
            case 'affect'
                integrator(end, :) = shared_values;
            otherwise
                integrator = [integrator; shared_values];
        end
        status = 0;
    end

    function dydt = ODEFunc(time, y)

        dydt = zeros(44, 1);

        %%% Dynamic records annotation
        %1 - GUT,  (L) Gut compartment
        %2 - PLASMA,  (L) Blood plasma compartment
        %3 - ROB,  (L) Compartment representing "rest of body"
        %4 - PFM_gut,  (ng) 
        %5 - PFM_p,  (ng) 
        %6 - PFM_r,  (ng) 
        %7 - BRAIN,  (L) Volume of brain
        %8 - A_b,  (nM) 
        %9 - O_b,  (nM) 
        %10 - P_b,  (nM) 
        %11 - L_b,  (nM) 
        %12 - S_b,  (nM) 
        %13 - NAPE_b,  (nM) 
        %14 - NOPE_b,  (nM) 
        %15 - NPPE_b,  (nM) 
        %16 - NLPE_b,  (nM) 
        %17 - NSPE_b,  (nM) 
        %18 - FAAH_b,  (nM) 
        %19 - FAAHinh_b,  (nM) 
        %20 - A_r, AEA in rest of body (nM) 
        %21 - O_r, OEA in rest of body (nM) 
        %22 - P_r, PEA in rest of body (nM) 
        %23 - L_r, LEA in rest of body (nM) 
        %24 - S_r, SEA in rest of body (nM) 
        %25 - NAPE_r,  (nM) 
        %26 - NOPE_r,  (nM) 
        %27 - NPPE_r,  (nM) 
        %28 - NLPE_r,  (nM) 
        %29 - NSPE_r,  (nM) 
        %30 - FAAH_r,  (nM) 
        %31 - FAAHinh_r,  (nM) 
        %32 - MEC,  (L) The same as blood brain barrier (BBB)
        %33 - A_m,  (nM) 
        %34 - O_m,  (nM) 
        %35 - P_m,  (nM) 
        %36 - L_m,  (nM) 
        %37 - S_m,  (nM) 
        %38 - FAAH_m,  (nM) 
        %39 - FAAHinh_m,  (nM) 
        %40 - A_p,  (nM) 
        %41 - O_p,  (nM) 
        %42 - P_p,  (nM) 
        %43 - L_p,  (nM) 
        %44 - S_p,  (nM) 

        %%% Output records
        %  (L) Gut compartment
        GUT = y(1);
        %  (UL) 
        F_PFM = p(83) * p(80) / (p(84) + p(80));
        %  (ng) 
        dose_amount = F_PFM * p(95) * p(80) * F_PFM;
        %  (ng) 
        PFM_gut = y(4);
        %  (ng/h) 
        absorp = p(85) * PFM_gut;
        %  (ng) 
        PFM_p = y(5);
        %  (ng) 
        PFM_r = y(6);
        %  (ng/h) 
        dist = p(86) * PFM_p - p(87) * PFM_r;
        %  (ng/h) 
        elim = p(88) * PFM_p + (p(89) * PFM_p / p(82)) / (p(90) + PFM_p / p(82));
        %  (L) Volume of brain
        BRAIN = y(7);
        %  (nM) 
        FAAH_b = y(18) / BRAIN;
        %  (nM) 
        A_b = y(8) / BRAIN;
        %  (nM) 
        O_b = y(9) / BRAIN;
        %  (nM) 
        P_b = y(10) / BRAIN;
        %  (nM) 
        L_b = y(11) / BRAIN;
        %  (nM) 
        S_b = y(12) / BRAIN;
        %  (UL) 
        FAAH_D_b = 1 + A_b / p(51) + O_b / p(52) + P_b / p(53) + L_b / p(54) + S_b / p(55);
        %  (nmole/h) 
        vA_degr_b = BRAIN * FAAH_b * p(35) * p(37) * A_b / (p(51) * FAAH_D_b);
        %  (nmole/h) 
        vO_degr_b = BRAIN * FAAH_b * p(35) * p(38) * O_b / (p(52) * FAAH_D_b);
        %  (nmole/h) 
        vP_degr_b = BRAIN * FAAH_b * p(35) * p(39) * P_b / (p(53) * FAAH_D_b);
        %  (nmole/h) 
        vL_degr_b = BRAIN * FAAH_b * p(35) * p(40) * L_b / (p(54) * FAAH_D_b);
        %  (nmole/h) 
        vS_degr_b = BRAIN * FAAH_b * p(35) * p(41) * S_b / (p(55) * FAAH_D_b);
        %  (nmole/h) 
        vNAPE_syn_b = BRAIN * p(1) * p(2) * p(7) * p(12);
        %  (nmole/h) 
        vNOPE_syn_b = BRAIN * p(1) * p(3) * p(8) * p(12);
        %  (nmole/h) 
        vNPPE_syn_b = BRAIN * p(1) * p(4) * p(9) * p(12);
        %  (nmole/h) 
        vNLPE_syn_b = BRAIN * p(1) * p(5) * p(10) * p(12);
        %  (nmole/h) 
        vNSPE_syn_b = BRAIN * p(1) * p(6) * p(11) * p(12);
        %  (nM) 
        NAPE_b = y(13) / BRAIN;
        %  (nM) 
        NOPE_b = y(14) / BRAIN;
        %  (nM) 
        NPPE_b = y(15) / BRAIN;
        %  (nM) 
        NLPE_b = y(16) / BRAIN;
        %  (nM) 
        NSPE_b = y(17) / BRAIN;
        %  (UL) 
        slag1_b = NAPE_b / p(25) + NOPE_b / p(26) + NPPE_b / p(27) + NLPE_b / p(28) + NSPE_b / p(29);
        %  (UL) 
        slag2_b = A_b / p(30) + O_b / p(31) + P_b / p(32) + L_b / p(33) + S_b / p(34);
        %  (UL) 
        den_b = 1 + slag1_b + slag2_b;
        %  (nmole/h) 
        vA_syn_b = BRAIN * p(96) * p(20) * NAPE_b / p(25) / den_b;
        %  (nmole/h) 
        vO_syn_b = BRAIN * p(96) * p(21) * NOPE_b / p(26) / den_b;
        %  (nmole/h) 
        vP_syn_b = BRAIN * p(96) * p(22) * NPPE_b / p(27) / den_b;
        %  (nmole/h) 
        vL_syn_b = BRAIN * p(96) * p(23) * NLPE_b / p(28) / den_b;
        %  (nmole/h) 
        vS_syn_b = BRAIN * p(96) * p(24) * NSPE_b / p(29) / den_b;
        %  (nmole/h) 
        vFAAH_syn_b = BRAIN * p(36) * p(43) * p(56);
        %  (nmole/h) 
        vFAAH_degr_b = BRAIN * p(56) * FAAH_b;
        %  (nM) 
        PF_p = PFM_p / p(81) / p(82);
        %  (nM) 
        PF_b = PF_p * p(92);
        %  (nmole/h) 
        vFAAH_inh_b = BRAIN * p(57) * FAAH_b * PF_b;
        %  (nM) 
        FAAHinh_b = y(19) / BRAIN;
        %  (nmole/h) 
        vFAAH_inh_degr_b = BRAIN * p(56) * FAAHinh_b;
        %  (nmole/h) 
        vA_UE_b = BRAIN * p(43) * p(58) * A_b;
        %  (nmole/h) 
        vO_UE_b = BRAIN * p(43) * p(59) * O_b;
        %  (nmole/h) 
        vP_UE_b = BRAIN * p(43) * p(60) * P_b;
        %  (nmole/h) 
        vL_UE_b = BRAIN * p(43) * p(61) * L_b;
        %  (nmole/h) 
        vS_UE_b = BRAIN * p(43) * p(62) * S_b;
        %  (L) Compartment representing "rest of body"
        ROB = y(3);
        %  (nM) 
        FAAH_r = y(30) / ROB;
        % AEA in rest of body (nM) 
        A_r = y(20) / ROB;
        % OEA in rest of body (nM) 
        O_r = y(21) / ROB;
        % PEA in rest of body (nM) 
        P_r = y(22) / ROB;
        % LEA in rest of body (nM) 
        L_r = y(23) / ROB;
        % SEA in rest of body (nM) 
        S_r = y(24) / ROB;
        %  (UL) 
        FAAH_D_r = 1 + A_r / p(51) + O_r / p(52) + P_r / p(53) + L_r / p(54) + S_r / p(55);
        %  (nmole/h) 
        vA_degr_r = ROB * FAAH_r * p(35) * p(37) * A_r / (p(51) * FAAH_D_r);
        %  (nmole/h) 
        vO_degr_r = ROB * FAAH_r * p(35) * p(38) * O_r / (p(52) * FAAH_D_r);
        %  (nmole/h) 
        vP_degr_r = ROB * FAAH_r * p(35) * p(39) * P_r / (p(53) * FAAH_D_r);
        %  (nmole/h) 
        vL_degr_r = ROB * FAAH_r * p(35) * p(40) * L_r / (p(54) * FAAH_D_r);
        %  (nmole/h) 
        vS_degr_r = ROB * FAAH_r * p(35) * p(41) * S_r / (p(55) * FAAH_D_r);
        %  (L) 
        c_NAT_ROB = p(105) * p(13) + p(101) * p(14) + p(106) * p(15) + p(102) * p(16) + p(107) * p(17) + p(103) * p(18) + p(104) * p(19);
        %  (nmole/h) 
        vNAPE_syn_r = p(1) * p(2) * p(7) * c_NAT_ROB;
        %  (nmole/h) 
        vNOPE_syn_r = p(1) * p(3) * p(8) * c_NAT_ROB;
        %  (nmole/h) 
        vNPPE_syn_r = p(1) * p(4) * p(9) * c_NAT_ROB;
        %  (nmole/h) 
        vNLPE_syn_r = p(1) * p(5) * p(10) * c_NAT_ROB;
        %  (nmole/h) 
        vNSPE_syn_r = p(1) * p(6) * p(11) * c_NAT_ROB;
        %  (nM) 
        NAPE_r = y(25) / ROB;
        %  (nM) 
        NOPE_r = y(26) / ROB;
        %  (nM) 
        NPPE_r = y(27) / ROB;
        %  (nM) 
        NLPE_r = y(28) / ROB;
        %  (nM) 
        NSPE_r = y(29) / ROB;
        %  (UL) 
        slag1_r = NAPE_r / p(25) + NOPE_r / p(26) + NPPE_r / p(27) + NLPE_r / p(28) + NSPE_r / p(29);
        %  (UL) 
        slag2_r = A_r / p(30) + O_r / p(31) + P_r / p(32) + L_r / p(33) + S_r / p(34);
        %  (UL) 
        den_r = 1 + slag1_r + slag2_r;
        %  (nmole/h) 
        vA_syn_r = ROB * p(97) * p(20) * NAPE_r / p(25) / den_r;
        %  (nmole/h) 
        vO_syn_r = ROB * p(97) * p(21) * NOPE_r / p(26) / den_r;
        %  (nmole/h) 
        vP_syn_r = ROB * p(97) * p(22) * NPPE_r / p(27) / den_r;
        %  (nmole/h) 
        vL_syn_r = ROB * p(97) * p(23) * NLPE_r / p(28) / den_r;
        %  (nmole/h) 
        vS_syn_r = ROB * p(97) * p(24) * NSPE_r / p(29) / den_r;
        %  (L) 
        c_FAAH_ROB = p(98) * p(42) + p(99) * p(44) + p(100) * p(45) + p(101) * p(46) + p(102) * p(47) + p(103) * p(48) + p(104) * p(50);
        %  (nmole/h) 
        vFAAH_syn_r = p(36) * c_FAAH_ROB * p(56);
        %  (nmole/h) 
        vFAAH_degr_r = ROB * p(56) * FAAH_r;
        %  (nM) 
        PF_r = PF_p * p(94);
        %  (nmole/h) 
        vFAAH_inh_r = ROB * p(57) * FAAH_r * PF_r;
        %  (nM) 
        FAAHinh_r = y(31) / ROB;
        %  (nmole/h) 
        vFAAH_inh_degr_r = ROB * p(56) * FAAHinh_r;
        %  (L) 
        c_NAAA_ROB = p(98) * p(63) + p(99) * p(64) + p(100) * p(65) + p(101) * p(66) + p(106) * p(67) + p(102) * p(68) + p(108) * p(69) + p(103) * p(70);
        %  (nmole/h) 
        vA_UE_r = c_NAAA_ROB * p(58) * A_r;
        %  (nmole/h) 
        vO_UE_r = c_NAAA_ROB * p(59) * O_r;
        %  (nmole/h) 
        vP_UE_r = c_NAAA_ROB * p(60) * P_r;
        %  (nmole/h) 
        vL_UE_r = c_NAAA_ROB * p(61) * L_r;
        %  (nmole/h) 
        vS_UE_r = c_NAAA_ROB * p(62) * S_r;
        %  (L) The same as blood brain barrier (BBB)
        MEC = y(32);
        %  (nM) 
        FAAH_m = y(38) / MEC;
        %  (nM) 
        A_m = y(33) / MEC;
        %  (nM) 
        O_m = y(34) / MEC;
        %  (nM) 
        P_m = y(35) / MEC;
        %  (nM) 
        L_m = y(36) / MEC;
        %  (nM) 
        S_m = y(37) / MEC;
        %  (UL) 
        FAAH_D_m = 1 + A_m / p(51) + O_m / p(52) + P_m / p(53) + L_m / p(54) + S_m / p(55);
        %  (nmole/h) 
        vA_degr_m = MEC * FAAH_m * p(35) * p(37) * A_m / (p(51) * FAAH_D_m);
        %  (nmole/h) 
        vO_degr_m = MEC * FAAH_m * p(35) * p(38) * O_m / (p(52) * FAAH_D_m);
        %  (nmole/h) 
        vP_degr_m = MEC * FAAH_m * p(35) * p(39) * P_m / (p(53) * FAAH_D_m);
        %  (nmole/h) 
        vL_degr_m = MEC * FAAH_m * p(35) * p(40) * L_m / (p(54) * FAAH_D_m);
        %  (nmole/h) 
        vS_degr_m = MEC * FAAH_m * p(35) * p(41) * S_m / (p(55) * FAAH_D_m);
        %  (nmole/h) 
        vFAAH_syn_m = MEC * p(36) * p(49) * p(56);
        %  (nmole/h) 
        vFAAH_degr_m = MEC * p(56) * FAAH_m;
        %  (nM) 
        PF_m = PF_p * p(93);
        %  (nmole/h) 
        vFAAH_inh_m = MEC * p(57) * FAAH_m * PF_m;
        %  (nM) 
        FAAHinh_m = y(39) / MEC;
        %  (nmole/h) 
        vFAAH_inh_degr_m = MEC * p(56) * FAAHinh_m;
        %  (L) Blood plasma compartment
        PLASMA = y(2);
        %  (nM) 
        A_p = y(40) / PLASMA;
        %  (nmole/h) 
        vA_m_p = MEC * p(110) * (A_m - A_p * p(111)) / (A_m + A_p + p(112));
        %  (nM) 
        O_p = y(41) / PLASMA;
        %  (nmole/h) 
        vO_m_p = MEC * p(113) * (O_m - O_p * p(114));
        %  (nM) 
        P_p = y(42) / PLASMA;
        %  (nmole/h) 
        vP_m_p = MEC * p(115) * (P_m - P_p * p(116));
        %  (nM) 
        L_p = y(43) / PLASMA;
        %  (nmole/h) 
        vL_m_p = MEC * p(117) * (L_m - L_p * p(118));
        %  (nM) 
        S_p = y(44) / PLASMA;
        %  (nmole/h) 
        vS_m_p = MEC * p(119) * (S_m - S_p * p(120));
        %  (nmole/h) 
        vA_b_m = MEC * p(110) * (A_b - A_m) / (A_m + A_b + p(112));
        %  (nmole/h) 
        vO_b_m = MEC * p(113) * (O_b - O_m);
        %  (nmole/h) 
        vP_b_m = MEC * p(115) * (P_b - P_m);
        %  (nmole/h) 
        vL_b_m = MEC * p(117) * (L_b - L_m);
        %  (nmole/h) 
        vS_b_m = MEC * p(119) * (S_b - S_m);
        %  (nmole/h) 
        vA_r_p = PLASMA * p(121) * (A_r - A_p * p(123)) / (A_r + A_p + p(112));
        %  (nmole/h) 
        vO_r_p = PLASMA * p(122) * (O_r - O_p * p(124));
        %  (nmole/h) 
        vP_r_p = PLASMA * p(122) * (P_r - P_p * p(125));
        %  (nmole/h) 
        vL_r_p = PLASMA * p(122) * (L_r - L_p * p(126));
        %  (nmole/h) 
        vS_r_p = PLASMA * p(122) * (S_r - S_p * p(127));
        shared_values = [GUT, F_PFM, dose_amount, PFM_gut, absorp, PFM_p, PFM_r, dist, elim, BRAIN, FAAH_b, A_b, O_b, P_b, L_b, S_b, FAAH_D_b, vA_degr_b, vO_degr_b, vP_degr_b, vL_degr_b, vS_degr_b, vNAPE_syn_b, vNOPE_syn_b, vNPPE_syn_b, vNLPE_syn_b, vNSPE_syn_b, NAPE_b, NOPE_b, NPPE_b, NLPE_b, NSPE_b, slag1_b, slag2_b, den_b, vA_syn_b, vO_syn_b, vP_syn_b, vL_syn_b, vS_syn_b, vFAAH_syn_b, vFAAH_degr_b, PF_p, PF_b, vFAAH_inh_b, FAAHinh_b, vFAAH_inh_degr_b, vA_UE_b, vO_UE_b, vP_UE_b, vL_UE_b, vS_UE_b, ROB, FAAH_r, A_r, O_r, P_r, L_r, S_r, FAAH_D_r, vA_degr_r, vO_degr_r, vP_degr_r, vL_degr_r, vS_degr_r, c_NAT_ROB, vNAPE_syn_r, vNOPE_syn_r, vNPPE_syn_r, vNLPE_syn_r, vNSPE_syn_r, NAPE_r, NOPE_r, NPPE_r, NLPE_r, NSPE_r, slag1_r, slag2_r, den_r, vA_syn_r, vO_syn_r, vP_syn_r, vL_syn_r, vS_syn_r, c_FAAH_ROB, vFAAH_syn_r, vFAAH_degr_r, PF_r, vFAAH_inh_r, FAAHinh_r, vFAAH_inh_degr_r, c_NAAA_ROB, vA_UE_r, vO_UE_r, vP_UE_r, vL_UE_r, vS_UE_r, MEC, FAAH_m, A_m, O_m, P_m, L_m, S_m, FAAH_D_m, vA_degr_m, vO_degr_m, vP_degr_m, vL_degr_m, vS_degr_m, vFAAH_syn_m, vFAAH_degr_m, PF_m, vFAAH_inh_m, FAAHinh_m, vFAAH_inh_degr_m, PLASMA, A_p, vA_m_p, O_p, vO_m_p, P_p, vP_m_p, L_p, vL_m_p, S_p, vS_m_p, vA_b_m, vO_b_m, vP_b_m, vL_b_m, vS_b_m, vA_r_p, vO_r_p, vP_r_p, vL_r_p, vS_r_p];

        %%% Differential equations
        dydt(1) = 0;
        dydt(2) = 0;
        dydt(3) = 0;
        dydt(4) = -absorp;
        dydt(5) = absorp -dist -elim;
        dydt(6) = dist;
        dydt(7) = 0;
        dydt(8) = -vA_degr_b +vA_syn_b -vA_UE_b -vA_b_m;
        dydt(9) = -vO_degr_b +vO_syn_b -vO_UE_b -vO_b_m;
        dydt(10) = -vP_degr_b +vP_syn_b -vP_UE_b -vP_b_m;
        dydt(11) = -vL_degr_b +vL_syn_b -vL_UE_b -vL_b_m;
        dydt(12) = -vS_degr_b +vS_syn_b -vS_UE_b -vS_b_m;
        dydt(13) = vNAPE_syn_b -vA_syn_b;
        dydt(14) = vNOPE_syn_b -vO_syn_b;
        dydt(15) = vNPPE_syn_b -vP_syn_b;
        dydt(16) = vNLPE_syn_b -vL_syn_b;
        dydt(17) = vNSPE_syn_b -vS_syn_b;
        dydt(18) = vFAAH_syn_b -vFAAH_degr_b -vFAAH_inh_b;
        dydt(19) = vFAAH_inh_b -vFAAH_inh_degr_b;
        dydt(20) = -vA_degr_r +vA_syn_r -vA_UE_r -vA_r_p;
        dydt(21) = -vO_degr_r +vO_syn_r -vO_UE_r -vO_r_p;
        dydt(22) = -vP_degr_r +vP_syn_r -vP_UE_r -vP_r_p;
        dydt(23) = -vL_degr_r +vL_syn_r -vL_UE_r -vL_r_p;
        dydt(24) = -vS_degr_r +vS_syn_r -vS_UE_r -vS_r_p;
        dydt(25) = vNAPE_syn_r -vA_syn_r;
        dydt(26) = vNOPE_syn_r -vO_syn_r;
        dydt(27) = vNPPE_syn_r -vP_syn_r;
        dydt(28) = vNLPE_syn_r -vL_syn_r;
        dydt(29) = vNSPE_syn_r -vS_syn_r;
        dydt(30) = vFAAH_syn_r -vFAAH_degr_r -vFAAH_inh_r;
        dydt(31) = vFAAH_inh_r -vFAAH_inh_degr_r;
        dydt(32) = 0;
        dydt(33) = -vA_degr_m -vA_m_p +vA_b_m;
        dydt(34) = -vO_degr_m -vO_m_p +vO_b_m;
        dydt(35) = -vP_degr_m -vP_m_p +vP_b_m;
        dydt(36) = -vL_degr_m -vL_m_p +vL_b_m;
        dydt(37) = -vS_degr_m -vS_m_p +vS_b_m;
        dydt(38) = vFAAH_syn_m -vFAAH_degr_m -vFAAH_inh_m;
        dydt(39) = vFAAH_inh_m -vFAAH_inh_degr_m;
        dydt(40) = vA_m_p +vA_r_p;
        dydt(41) = vO_m_p +vO_r_p;
        dydt(42) = vP_m_p +vP_r_p;
        dydt(43) = vL_m_p +vL_r_p;
        dydt(44) = vS_m_p +vS_r_p;
    end

    
    function res = evt1_condition(time, y)

        res = time - 0.0;
    end
    function y = evt1_affect(time, y)

        %%% Records
        %  (L) Gut compartment
        GUT = y(1);
        %  (UL) 
        F_PFM = p(83) * p(80) / (p(84) + p(80));
        %  (ng) 
        dose_amount = F_PFM * p(95) * p(80) * F_PFM;
        %  (ng) 
        PFM_gut = y(4);
        %  (ng/h) 
        absorp = p(85) * PFM_gut;
        %  (ng) 
        PFM_p = y(5);
        %  (ng) 
        PFM_r = y(6);
        %  (ng/h) 
        dist = p(86) * PFM_p - p(87) * PFM_r;
        %  (ng/h) 
        elim = p(88) * PFM_p + (p(89) * PFM_p / p(82)) / (p(90) + PFM_p / p(82));
        %  (L) Volume of brain
        BRAIN = y(7);
        %  (nM) 
        FAAH_b = y(18) / BRAIN;
        %  (nM) 
        A_b = y(8) / BRAIN;
        %  (nM) 
        O_b = y(9) / BRAIN;
        %  (nM) 
        P_b = y(10) / BRAIN;
        %  (nM) 
        L_b = y(11) / BRAIN;
        %  (nM) 
        S_b = y(12) / BRAIN;
        %  (UL) 
        FAAH_D_b = 1 + A_b / p(51) + O_b / p(52) + P_b / p(53) + L_b / p(54) + S_b / p(55);
        %  (nmole/h) 
        vA_degr_b = BRAIN * FAAH_b * p(35) * p(37) * A_b / (p(51) * FAAH_D_b);
        %  (nmole/h) 
        vO_degr_b = BRAIN * FAAH_b * p(35) * p(38) * O_b / (p(52) * FAAH_D_b);
        %  (nmole/h) 
        vP_degr_b = BRAIN * FAAH_b * p(35) * p(39) * P_b / (p(53) * FAAH_D_b);
        %  (nmole/h) 
        vL_degr_b = BRAIN * FAAH_b * p(35) * p(40) * L_b / (p(54) * FAAH_D_b);
        %  (nmole/h) 
        vS_degr_b = BRAIN * FAAH_b * p(35) * p(41) * S_b / (p(55) * FAAH_D_b);
        %  (nmole/h) 
        vNAPE_syn_b = BRAIN * p(1) * p(2) * p(7) * p(12);
        %  (nmole/h) 
        vNOPE_syn_b = BRAIN * p(1) * p(3) * p(8) * p(12);
        %  (nmole/h) 
        vNPPE_syn_b = BRAIN * p(1) * p(4) * p(9) * p(12);
        %  (nmole/h) 
        vNLPE_syn_b = BRAIN * p(1) * p(5) * p(10) * p(12);
        %  (nmole/h) 
        vNSPE_syn_b = BRAIN * p(1) * p(6) * p(11) * p(12);
        %  (nM) 
        NAPE_b = y(13) / BRAIN;
        %  (nM) 
        NOPE_b = y(14) / BRAIN;
        %  (nM) 
        NPPE_b = y(15) / BRAIN;
        %  (nM) 
        NLPE_b = y(16) / BRAIN;
        %  (nM) 
        NSPE_b = y(17) / BRAIN;
        %  (UL) 
        slag1_b = NAPE_b / p(25) + NOPE_b / p(26) + NPPE_b / p(27) + NLPE_b / p(28) + NSPE_b / p(29);
        %  (UL) 
        slag2_b = A_b / p(30) + O_b / p(31) + P_b / p(32) + L_b / p(33) + S_b / p(34);
        %  (UL) 
        den_b = 1 + slag1_b + slag2_b;
        %  (nmole/h) 
        vA_syn_b = BRAIN * p(96) * p(20) * NAPE_b / p(25) / den_b;
        %  (nmole/h) 
        vO_syn_b = BRAIN * p(96) * p(21) * NOPE_b / p(26) / den_b;
        %  (nmole/h) 
        vP_syn_b = BRAIN * p(96) * p(22) * NPPE_b / p(27) / den_b;
        %  (nmole/h) 
        vL_syn_b = BRAIN * p(96) * p(23) * NLPE_b / p(28) / den_b;
        %  (nmole/h) 
        vS_syn_b = BRAIN * p(96) * p(24) * NSPE_b / p(29) / den_b;
        %  (nmole/h) 
        vFAAH_syn_b = BRAIN * p(36) * p(43) * p(56);
        %  (nmole/h) 
        vFAAH_degr_b = BRAIN * p(56) * FAAH_b;
        %  (nM) 
        PF_p = PFM_p / p(81) / p(82);
        %  (nM) 
        PF_b = PF_p * p(92);
        %  (nmole/h) 
        vFAAH_inh_b = BRAIN * p(57) * FAAH_b * PF_b;
        %  (nM) 
        FAAHinh_b = y(19) / BRAIN;
        %  (nmole/h) 
        vFAAH_inh_degr_b = BRAIN * p(56) * FAAHinh_b;
        %  (nmole/h) 
        vA_UE_b = BRAIN * p(43) * p(58) * A_b;
        %  (nmole/h) 
        vO_UE_b = BRAIN * p(43) * p(59) * O_b;
        %  (nmole/h) 
        vP_UE_b = BRAIN * p(43) * p(60) * P_b;
        %  (nmole/h) 
        vL_UE_b = BRAIN * p(43) * p(61) * L_b;
        %  (nmole/h) 
        vS_UE_b = BRAIN * p(43) * p(62) * S_b;
        %  (L) Compartment representing "rest of body"
        ROB = y(3);
        %  (nM) 
        FAAH_r = y(30) / ROB;
        % AEA in rest of body (nM) 
        A_r = y(20) / ROB;
        % OEA in rest of body (nM) 
        O_r = y(21) / ROB;
        % PEA in rest of body (nM) 
        P_r = y(22) / ROB;
        % LEA in rest of body (nM) 
        L_r = y(23) / ROB;
        % SEA in rest of body (nM) 
        S_r = y(24) / ROB;
        %  (UL) 
        FAAH_D_r = 1 + A_r / p(51) + O_r / p(52) + P_r / p(53) + L_r / p(54) + S_r / p(55);
        %  (nmole/h) 
        vA_degr_r = ROB * FAAH_r * p(35) * p(37) * A_r / (p(51) * FAAH_D_r);
        %  (nmole/h) 
        vO_degr_r = ROB * FAAH_r * p(35) * p(38) * O_r / (p(52) * FAAH_D_r);
        %  (nmole/h) 
        vP_degr_r = ROB * FAAH_r * p(35) * p(39) * P_r / (p(53) * FAAH_D_r);
        %  (nmole/h) 
        vL_degr_r = ROB * FAAH_r * p(35) * p(40) * L_r / (p(54) * FAAH_D_r);
        %  (nmole/h) 
        vS_degr_r = ROB * FAAH_r * p(35) * p(41) * S_r / (p(55) * FAAH_D_r);
        %  (L) 
        c_NAT_ROB = p(105) * p(13) + p(101) * p(14) + p(106) * p(15) + p(102) * p(16) + p(107) * p(17) + p(103) * p(18) + p(104) * p(19);
        %  (nmole/h) 
        vNAPE_syn_r = p(1) * p(2) * p(7) * c_NAT_ROB;
        %  (nmole/h) 
        vNOPE_syn_r = p(1) * p(3) * p(8) * c_NAT_ROB;
        %  (nmole/h) 
        vNPPE_syn_r = p(1) * p(4) * p(9) * c_NAT_ROB;
        %  (nmole/h) 
        vNLPE_syn_r = p(1) * p(5) * p(10) * c_NAT_ROB;
        %  (nmole/h) 
        vNSPE_syn_r = p(1) * p(6) * p(11) * c_NAT_ROB;
        %  (nM) 
        NAPE_r = y(25) / ROB;
        %  (nM) 
        NOPE_r = y(26) / ROB;
        %  (nM) 
        NPPE_r = y(27) / ROB;
        %  (nM) 
        NLPE_r = y(28) / ROB;
        %  (nM) 
        NSPE_r = y(29) / ROB;
        %  (UL) 
        slag1_r = NAPE_r / p(25) + NOPE_r / p(26) + NPPE_r / p(27) + NLPE_r / p(28) + NSPE_r / p(29);
        %  (UL) 
        slag2_r = A_r / p(30) + O_r / p(31) + P_r / p(32) + L_r / p(33) + S_r / p(34);
        %  (UL) 
        den_r = 1 + slag1_r + slag2_r;
        %  (nmole/h) 
        vA_syn_r = ROB * p(97) * p(20) * NAPE_r / p(25) / den_r;
        %  (nmole/h) 
        vO_syn_r = ROB * p(97) * p(21) * NOPE_r / p(26) / den_r;
        %  (nmole/h) 
        vP_syn_r = ROB * p(97) * p(22) * NPPE_r / p(27) / den_r;
        %  (nmole/h) 
        vL_syn_r = ROB * p(97) * p(23) * NLPE_r / p(28) / den_r;
        %  (nmole/h) 
        vS_syn_r = ROB * p(97) * p(24) * NSPE_r / p(29) / den_r;
        %  (L) 
        c_FAAH_ROB = p(98) * p(42) + p(99) * p(44) + p(100) * p(45) + p(101) * p(46) + p(102) * p(47) + p(103) * p(48) + p(104) * p(50);
        %  (nmole/h) 
        vFAAH_syn_r = p(36) * c_FAAH_ROB * p(56);
        %  (nmole/h) 
        vFAAH_degr_r = ROB * p(56) * FAAH_r;
        %  (nM) 
        PF_r = PF_p * p(94);
        %  (nmole/h) 
        vFAAH_inh_r = ROB * p(57) * FAAH_r * PF_r;
        %  (nM) 
        FAAHinh_r = y(31) / ROB;
        %  (nmole/h) 
        vFAAH_inh_degr_r = ROB * p(56) * FAAHinh_r;
        %  (L) 
        c_NAAA_ROB = p(98) * p(63) + p(99) * p(64) + p(100) * p(65) + p(101) * p(66) + p(106) * p(67) + p(102) * p(68) + p(108) * p(69) + p(103) * p(70);
        %  (nmole/h) 
        vA_UE_r = c_NAAA_ROB * p(58) * A_r;
        %  (nmole/h) 
        vO_UE_r = c_NAAA_ROB * p(59) * O_r;
        %  (nmole/h) 
        vP_UE_r = c_NAAA_ROB * p(60) * P_r;
        %  (nmole/h) 
        vL_UE_r = c_NAAA_ROB * p(61) * L_r;
        %  (nmole/h) 
        vS_UE_r = c_NAAA_ROB * p(62) * S_r;
        %  (L) The same as blood brain barrier (BBB)
        MEC = y(32);
        %  (nM) 
        FAAH_m = y(38) / MEC;
        %  (nM) 
        A_m = y(33) / MEC;
        %  (nM) 
        O_m = y(34) / MEC;
        %  (nM) 
        P_m = y(35) / MEC;
        %  (nM) 
        L_m = y(36) / MEC;
        %  (nM) 
        S_m = y(37) / MEC;
        %  (UL) 
        FAAH_D_m = 1 + A_m / p(51) + O_m / p(52) + P_m / p(53) + L_m / p(54) + S_m / p(55);
        %  (nmole/h) 
        vA_degr_m = MEC * FAAH_m * p(35) * p(37) * A_m / (p(51) * FAAH_D_m);
        %  (nmole/h) 
        vO_degr_m = MEC * FAAH_m * p(35) * p(38) * O_m / (p(52) * FAAH_D_m);
        %  (nmole/h) 
        vP_degr_m = MEC * FAAH_m * p(35) * p(39) * P_m / (p(53) * FAAH_D_m);
        %  (nmole/h) 
        vL_degr_m = MEC * FAAH_m * p(35) * p(40) * L_m / (p(54) * FAAH_D_m);
        %  (nmole/h) 
        vS_degr_m = MEC * FAAH_m * p(35) * p(41) * S_m / (p(55) * FAAH_D_m);
        %  (nmole/h) 
        vFAAH_syn_m = MEC * p(36) * p(49) * p(56);
        %  (nmole/h) 
        vFAAH_degr_m = MEC * p(56) * FAAH_m;
        %  (nM) 
        PF_m = PF_p * p(93);
        %  (nmole/h) 
        vFAAH_inh_m = MEC * p(57) * FAAH_m * PF_m;
        %  (nM) 
        FAAHinh_m = y(39) / MEC;
        %  (nmole/h) 
        vFAAH_inh_degr_m = MEC * p(56) * FAAHinh_m;
        %  (L) Blood plasma compartment
        PLASMA = y(2);
        %  (nM) 
        A_p = y(40) / PLASMA;
        %  (nmole/h) 
        vA_m_p = MEC * p(110) * (A_m - A_p * p(111)) / (A_m + A_p + p(112));
        %  (nM) 
        O_p = y(41) / PLASMA;
        %  (nmole/h) 
        vO_m_p = MEC * p(113) * (O_m - O_p * p(114));
        %  (nM) 
        P_p = y(42) / PLASMA;
        %  (nmole/h) 
        vP_m_p = MEC * p(115) * (P_m - P_p * p(116));
        %  (nM) 
        L_p = y(43) / PLASMA;
        %  (nmole/h) 
        vL_m_p = MEC * p(117) * (L_m - L_p * p(118));
        %  (nM) 
        S_p = y(44) / PLASMA;
        %  (nmole/h) 
        vS_m_p = MEC * p(119) * (S_m - S_p * p(120));
        %  (nmole/h) 
        vA_b_m = MEC * p(110) * (A_b - A_m) / (A_m + A_b + p(112));
        %  (nmole/h) 
        vO_b_m = MEC * p(113) * (O_b - O_m);
        %  (nmole/h) 
        vP_b_m = MEC * p(115) * (P_b - P_m);
        %  (nmole/h) 
        vL_b_m = MEC * p(117) * (L_b - L_m);
        %  (nmole/h) 
        vS_b_m = MEC * p(119) * (S_b - S_m);
        %  (nmole/h) 
        vA_r_p = PLASMA * p(121) * (A_r - A_p * p(123)) / (A_r + A_p + p(112));
        %  (nmole/h) 
        vO_r_p = PLASMA * p(122) * (O_r - O_p * p(124));
        %  (nmole/h) 
        vP_r_p = PLASMA * p(122) * (P_r - P_p * p(125));
        %  (nmole/h) 
        vL_r_p = PLASMA * p(122) * (L_r - L_p * p(126));
        %  (nmole/h) 
        vS_r_p = PLASMA * p(122) * (S_r - S_p * p(127));

        if time ~= 0
            shared_values = [GUT, F_PFM, dose_amount, PFM_gut, absorp, PFM_p, PFM_r, dist, elim, BRAIN, FAAH_b, A_b, O_b, P_b, L_b, S_b, FAAH_D_b, vA_degr_b, vO_degr_b, vP_degr_b, vL_degr_b, vS_degr_b, vNAPE_syn_b, vNOPE_syn_b, vNPPE_syn_b, vNLPE_syn_b, vNSPE_syn_b, NAPE_b, NOPE_b, NPPE_b, NLPE_b, NSPE_b, slag1_b, slag2_b, den_b, vA_syn_b, vO_syn_b, vP_syn_b, vL_syn_b, vS_syn_b, vFAAH_syn_b, vFAAH_degr_b, PF_p, PF_b, vFAAH_inh_b, FAAHinh_b, vFAAH_inh_degr_b, vA_UE_b, vO_UE_b, vP_UE_b, vL_UE_b, vS_UE_b, ROB, FAAH_r, A_r, O_r, P_r, L_r, S_r, FAAH_D_r, vA_degr_r, vO_degr_r, vP_degr_r, vL_degr_r, vS_degr_r, c_NAT_ROB, vNAPE_syn_r, vNOPE_syn_r, vNPPE_syn_r, vNLPE_syn_r, vNSPE_syn_r, NAPE_r, NOPE_r, NPPE_r, NLPE_r, NSPE_r, slag1_r, slag2_r, den_r, vA_syn_r, vO_syn_r, vP_syn_r, vL_syn_r, vS_syn_r, c_FAAH_ROB, vFAAH_syn_r, vFAAH_degr_r, PF_r, vFAAH_inh_r, FAAHinh_r, vFAAH_inh_degr_r, c_NAAA_ROB, vA_UE_r, vO_UE_r, vP_UE_r, vL_UE_r, vS_UE_r, MEC, FAAH_m, A_m, O_m, P_m, L_m, S_m, FAAH_D_m, vA_degr_m, vO_degr_m, vP_degr_m, vL_degr_m, vS_degr_m, vFAAH_syn_m, vFAAH_degr_m, PF_m, vFAAH_inh_m, FAAHinh_m, vFAAH_inh_degr_m, PLASMA, A_p, vA_m_p, O_p, vO_m_p, P_p, vP_m_p, L_p, vL_m_p, S_p, vS_m_p, vA_b_m, vO_b_m, vP_b_m, vL_b_m, vS_b_m, vA_r_p, vO_r_p, vP_r_p, vL_r_p, vS_r_p];
            OutputFunc(time, y, 'affect');
        end

        %%% recalculated values
        y(4) = PFM_gut + dose_amount;
        
    end

    function [res,isterminal,direction] = Conditions(time, y)
        vec = p(128:128) ~= 0;
        len = sum(vec);

        direction = ones(len, 1);
        isterminal = ones(len, 1);
        res_full = [evt1_condition(time, y)];     
        res = res_full(vec); % only active events
    end
end
