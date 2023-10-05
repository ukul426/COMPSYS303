/*
 * Automatically generated C code by
 * KIELER SCCharts - The Key to Efficient Modeling
 *
 * http://rtsys.informatik.uni-kiel.de/kieler
 */

#include "timing.h"
#include <stdio.h>

#include "Pacemaker.h"

void logic(TickData* d) {
  d->AP = 0;
  d->VP = 0;
  d->V_event = 0;
  d->VR = 0;
  d->A_event = 0;
  d->AR = 0;
  d->_g174 = d->_pg143;
  if (d->_g174) {
    d->_region2_VRP_timer_t += d->deltaT;
  }
  d->_pre_VP = d->_reg_VP;
  d->_g57 = d->_pg66;
  d->_cg57 = d->VS || d->_pre_VP;
  d->_g58 = d->_g57 && d->_cg57;
  if (d->_g58) {
    d->_region2_VRP_timer_t = 0;
    d->V_event |= 1;
    d->_taken_transitions[7] += 1;
  }
  d->_g17 = d->_pg8;
  d->_cg17 = d->V_event;
  d->_g18 = d->_g17 && d->_cg17;
  if (d->_g18) {
    d->_Pacemaker_local__Atrig = 1;
  }
  d->_g186 = d->_pg154;
  if (d->_g186) {
    d->_region5_URI_timer_t += d->deltaT;
  }
  d->_g135 = d->_pg121;
  d->_cg135 = d->V_event;
  d->_g136 = d->_g135 && d->_cg135;
  if (d->_g136) {
    d->_region5_URI_timer_t = 0;
    d->inside_URI = 1;
    d->_taken_transitions[16] += 1;
  }
  d->_g147 = d->_pg156;
  d->_g141 = d->_pg135;
  d->_g144_e1 = !(d->_g147 || d->_g141);
  d->_g151 = d->_pg157;
  d->_cg151 = d->V_event;
  d->_g152 = d->_g151 && d->_cg151;
  if (d->_g152) {
    d->_Pacemaker_local__Atrig10 = 1;
  }
  d->_g154 = d->_g151 && !d->_cg151;
  d->_cg154 = d->_region5_URI_timer_t >= d->URI_Constraint;
  d->_g155 = d->_g154 && d->_cg154;
  if (d->_g155) {
    d->_Pacemaker_local__Atrig11 = 1;
  }
  d->sleepT = 1000.0;
  d->_g141 = d->_g141 || d->_g147;
  d->_cg142 = d->_region5_URI_timer_t < d->URI_Constraint;
  d->_g147 = d->_g141 && d->_cg142;
  if (d->_g147) {
    d->sleepT = (d->sleepT < (d->URI_Constraint - d->_region5_URI_timer_t)) ? d->sleepT : (d->URI_Constraint - d->_region5_URI_timer_t);
  }
  d->_cg143 = d->_Pacemaker_local__Atrig10 || d->_Pacemaker_local__Atrig11;
  d->_g142 = d->_g141 && !d->_cg142;
  d->_cg145 = d->_Pacemaker_local__Atrig10 || d->_Pacemaker_local__Atrig11;
  d->_g144 = d->_g147 && d->_cg143 || d->_g142 && d->_cg145;
  d->_g151 = !d->_g151;
  d->_g152 = d->_g152 || d->_g155;
  d->_g155 = (d->_g144_e1 || d->_g144) && (d->_g151 || d->_g152) && (d->_g144 || d->_g152);
  d->_cg156 = d->_Pacemaker_local__Atrig10;
  d->_g144 = d->_g155 && !d->_cg156;
  if (d->_g144) {
    d->inside_URI = 0;
    d->_taken_transitions[18] += 1;
  }
  d->_g153 = d->_pg136;
  if (d->_g153) {
    d->_region0_AVI_timer_t += d->deltaT;
  }
  d->_g144_e1 = d->_g17 && !d->_cg17;
  d->_cg20 = d->_region0_AVI_timer_t >= d->AVI_Constraint && !d->inside_URI;
  d->_g153_e2 = d->_g144_e1 && d->_cg20;
  if (d->_g153_e2) {
    d->_Pacemaker_local__Atrig1 = 1;
  }
  d->_g17 = d->_pg202;
  d->_g202 = d->_GO || d->_g17;
  if (d->_g202) {
    d->_pre_AP = d->_reg_AP;
  }
  d->_g28 = d->_pg37_e1;
  d->_cg28 = d->VS || d->_pre_VP;
  d->_g52 = d->_g28 && !d->_cg28;
  d->_cg52 = d->AS || d->_pre_AP;
  d->_g53 = d->_g52 && d->_cg52;
  if (d->_g53) {
    d->A_event |= 1;
    d->_taken_transitions[4] += 1;
  }
  d->_g4 = d->_pg9_e1;
  d->_cg4 = d->A_event;
  d->_g5 = d->_g4 && d->_cg4;
  if (d->_g5) {
    d->_region0_AVI_timer_t = 0;
    d->_taken_transitions[0] += 1;
    d->_Pacemaker_local__Atrig = 0;
    d->_Pacemaker_local__Atrig1 = 0;
  }
  d->_g11 = d->_pg10;
  d->_g14 = d->_pg13;
  d->_g11 = d->_g5 || d->_g11 || d->_g14;
  d->_cg7 = d->_region0_AVI_timer_t < d->AVI_Constraint;
  d->_g14 = d->_g11 && !d->_cg7;
  d->_cg12 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g13 = d->_g14 && !d->_cg12;
  d->_g7 = d->_g11 && d->_cg7;
  if (d->_g7) {
    d->sleepT = (d->sleepT < (d->AVI_Constraint - d->_region0_AVI_timer_t)) ? d->sleepT : (d->AVI_Constraint - d->_region0_AVI_timer_t);
  }
  d->_cg8 = d->_Pacemaker_local__Atrig || d->_Pacemaker_local__Atrig1;
  d->_g10 = d->_g7 && !d->_cg8;
  d->_g9_e1 = !(d->_g13 || d->_g10);
  d->_g12 = d->_g7 && d->_cg8 || d->_g14 && d->_cg12;
  d->_g8 = d->_g5 || d->_g144_e1 && !d->_cg20;
  d->_g5 = !d->_g8;
  d->_g20 = d->_g18 || d->_g153_e2;
  d->_g21 = (d->_g9_e1 || d->_g12) && (d->_g5 || d->_g20) && (d->_g12 || d->_g20);
  d->_cg22 = d->_Pacemaker_local__Atrig;
  d->_g18 = d->_g21 && d->_cg22;
  if (d->_g18) {
    d->_taken_transitions[1] += 1;
  }
  d->_g9 = d->_g21 && !d->_cg22;
  if (d->_g9) {
    d->VP |= 1;
    d->_taken_transitions[2] += 1;
  }
  d->_g9_e1 = d->_GO || d->_g18 || d->_g9 || d->_g4 && !d->_cg4;
  d->_g19 = d->_pg49;
  d->_g19_e2 = d->_pg53;
  d->_g22 = !(d->_g19 || d->_g19_e2);
  d->_g23 = d->_pg29;
  d->_g4 = d->_g23 && d->AS;
  if (d->_g4) {
    d->_Pacemaker_local__Atrig2 = 1;
  }
  d->_g24 = d->_pg139;
  if (d->_g24) {
    d->_region1_PVARP_timer_t += d->deltaT;
  }
  d->_g47 = d->_g23 && !d->AS;
  d->_cg47 = d->_region1_PVARP_timer_t >= d->PVARP_Constraint;
  d->_g48 = d->_g47 && d->_cg47;
  if (d->_g48) {
    d->_Pacemaker_local__Atrig3 = 1;
  }
  d->_g40 = d->_g19_e2 || d->_g19;
  d->_cg35 = d->_region1_PVARP_timer_t < d->PVARP_Constraint;
  d->_g34 = d->_g40 && d->_cg35;
  if (d->_g34) {
    d->sleepT = (d->sleepT < (d->PVARP_Constraint - d->_region1_PVARP_timer_t)) ? d->sleepT : (d->PVARP_Constraint - d->_region1_PVARP_timer_t);
  }
  d->_cg36 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g35 = d->_g40 && !d->_cg35;
  d->_cg38 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g37 = d->_g34 && d->_cg36 || d->_g35 && d->_cg38;
  d->_g44 = !d->_g23;
  d->_g48 = d->_g4 || d->_g48;
  d->_g45 = (d->_g22 || d->_g37) && (d->_g44 || d->_g48) && (d->_g37 || d->_g48);
  d->_cg49 = d->_Pacemaker_local__Atrig2;
  d->_g37 = d->_g45 && !d->_cg49;
  if (d->_g37) {
    d->_taken_transitions[6] += 1;
  }
  d->_g37_e1 = d->_GO || d->_g37 || d->_g53 || d->_g52 && !d->_cg52;
  d->_g46_e2 = d->_g28 && d->_cg28;
  if (d->_g46_e2) {
    d->_region1_PVARP_timer_t = 0;
    d->_taken_transitions[3] += 1;
  }
  d->_g46 = d->_g45 && d->_cg49;
  if (d->_g46) {
    d->AR |= 1;
    d->_taken_transitions[5] += 1;
  }
  d->_g51 = d->_g46_e2 || d->_g46;
  if (d->_g51) {
    d->_Pacemaker_local__Atrig2 = 0;
    d->_Pacemaker_local__Atrig3 = 0;
  }
  d->_cg31 = d->_region1_PVARP_timer_t < d->PVARP_Constraint;
  d->_g52 = d->_g51 && d->_cg31;
  if (d->_g52) {
    d->sleepT = (d->sleepT < (d->PVARP_Constraint - d->_region1_PVARP_timer_t)) ? d->sleepT : (d->PVARP_Constraint - d->_region1_PVARP_timer_t);
  }
  d->_cg32 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g53 = d->_g52 && !d->_cg32 || d->_g34 && !d->_cg36;
  d->_g28 = d->_g51 && !d->_cg31;
  d->_cg41 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g49 = d->_g35 && !d->_cg38 || d->_g28 && !d->_cg41;
  d->_g29 = d->_g51 || d->_g47 && !d->_cg47;
  d->_g50 = d->_pg79;
  d->_g36 = d->_pg57;
  d->_g32 = !(d->_g50 || d->_g36);
  d->_g41 = d->_pg58;
  d->_g38 = d->_g41 && d->VS;
  if (d->_g38) {
    d->_Pacemaker_local__Atrig4 = 1;
  }
  d->_g30 = d->_g41 && !d->VS;
  d->_cg76 = d->_region2_VRP_timer_t >= d->VRP_Constraint;
  d->_g47 = d->_g30 && d->_cg76;
  if (d->_g47) {
    d->_Pacemaker_local__Atrig5 = 1;
  }
  d->_g63 = d->_g36 || d->_g50;
  d->_cg64 = d->_region2_VRP_timer_t < d->VRP_Constraint;
  d->_g69 = d->_g63 && d->_cg64;
  if (d->_g69) {
    d->sleepT = (d->sleepT < (d->VRP_Constraint - d->_region2_VRP_timer_t)) ? d->sleepT : (d->VRP_Constraint - d->_region2_VRP_timer_t);
  }
  d->_cg65 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g64 = d->_g63 && !d->_cg64;
  d->_cg67 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g66 = d->_g69 && d->_cg65 || d->_g64 && d->_cg67;
  d->_g73 = !d->_g41;
  d->_g77 = d->_g38 || d->_g47;
  d->_g74 = (d->_g32 || d->_g66) && (d->_g73 || d->_g77) && (d->_g66 || d->_g77);
  d->_cg78 = d->_Pacemaker_local__Atrig4;
  d->_g75 = d->_g74 && !d->_cg78;
  if (d->_g75) {
    d->_taken_transitions[9] += 1;
  }
  d->_g66 = d->_GO || d->_g75 || d->_g57 && !d->_cg57;
  d->_g66_e1 = d->_g74 && d->_cg78;
  if (d->_g66_e1) {
    d->VR |= 1;
    d->_taken_transitions[8] += 1;
  }
  d->_g75_e2 = d->_g58 || d->_g66_e1;
  if (d->_g75_e2) {
    d->_Pacemaker_local__Atrig4 = 0;
    d->_Pacemaker_local__Atrig5 = 0;
  }
  d->_cg60 = d->_region2_VRP_timer_t < d->VRP_Constraint;
  d->_g80 = d->_g75_e2 && d->_cg60;
  if (d->_g80) {
    d->sleepT = (d->sleepT < (d->VRP_Constraint - d->_region2_VRP_timer_t)) ? d->sleepT : (d->VRP_Constraint - d->_region2_VRP_timer_t);
  }
  d->_cg61 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g57 = d->_g80 && !d->_cg61 || d->_g69 && !d->_cg65;
  d->_g78 = d->_g75_e2 && !d->_cg60;
  d->_cg70 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g79 = d->_g64 && !d->_cg67 || d->_g78 && !d->_cg70;
  d->_g58 = d->_g75_e2 || d->_g30 && !d->_cg76;
  d->_g65 = d->_pg92;
  d->_cg97 = d->A_event;
  d->_g61 = d->_g65 && d->_cg97;
  if (d->_g61) {
    d->_Pacemaker_local__Atrig6 = 1;
  }
  d->_g67 = d->_pg145;
  if (d->_g67) {
    d->_region3_AEI_timer_t += d->deltaT;
  }
  d->_g70 = d->_g65 && !d->_cg97;
  d->_cg100 = d->_region3_AEI_timer_t >= d->AEI_Constraint;
  d->_g59 = d->_g70 && d->_cg100;
  if (d->_g59) {
    d->_Pacemaker_local__Atrig7 = 1;
  }
  d->_g76 = d->_pg99;
  d->_cg84 = d->V_event;
  d->_g97 = d->_g76 && d->_cg84;
  if (d->_g97) {
    d->_region3_AEI_timer_t = 0;
    d->_taken_transitions[10] += 1;
    d->_Pacemaker_local__Atrig6 = 0;
    d->_Pacemaker_local__Atrig7 = 0;
  }
  d->_g91 = d->_pg90;
  d->_g94 = d->_pg93;
  d->_g91 = d->_g97 || d->_g91 || d->_g94;
  d->_cg87 = d->_region3_AEI_timer_t < d->AEI_Constraint;
  d->_g94 = d->_g91 && !d->_cg87;
  d->_cg92 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g93 = d->_g94 && !d->_cg92;
  d->_g87 = d->_g91 && d->_cg87;
  if (d->_g87) {
    d->sleepT = (d->sleepT < (d->AEI_Constraint - d->_region3_AEI_timer_t)) ? d->sleepT : (d->AEI_Constraint - d->_region3_AEI_timer_t);
  }
  d->_cg88 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g90 = d->_g87 && !d->_cg88;
  d->_g89_e1 = !(d->_g93 || d->_g90);
  d->_g88 = d->_g87 && d->_cg88 || d->_g94 && d->_cg92;
  d->_g92 = d->_g97 || d->_g70 && !d->_cg100;
  d->_g85 = !d->_g92;
  d->_g100 = d->_g61 || d->_g59;
  d->_g101 = (d->_g89_e1 || d->_g88) && (d->_g85 || d->_g100) && (d->_g88 || d->_g100);
  d->_cg102 = d->_Pacemaker_local__Atrig6;
  d->_g98 = d->_g101 && d->_cg102;
  if (d->_g98) {
    d->_taken_transitions[11] += 1;
  }
  d->_g89_e1 = d->_g101 && !d->_cg102;
  if (d->_g89_e1) {
    d->AP |= 1;
    d->_taken_transitions[12] += 1;
  }
  d->_g99 = d->_GO || d->_g98 || d->_g89_e1 || d->_g76 && !d->_cg84;
  d->_g99_e2 = d->_pg112;
  d->_g89 = d->_pg130;
  d->_g102 = !(d->_g99_e2 || d->_g89);
  d->_g84 = d->_pg116;
  d->_cg124 = d->V_event;
  d->_g103 = d->_g84 && d->_cg124;
  if (d->_g103) {
    d->_Pacemaker_local__Atrig8 = 1;
  }
  d->_g104 = d->_pg148;
  if (d->_g104) {
    d->_region4_LRI_timer_t += d->deltaT;
  }
  d->_g127 = d->_g84 && !d->_cg124;
  d->_cg127 = d->_region4_LRI_timer_t >= d->LRI_Constraint;
  d->_g128 = d->_g127 && d->_cg127;
  if (d->_g128) {
    d->_Pacemaker_local__Atrig9 = 1;
  }
  d->_g120 = d->_g89 || d->_g99_e2;
  d->_cg115 = d->_region4_LRI_timer_t < d->LRI_Constraint;
  d->_g114 = d->_g120 && d->_cg115;
  if (d->_g114) {
    d->sleepT = (d->sleepT < (d->LRI_Constraint - d->_region4_LRI_timer_t)) ? d->sleepT : (d->LRI_Constraint - d->_region4_LRI_timer_t);
  }
  d->_cg116 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9;
  d->_g115 = d->_g120 && !d->_cg115;
  d->_cg118 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9;
  d->_g117 = d->_g114 && d->_cg116 || d->_g115 && d->_cg118;
  d->_g124 = !d->_g84;
  d->_g128 = d->_g103 || d->_g128;
  d->_g125 = (d->_g102 || d->_g117) && (d->_g124 || d->_g128) && (d->_g117 || d->_g128);
  d->_cg129 = d->_Pacemaker_local__Atrig8;
  d->_g117 = d->_g125 && !d->_cg129;
  if (d->_g117) {
    d->VP |= 1;
    d->_taken_transitions[15] += 1;
  }
  d->_g126_e2 = d->_pg126;
  d->_cg108 = d->V_event;
  d->_g126 = d->_GO || d->_g117 || d->_g126_e2 && !d->_cg108;
  d->_g117_e1 = d->_g126_e2 && d->_cg108;
  if (d->_g117_e1) {
    d->_region4_LRI_timer_t = 0;
    d->_taken_transitions[13] += 1;
  }
  d->_g131 = d->_g125 && d->_cg129;
  if (d->_g131) {
    d->_region4_LRI_timer_t = 0;
    d->_taken_transitions[14] += 1;
  }
  d->_g108 = d->_g117_e1 || d->_g131;
  if (d->_g108) {
    d->_Pacemaker_local__Atrig8 = 0;
    d->_Pacemaker_local__Atrig9 = 0;
  }
  d->_cg111 = d->_region4_LRI_timer_t < d->LRI_Constraint;
  d->_g129 = d->_g108 && d->_cg111;
  if (d->_g129) {
    d->sleepT = (d->sleepT < (d->LRI_Constraint - d->_region4_LRI_timer_t)) ? d->sleepT : (d->LRI_Constraint - d->_region4_LRI_timer_t);
  }
  d->_cg112 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9;
  d->_g130 = d->_g129 && !d->_cg112 || d->_g114 && !d->_cg116;
  d->_g109 = d->_g108 && !d->_cg111;
  d->_cg121 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9;
  d->_g112 = d->_g115 && !d->_cg118 || d->_g109 && !d->_cg121;
  d->_g116 = d->_g108 || d->_g127 && !d->_cg127;
  d->_g121 = d->_GO || d->_g144 || d->_g135 && !d->_cg135;
  d->_g118 = d->_g155 && d->_cg156;
  if (d->_g118) {
    d->_region5_URI_timer_t = 0;
    d->_taken_transitions[17] += 1;
  }
  d->_g127 = d->_g136 || d->_g118;
  if (d->_g127) {
    d->_Pacemaker_local__Atrig10 = 0;
    d->_Pacemaker_local__Atrig11 = 0;
  }
  d->_cg138 = d->_region5_URI_timer_t < d->URI_Constraint;
  d->_g110 = d->_g127 && d->_cg138;
  if (d->_g110) {
    d->sleepT = (d->sleepT < (d->URI_Constraint - d->_region5_URI_timer_t)) ? d->sleepT : (d->URI_Constraint - d->_region5_URI_timer_t);
  }
  d->_cg139 = d->_Pacemaker_local__Atrig10 || d->_Pacemaker_local__Atrig11;
  d->_g135 = d->_g110 && !d->_cg139 || d->_g147 && !d->_cg143;
  d->_g158 = d->_g127 && !d->_cg138;
  d->_cg148 = d->_Pacemaker_local__Atrig10 || d->_Pacemaker_local__Atrig11;
  d->_g156 = d->_g142 && !d->_cg145 || d->_g158 && !d->_cg148;
  d->_g157 = d->_g127 || d->_g154 && !d->_cg154;
  d->_g136 = d->_GO || d->_g153;
  d->_g139 = d->_GO || d->_g24;
  d->_g143 = d->_GO || d->_g174;
  d->_g145 = d->_GO || d->_g67;
  d->_g148 = d->_GO || d->_g104;
  d->_g154 = d->_GO || d->_g186;
  d->_reg_VP = d->VP;
  if (d->_g202) {
    d->_reg_AP = d->AP;
  }
}

