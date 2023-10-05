/*
 * Automatically generated Java code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

public class Pacemaker {

  public boolean inside_URI;
  public int AVI_Constraint;
  public int PVARP_Constraint;
  public int VRP_Constraint;
  public int AEI_Constraint;
  public int LRI_Constraint;
  public int URI_Constraint;
  public int[] _taken_transitions;
  public double _region0_AVI_timer_t;
  public double _region1_PVARP_timer_t;
  public double _region2_VRP_timer_t;
  public double _region3_AEI_timer_t;
  public double _region4_LRI_timer_t;
  public double _region5_URI_timer_t;
  public double deltaT;
  public double sleepT;
  public boolean AS;
  public boolean VS;
  public boolean AP;
  public boolean VP;
  public boolean V_event;
  public boolean VR;
  public boolean A_event;
  public boolean AR;
  public boolean _reg_VP;
  public boolean _pre_VP;
  public boolean _reg_AP;
  public boolean _pre_AP;
  public boolean _Pacemaker_local__Atrig;
  public boolean _Pacemaker_local__Atrig1;
  public boolean _Pacemaker_local__Atrig2;
  public boolean _Pacemaker_local__Atrig3;
  public boolean _Pacemaker_local__Atrig4;
  public boolean _Pacemaker_local__Atrig5;
  public boolean _Pacemaker_local__Atrig6;
  public boolean _Pacemaker_local__Atrig7;
  public boolean _Pacemaker_local__Atrig8;
  public boolean _Pacemaker_local__Atrig9;
  public boolean _Pacemaker_local__Atrig10;
  public boolean _Pacemaker_local__Atrig11;
  public boolean _g4;
  public boolean _g5;
  public boolean _g7;
  public boolean _g8;
  public boolean _g9;
  public boolean _g10;
  public boolean _g11;
  public boolean _g12;
  public boolean _g13;
  public boolean _g14;
  public boolean _g17;
  public boolean _g18;
  public boolean _g19;
  public boolean _g20;
  public boolean _g21;
  public boolean _g22;
  public boolean _g23;
  public boolean _g24;
  public boolean _g28;
  public boolean _g29;
  public boolean _g30;
  public boolean _g32;
  public boolean _g34;
  public boolean _g35;
  public boolean _g36;
  public boolean _g37;
  public boolean _g38;
  public boolean _g40;
  public boolean _g41;
  public boolean _g44;
  public boolean _g45;
  public boolean _g46;
  public boolean _g47;
  public boolean _g48;
  public boolean _g49;
  public boolean _g50;
  public boolean _g51;
  public boolean _g52;
  public boolean _g53;
  public boolean _g57;
  public boolean _g58;
  public boolean _g59;
  public boolean _g61;
  public boolean _g63;
  public boolean _g64;
  public boolean _g65;
  public boolean _g66;
  public boolean _g67;
  public boolean _g69;
  public boolean _g70;
  public boolean _g73;
  public boolean _g74;
  public boolean _g75;
  public boolean _g76;
  public boolean _g77;
  public boolean _g78;
  public boolean _g79;
  public boolean _g80;
  public boolean _g84;
  public boolean _g85;
  public boolean _g87;
  public boolean _g88;
  public boolean _g89;
  public boolean _g90;
  public boolean _g91;
  public boolean _g92;
  public boolean _g93;
  public boolean _g94;
  public boolean _g97;
  public boolean _g98;
  public boolean _g99;
  public boolean _g100;
  public boolean _g101;
  public boolean _g102;
  public boolean _g103;
  public boolean _g104;
  public boolean _g108;
  public boolean _g109;
  public boolean _g110;
  public boolean _g112;
  public boolean _g114;
  public boolean _g115;
  public boolean _g116;
  public boolean _g117;
  public boolean _g118;
  public boolean _g120;
  public boolean _g121;
  public boolean _g124;
  public boolean _g125;
  public boolean _g126;
  public boolean _g127;
  public boolean _g128;
  public boolean _g129;
  public boolean _g130;
  public boolean _g131;
  public boolean _g135;
  public boolean _g136;
  public boolean _g139;
  public boolean _g141;
  public boolean _g142;
  public boolean _g143;
  public boolean _g144;
  public boolean _g145;
  public boolean _g147;
  public boolean _g148;
  public boolean _g151;
  public boolean _g152;
  public boolean _g153;
  public boolean _g154;
  public boolean _g155;
  public boolean _g156;
  public boolean _g157;
  public boolean _g158;
  public boolean _g174;
  public boolean _g186;
  public boolean _g202;
  public boolean _GO;
  public boolean _cg4;
  public boolean _cg7;
  public boolean _cg8;
  public boolean _cg12;
  public boolean _cg20;
  public boolean _cg17;
  public boolean _cg22;
  public boolean _cg52;
  public boolean _cg28;
  public boolean _cg31;
  public boolean _cg32;
  public boolean _cg36;
  public boolean _cg35;
  public boolean _cg38;
  public boolean _cg41;
  public boolean _cg47;
  public boolean _cg44;
  public boolean _cg49;
  public boolean _cg57;
  public boolean _cg60;
  public boolean _cg61;
  public boolean _cg65;
  public boolean _cg64;
  public boolean _cg67;
  public boolean _cg70;
  public boolean _cg76;
  public boolean _cg73;
  public boolean _cg78;
  public boolean _cg84;
  public boolean _cg87;
  public boolean _cg88;
  public boolean _cg92;
  public boolean _cg100;
  public boolean _cg97;
  public boolean _cg102;
  public boolean _cg108;
  public boolean _cg111;
  public boolean _cg112;
  public boolean _cg116;
  public boolean _cg115;
  public boolean _cg118;
  public boolean _cg121;
  public boolean _cg127;
  public boolean _cg124;
  public boolean _cg129;
  public boolean _cg135;
  public boolean _cg138;
  public boolean _cg139;
  public boolean _cg143;
  public boolean _cg142;
  public boolean _cg145;
  public boolean _cg148;
  public boolean _cg154;
  public boolean _cg151;
  public boolean _cg156;
  public boolean _g9_e1;
  public boolean _g19_e2;
  public boolean _g37_e1;
  public boolean _g46_e2;
  public boolean _g66_e1;
  public boolean _g75_e2;
  public boolean _g89_e1;
  public boolean _g99_e2;
  public boolean _g117_e1;
  public boolean _g126_e2;
  public boolean _g144_e1;
  public boolean _g153_e2;
  public boolean _TERM;

  public Pacemaker() {
    _taken_transitions = new int[19];
  }
  public boolean _pg143;
  public boolean _pg66;
  public boolean _pg8;
  public boolean _pg154;
  public boolean _pg121;
  public boolean _pg156;
  public boolean _pg135;
  public boolean _pg157;
  public boolean _pg136;
  public boolean _pg202;
  public boolean _pg37_e1;
  public boolean _pg9_e1;
  public boolean _pg10;
  public boolean _pg13;
  public boolean _pg49;
  public boolean _pg53;
  public boolean _pg29;
  public boolean _pg139;
  public boolean _pg79;
  public boolean _pg57;
  public boolean _pg58;
  public boolean _pg92;
  public boolean _pg145;
  public boolean _pg99;
  public boolean _pg90;
  public boolean _pg93;
  public boolean _pg112;
  public boolean _pg130;
  public boolean _pg116;
  public boolean _pg148;
  public boolean _pg126;

  public void reset() {
    _GO = true;
    _TERM = false;
    AVI_Constraint = AVI_VALUE;
    PVARP_Constraint = PVARP_VALUE;
    VRP_Constraint = VRP_VALUE;
    AEI_Constraint = AEI_VALUE;
    LRI_Constraint = LRI_VALUE;
    URI_Constraint = URI_VALUE;
    _region0_AVI_timer_t = 0;
    _region1_PVARP_timer_t = 0;
    _region2_VRP_timer_t = 0;
    _region3_AEI_timer_t = 0;
    _region4_LRI_timer_t = 0;
    _region5_URI_timer_t = 0;
    deltaT = 0.0;
    sleepT = 0.0;
    _reg_VP = false;
    _reg_AP = false;
    _taken_transitions[0] = 0;
    _taken_transitions[1] = 0;
    _taken_transitions[2] = 0;
    _taken_transitions[3] = 0;
    _taken_transitions[4] = 0;
    _taken_transitions[5] = 0;
    _taken_transitions[6] = 0;
    _taken_transitions[7] = 0;
    _taken_transitions[8] = 0;
    _taken_transitions[9] = 0;
    _taken_transitions[10] = 0;
    _taken_transitions[11] = 0;
    _taken_transitions[12] = 0;
    _taken_transitions[13] = 0;
    _taken_transitions[14] = 0;
    _taken_transitions[15] = 0;
    _taken_transitions[16] = 0;
    _taken_transitions[17] = 0;
    _taken_transitions[18] = 0;
    _pg143 = false;
    _pg66 = false;
    _pg8 = false;
    _pg154 = false;
    _pg121 = false;
    _pg156 = false;
    _pg135 = false;
    _pg157 = false;
    _pg136 = false;
    _pg202 = false;
    _pg37_e1 = false;
    _pg9_e1 = false;
    _pg10 = false;
    _pg13 = false;
    _pg49 = false;
    _pg53 = false;
    _pg29 = false;
    _pg139 = false;
    _pg79 = false;
    _pg57 = false;
    _pg58 = false;
    _pg92 = false;
    _pg145 = false;
    _pg99 = false;
    _pg90 = false;
    _pg93 = false;
    _pg112 = false;
    _pg130 = false;
    _pg116 = false;
    _pg148 = false;
    _pg126 = false;
  }

  public void logic() {
    AP = false;
    VP = false;
    V_event = false;
    VR = false;
    A_event = false;
    AR = false;
    _g174 = _pg143;
    if (_g174) {
      _region2_VRP_timer_t += deltaT;
    }
    _pre_VP = _reg_VP;
    _g57 = _pg66;
    _cg57 = VS || _pre_VP;
    _g58 = _g57 && _cg57;
    if (_g58) {
      _region2_VRP_timer_t = 0;
      V_event |= true;
      _taken_transitions[7] += 1;
    }
    _g17 = _pg8;
    _cg17 = V_event;
    _g18 = _g17 && _cg17;
    if (_g18) {
      _Pacemaker_local__Atrig = true;
    }
    _g186 = _pg154;
    if (_g186) {
      _region5_URI_timer_t += deltaT;
    }
    _g135 = _pg121;
    _cg135 = V_event;
    _g136 = _g135 && _cg135;
    if (_g136) {
      _region5_URI_timer_t = 0;
      inside_URI = true;
      _taken_transitions[16] += 1;
    }
    _g147 = _pg156;
    _g141 = _pg135;
    _g144_e1 = !(_g147 || _g141);
    _g151 = _pg157;
    _cg151 = V_event;
    _g152 = _g151 && _cg151;
    if (_g152) {
      _Pacemaker_local__Atrig10 = true;
    }
    _g154 = _g151 && !_cg151;
    _cg154 = _region5_URI_timer_t >= URI_Constraint;
    _g155 = _g154 && _cg154;
    if (_g155) {
      _Pacemaker_local__Atrig11 = true;
    }
    sleepT = 1000.0;
    _g141 = _g141 || _g147;
    _cg142 = _region5_URI_timer_t < URI_Constraint;
    _g147 = _g141 && _cg142;
    if (_g147) {
      sleepT = (sleepT < (URI_Constraint - _region5_URI_timer_t)) ? sleepT : (URI_Constraint - _region5_URI_timer_t);
    }
    _cg143 = _Pacemaker_local__Atrig10 || _Pacemaker_local__Atrig11;
    _g142 = _g141 && !_cg142;
    _cg145 = _Pacemaker_local__Atrig10 || _Pacemaker_local__Atrig11;
    _g144 = _g147 && _cg143 || _g142 && _cg145;
    _g151 = !_g151;
    _g152 = _g152 || _g155;
    _g155 = (_g144_e1 || _g144) && (_g151 || _g152) && (_g144 || _g152);
    _cg156 = _Pacemaker_local__Atrig10;
    _g144 = _g155 && !_cg156;
    if (_g144) {
      inside_URI = false;
      _taken_transitions[18] += 1;
    }
    _g153 = _pg136;
    if (_g153) {
      _region0_AVI_timer_t += deltaT;
    }
    _g144_e1 = _g17 && !_cg17;
    _cg20 = _region0_AVI_timer_t >= AVI_Constraint && !inside_URI;
    _g153_e2 = _g144_e1 && _cg20;
    if (_g153_e2) {
      _Pacemaker_local__Atrig1 = true;
    }
    _g17 = _pg202;
    _g202 = _GO || _g17;
    if (_g202) {
      _pre_AP = _reg_AP;
    }
    _g28 = _pg37_e1;
    _cg28 = VS || _pre_VP;
    _g52 = _g28 && !_cg28;
    _cg52 = AS || _pre_AP;
    _g53 = _g52 && _cg52;
    if (_g53) {
      A_event |= true;
      _taken_transitions[4] += 1;
    }
    _g4 = _pg9_e1;
    _cg4 = A_event;
    _g5 = _g4 && _cg4;
    if (_g5) {
      _region0_AVI_timer_t = 0;
      _taken_transitions[0] += 1;
      _Pacemaker_local__Atrig = false;
      _Pacemaker_local__Atrig1 = false;
    }
    _g11 = _pg10;
    _g14 = _pg13;
    _g11 = _g5 || _g11 || _g14;
    _cg7 = _region0_AVI_timer_t < AVI_Constraint;
    _g14 = _g11 && !_cg7;
    _cg12 = _Pacemaker_local__Atrig || _Pacemaker_local__Atrig1;
    _g13 = _g14 && !_cg12;
    _g7 = _g11 && _cg7;
    if (_g7) {
      sleepT = (sleepT < (AVI_Constraint - _region0_AVI_timer_t)) ? sleepT : (AVI_Constraint - _region0_AVI_timer_t);
    }
    _cg8 = _Pacemaker_local__Atrig || _Pacemaker_local__Atrig1;
    _g10 = _g7 && !_cg8;
    _g9_e1 = !(_g13 || _g10);
    _g12 = _g7 && _cg8 || _g14 && _cg12;
    _g8 = _g5 || _g144_e1 && !_cg20;
    _g5 = !_g8;
    _g20 = _g18 || _g153_e2;
    _g21 = (_g9_e1 || _g12) && (_g5 || _g20) && (_g12 || _g20);
    _cg22 = _Pacemaker_local__Atrig;
    _g18 = _g21 && _cg22;
    if (_g18) {
      _taken_transitions[1] += 1;
    }
    _g9 = _g21 && !_cg22;
    if (_g9) {
      VP |= true;
      _taken_transitions[2] += 1;
    }
    _g9_e1 = _GO || _g18 || _g9 || _g4 && !_cg4;
    _g19 = _pg49;
    _g19_e2 = _pg53;
    _g22 = !(_g19 || _g19_e2);
    _g23 = _pg29;
    _g4 = _g23 && AS;
    if (_g4) {
      _Pacemaker_local__Atrig2 = true;
    }
    _g24 = _pg139;
    if (_g24) {
      _region1_PVARP_timer_t += deltaT;
    }
    _g47 = _g23 && !AS;
    _cg47 = _region1_PVARP_timer_t >= PVARP_Constraint;
    _g48 = _g47 && _cg47;
    if (_g48) {
      _Pacemaker_local__Atrig3 = true;
    }
    _g40 = _g19_e2 || _g19;
    _cg35 = _region1_PVARP_timer_t < PVARP_Constraint;
    _g34 = _g40 && _cg35;
    if (_g34) {
      sleepT = (sleepT < (PVARP_Constraint - _region1_PVARP_timer_t)) ? sleepT : (PVARP_Constraint - _region1_PVARP_timer_t);
    }
    _cg36 = _Pacemaker_local__Atrig2 || _Pacemaker_local__Atrig3;
    _g35 = _g40 && !_cg35;
    _cg38 = _Pacemaker_local__Atrig2 || _Pacemaker_local__Atrig3;
    _g37 = _g34 && _cg36 || _g35 && _cg38;
    _g44 = !_g23;
    _g48 = _g4 || _g48;
    _g45 = (_g22 || _g37) && (_g44 || _g48) && (_g37 || _g48);
    _cg49 = _Pacemaker_local__Atrig2;
    _g37 = _g45 && !_cg49;
    if (_g37) {
      _taken_transitions[6] += 1;
    }
    _g37_e1 = _GO || _g37 || _g53 || _g52 && !_cg52;
    _g46_e2 = _g28 && _cg28;
    if (_g46_e2) {
      _region1_PVARP_timer_t = 0;
      _taken_transitions[3] += 1;
    }
    _g46 = _g45 && _cg49;
    if (_g46) {
      AR |= true;
      _taken_transitions[5] += 1;
    }
    _g51 = _g46_e2 || _g46;
    if (_g51) {
      _Pacemaker_local__Atrig2 = false;
      _Pacemaker_local__Atrig3 = false;
    }
    _cg31 = _region1_PVARP_timer_t < PVARP_Constraint;
    _g52 = _g51 && _cg31;
    if (_g52) {
      sleepT = (sleepT < (PVARP_Constraint - _region1_PVARP_timer_t)) ? sleepT : (PVARP_Constraint - _region1_PVARP_timer_t);
    }
    _cg32 = _Pacemaker_local__Atrig2 || _Pacemaker_local__Atrig3;
    _g53 = _g52 && !_cg32 || _g34 && !_cg36;
    _g28 = _g51 && !_cg31;
    _cg41 = _Pacemaker_local__Atrig2 || _Pacemaker_local__Atrig3;
    _g49 = _g35 && !_cg38 || _g28 && !_cg41;
    _g29 = _g51 || _g47 && !_cg47;
    _g50 = _pg79;
    _g36 = _pg57;
    _g32 = !(_g50 || _g36);
    _g41 = _pg58;
    _g38 = _g41 && VS;
    if (_g38) {
      _Pacemaker_local__Atrig4 = true;
    }
    _g30 = _g41 && !VS;
    _cg76 = _region2_VRP_timer_t >= VRP_Constraint;
    _g47 = _g30 && _cg76;
    if (_g47) {
      _Pacemaker_local__Atrig5 = true;
    }
    _g63 = _g36 || _g50;
    _cg64 = _region2_VRP_timer_t < VRP_Constraint;
    _g69 = _g63 && _cg64;
    if (_g69) {
      sleepT = (sleepT < (VRP_Constraint - _region2_VRP_timer_t)) ? sleepT : (VRP_Constraint - _region2_VRP_timer_t);
    }
    _cg65 = _Pacemaker_local__Atrig4 || _Pacemaker_local__Atrig5;
    _g64 = _g63 && !_cg64;
    _cg67 = _Pacemaker_local__Atrig4 || _Pacemaker_local__Atrig5;
    _g66 = _g69 && _cg65 || _g64 && _cg67;
    _g73 = !_g41;
    _g77 = _g38 || _g47;
    _g74 = (_g32 || _g66) && (_g73 || _g77) && (_g66 || _g77);
    _cg78 = _Pacemaker_local__Atrig4;
    _g75 = _g74 && !_cg78;
    if (_g75) {
      _taken_transitions[9] += 1;
    }
    _g66 = _GO || _g75 || _g57 && !_cg57;
    _g66_e1 = _g74 && _cg78;
    if (_g66_e1) {
      VR |= true;
      _taken_transitions[8] += 1;
    }
    _g75_e2 = _g58 || _g66_e1;
    if (_g75_e2) {
      _Pacemaker_local__Atrig4 = false;
      _Pacemaker_local__Atrig5 = false;
    }
    _cg60 = _region2_VRP_timer_t < VRP_Constraint;
    _g80 = _g75_e2 && _cg60;
    if (_g80) {
      sleepT = (sleepT < (VRP_Constraint - _region2_VRP_timer_t)) ? sleepT : (VRP_Constraint - _region2_VRP_timer_t);
    }
    _cg61 = _Pacemaker_local__Atrig4 || _Pacemaker_local__Atrig5;
    _g57 = _g80 && !_cg61 || _g69 && !_cg65;
    _g78 = _g75_e2 && !_cg60;
    _cg70 = _Pacemaker_local__Atrig4 || _Pacemaker_local__Atrig5;
    _g79 = _g64 && !_cg67 || _g78 && !_cg70;
    _g58 = _g75_e2 || _g30 && !_cg76;
    _g65 = _pg92;
    _cg97 = A_event;
    _g61 = _g65 && _cg97;
    if (_g61) {
      _Pacemaker_local__Atrig6 = true;
    }
    _g67 = _pg145;
    if (_g67) {
      _region3_AEI_timer_t += deltaT;
    }
    _g70 = _g65 && !_cg97;
    _cg100 = _region3_AEI_timer_t >= AEI_Constraint;
    _g59 = _g70 && _cg100;
    if (_g59) {
      _Pacemaker_local__Atrig7 = true;
    }
    _g76 = _pg99;
    _cg84 = V_event;
    _g97 = _g76 && _cg84;
    if (_g97) {
      _region3_AEI_timer_t = 0;
      _taken_transitions[10] += 1;
      _Pacemaker_local__Atrig6 = false;
      _Pacemaker_local__Atrig7 = false;
    }
    _g91 = _pg90;
    _g94 = _pg93;
    _g91 = _g97 || _g91 || _g94;
    _cg87 = _region3_AEI_timer_t < AEI_Constraint;
    _g94 = _g91 && !_cg87;
    _cg92 = _Pacemaker_local__Atrig6 || _Pacemaker_local__Atrig7;
    _g93 = _g94 && !_cg92;
    _g87 = _g91 && _cg87;
    if (_g87) {
      sleepT = (sleepT < (AEI_Constraint - _region3_AEI_timer_t)) ? sleepT : (AEI_Constraint - _region3_AEI_timer_t);
    }
    _cg88 = _Pacemaker_local__Atrig6 || _Pacemaker_local__Atrig7;
    _g90 = _g87 && !_cg88;
    _g89_e1 = !(_g93 || _g90);
    _g88 = _g87 && _cg88 || _g94 && _cg92;
    _g92 = _g97 || _g70 && !_cg100;
    _g85 = !_g92;
    _g100 = _g61 || _g59;
    _g101 = (_g89_e1 || _g88) && (_g85 || _g100) && (_g88 || _g100);
    _cg102 = _Pacemaker_local__Atrig6;
    _g98 = _g101 && _cg102;
    if (_g98) {
      _taken_transitions[11] += 1;
    }
    _g89_e1 = _g101 && !_cg102;
    if (_g89_e1) {
      AP |= true;
      _taken_transitions[12] += 1;
    }
    _g99 = _GO || _g98 || _g89_e1 || _g76 && !_cg84;
    _g99_e2 = _pg112;
    _g89 = _pg130;
    _g102 = !(_g99_e2 || _g89);
    _g84 = _pg116;
    _cg124 = V_event;
    _g103 = _g84 && _cg124;
    if (_g103) {
      _Pacemaker_local__Atrig8 = true;
    }
    _g104 = _pg148;
    if (_g104) {
      _region4_LRI_timer_t += deltaT;
    }
    _g127 = _g84 && !_cg124;
    _cg127 = _region4_LRI_timer_t >= LRI_Constraint;
    _g128 = _g127 && _cg127;
    if (_g128) {
      _Pacemaker_local__Atrig9 = true;
    }
    _g120 = _g89 || _g99_e2;
    _cg115 = _region4_LRI_timer_t < LRI_Constraint;
    _g114 = _g120 && _cg115;
    if (_g114) {
      sleepT = (sleepT < (LRI_Constraint - _region4_LRI_timer_t)) ? sleepT : (LRI_Constraint - _region4_LRI_timer_t);
    }
    _cg116 = _Pacemaker_local__Atrig8 || _Pacemaker_local__Atrig9;
    _g115 = _g120 && !_cg115;
    _cg118 = _Pacemaker_local__Atrig8 || _Pacemaker_local__Atrig9;
    _g117 = _g114 && _cg116 || _g115 && _cg118;
    _g124 = !_g84;
    _g128 = _g103 || _g128;
    _g125 = (_g102 || _g117) && (_g124 || _g128) && (_g117 || _g128);
    _cg129 = _Pacemaker_local__Atrig8;
    _g117 = _g125 && !_cg129;
    if (_g117) {
      VP |= true;
      _taken_transitions[15] += 1;
    }
    _g126_e2 = _pg126;
    _cg108 = V_event;
    _g126 = _GO || _g117 || _g126_e2 && !_cg108;
    _g117_e1 = _g126_e2 && _cg108;
    if (_g117_e1) {
      _region4_LRI_timer_t = 0;
      _taken_transitions[13] += 1;
    }
    _g131 = _g125 && _cg129;
    if (_g131) {
      _region4_LRI_timer_t = 0;
      _taken_transitions[14] += 1;
    }
    _g108 = _g117_e1 || _g131;
    if (_g108) {
      _Pacemaker_local__Atrig8 = false;
      _Pacemaker_local__Atrig9 = false;
    }
    _cg111 = _region4_LRI_timer_t < LRI_Constraint;
    _g129 = _g108 && _cg111;
    if (_g129) {
      sleepT = (sleepT < (LRI_Constraint - _region4_LRI_timer_t)) ? sleepT : (LRI_Constraint - _region4_LRI_timer_t);
    }
    _cg112 = _Pacemaker_local__Atrig8 || _Pacemaker_local__Atrig9;
    _g130 = _g129 && !_cg112 || _g114 && !_cg116;
    _g109 = _g108 && !_cg111;
    _cg121 = _Pacemaker_local__Atrig8 || _Pacemaker_local__Atrig9;
    _g112 = _g115 && !_cg118 || _g109 && !_cg121;
    _g116 = _g108 || _g127 && !_cg127;
    _g121 = _GO || _g144 || _g135 && !_cg135;
    _g118 = _g155 && _cg156;
    if (_g118) {
      _region5_URI_timer_t = 0;
      _taken_transitions[17] += 1;
    }
    _g127 = _g136 || _g118;
    if (_g127) {
      _Pacemaker_local__Atrig10 = false;
      _Pacemaker_local__Atrig11 = false;
    }
    _cg138 = _region5_URI_timer_t < URI_Constraint;
    _g110 = _g127 && _cg138;
    if (_g110) {
      sleepT = (sleepT < (URI_Constraint - _region5_URI_timer_t)) ? sleepT : (URI_Constraint - _region5_URI_timer_t);
    }
    _cg139 = _Pacemaker_local__Atrig10 || _Pacemaker_local__Atrig11;
    _g135 = _g110 && !_cg139 || _g147 && !_cg143;
    _g158 = _g127 && !_cg138;
    _cg148 = _Pacemaker_local__Atrig10 || _Pacemaker_local__Atrig11;
    _g156 = _g142 && !_cg145 || _g158 && !_cg148;
    _g157 = _g127 || _g154 && !_cg154;
    _g136 = _GO || _g153;
    _g139 = _GO || _g24;
    _g143 = _GO || _g174;
    _g145 = _GO || _g67;
    _g148 = _GO || _g104;
    _g154 = _GO || _g186;
    _reg_VP = VP;
    if (_g202) {
      _reg_AP = AP;
    }
  }

  public void tick() {
    logic();

    _pg143 = _g143;
    _pg66 = _g66;
    _pg8 = _g8;
    _pg154 = _g154;
    _pg121 = _g121;
    _pg156 = _g156;
    _pg135 = _g135;
    _pg157 = _g157;
    _pg136 = _g136;
    _pg202 = _g202;
    _pg37_e1 = _g37_e1;
    _pg9_e1 = _g9_e1;
    _pg10 = _g10;
    _pg13 = _g13;
    _pg49 = _g49;
    _pg53 = _g53;
    _pg29 = _g29;
    _pg139 = _g139;
    _pg79 = _g79;
    _pg57 = _g57;
    _pg58 = _g58;
    _pg92 = _g92;
    _pg145 = _g145;
    _pg99 = _g99;
    _pg90 = _g90;
    _pg93 = _g93;
    _pg112 = _g112;
    _pg130 = _g130;
    _pg116 = _g116;
    _pg148 = _g148;
    _pg126 = _g126;
    _GO = false;
  }
}