void reset(TickData* d) {
  d->_GO = 1;
  d->_TERM = 0;
  d->AVI_Constraint = AVI_VALUE;
  d->PVARP_Constraint = PVARP_VALUE;
  d->VRP_Constraint = VRP_VALUE;
  d->AEI_Constraint = AEI_VALUE;
  d->LRI_Constraint = LRI_VALUE;
  d->URI_Constraint = URI_VALUE;
  d->_region0_AVI_timer_t = 0;
  d->_region1_PVARP_timer_t = 0;
  d->_region2_VRP_timer_t = 0;
  d->_region3_AEI_timer_t = 0;
  d->_region4_LRI_timer_t = 0;
  d->_region5_URI_timer_t = 0;
  d->deltaT = 0.0;
  d->sleepT = 0.0;
  d->_reg_VP = 0;
  d->_reg_AP = 0;
  d->_taken_transitions[0] = 0;
  d->_taken_transitions[1] = 0;
  d->_taken_transitions[2] = 0;
  d->_taken_transitions[3] = 0;
  d->_taken_transitions[4] = 0;
  d->_taken_transitions[5] = 0;
  d->_taken_transitions[6] = 0;
  d->_taken_transitions[7] = 0;
  d->_taken_transitions[8] = 0;
  d->_taken_transitions[9] = 0;
  d->_taken_transitions[10] = 0;
  d->_taken_transitions[11] = 0;
  d->_taken_transitions[12] = 0;
  d->_taken_transitions[13] = 0;
  d->_taken_transitions[14] = 0;
  d->_taken_transitions[15] = 0;
  d->_taken_transitions[16] = 0;
  d->_taken_transitions[17] = 0;
  d->_taken_transitions[18] = 0;
  d->_pg143 = 0;
  d->_pg66 = 0;
  d->_pg8 = 0;
  d->_pg154 = 0;
  d->_pg121 = 0;
  d->_pg156 = 0;
  d->_pg135 = 0;
  d->_pg157 = 0;
  d->_pg136 = 0;
  d->_pg202 = 0;
  d->_pg37_e1 = 0;
  d->_pg9_e1 = 0;
  d->_pg10 = 0;
  d->_pg13 = 0;
  d->_pg49 = 0;
  d->_pg53 = 0;
  d->_pg29 = 0;
  d->_pg139 = 0;
  d->_pg79 = 0;
  d->_pg57 = 0;
  d->_pg58 = 0;
  d->_pg92 = 0;
  d->_pg145 = 0;
  d->_pg99 = 0;
  d->_pg90 = 0;
  d->_pg93 = 0;
  d->_pg112 = 0;
  d->_pg130 = 0;
  d->_pg116 = 0;
  d->_pg148 = 0;
  d->_pg126 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg143 = d->_g143;
  d->_pg66 = d->_g66;
  d->_pg8 = d->_g8;
  d->_pg154 = d->_g154;
  d->_pg121 = d->_g121;
  d->_pg156 = d->_g156;
  d->_pg135 = d->_g135;
  d->_pg157 = d->_g157;
  d->_pg136 = d->_g136;
  d->_pg202 = d->_g202;
  d->_pg37_e1 = d->_g37_e1;
  d->_pg9_e1 = d->_g9_e1;
  d->_pg10 = d->_g10;
  d->_pg13 = d->_g13;
  d->_pg49 = d->_g49;
  d->_pg53 = d->_g53;
  d->_pg29 = d->_g29;
  d->_pg139 = d->_g139;
  d->_pg79 = d->_g79;
  d->_pg57 = d->_g57;
  d->_pg58 = d->_g58;
  d->_pg92 = d->_g92;
  d->_pg145 = d->_g145;
  d->_pg99 = d->_g99;
  d->_pg90 = d->_g90;
  d->_pg93 = d->_g93;
  d->_pg112 = d->_g112;
  d->_pg130 = d->_g130;
  d->_pg116 = d->_g116;
  d->_pg148 = d->_g148;
  d->_pg126 = d->_g126;
  d->_GO = 0;
}
