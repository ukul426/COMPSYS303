/*
 * Pacemaker.c
 *
 *  Created on: 5/10/2023
 *      Author: dwit264
 */

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
  d->_g170 = d->_pg139;
  if (d->_g170) {
    d->_region2_VRP_timer_t += d->deltaT;
  }
  d->_pre_VP = d->_reg_VP;
  d->_g55 = d->_pg64_e1;
  d->_cg55 = d->VS || d->_pre_VP;
  d->_g56 = d->_g55 && d->_cg55;
  if (d->_g56) {
    d->_region2_VRP_timer_t = 0;
    d->V_event |= 1;
  }
  d->_g17 = d->_pg8;
  d->_cg17 = d->V_event;
  d->_g18 = d->_g17 && d->_cg17;
  if (d->_g18) {
    d->_Pacemaker_local__Atrig = 1;
  }
  d->_g182 = d->_pg150;
  if (d->_g182) {
    d->_region5_URI_timer_t += d->deltaT;
  }
  d->_g131 = d->_pg117;
  d->_cg131 = d->V_event;
  d->_g132 = d->_g131 && d->_cg131;
  if (d->_g132) {
    d->_region5_URI_timer_t = 0;
    d->inside_URI = 1;
  }
  d->_g143 = d->_pg152;
  d->_g137 = d->_pg131;
  d->_g140_e1 = !(d->_g143 || d->_g137);
  d->_g147 = d->_pg153;
  d->_cg147 = d->V_event;
  d->_g148 = d->_g147 && d->_cg147;
  if (d->_g148) {
    d->_Pacemaker_local__Atrig10 = 1;
  }
  d->_g150 = d->_g147 && !d->_cg147;
  d->_cg150 = d->_region5_URI_timer_t >= d->URI_Constraint;
  d->_g151 = d->_g150 && d->_cg150;
  if (d->_g151) {
    d->_Pacemaker_local__Atrig11 = 1;
  }
  d->sleepT = 1000.0;
  d->_g143 = d->_g137 || d->_g143;
  d->_cg138 = d->_region5_URI_timer_t < d->URI_Constraint;
  d->_g137 = d->_g143 && d->_cg138;
  if (d->_g137) {
    d->sleepT = (d->sleepT < (d->URI_Constraint - d->_region5_URI_timer_t)) ? d->sleepT : (d->URI_Constraint - d->_region5_URI_timer_t);
  }
  d->_cg139 = d->_Pacemaker_local__Atrig10 || d->_Pacemaker_local__Atrig11;
  d->_g138 = d->_g143 && !d->_cg138;
  d->_cg141 = d->_Pacemaker_local__Atrig10 || d->_Pacemaker_local__Atrig11;
  d->_g140 = d->_g137 && d->_cg139 || d->_g138 && d->_cg141;
  d->_g147 = !d->_g147;
  d->_g151 = d->_g148 || d->_g151;
  d->_g148 = (d->_g140_e1 || d->_g140) && (d->_g147 || d->_g151) && (d->_g140 || d->_g151);
  d->_cg152 = d->_Pacemaker_local__Atrig10;
  d->_g149_e2 = d->_g148 && !d->_cg152;
  if (d->_g149_e2) {
    d->inside_URI = 0;
  }
  d->_g140_e1 = d->_pg132;
  if (d->_g140_e1) {
    d->_region0_AVI_timer_t += d->deltaT;
  }
  d->_g149 = d->_g17 && !d->_cg17;
  d->_cg20 = d->_region0_AVI_timer_t >= d->AVI_Constraint && !d->inside_URI;
  d->_g140 = d->_g149 && d->_cg20;
  if (d->_g140) {
    d->_Pacemaker_local__Atrig1 = 1;
  }
  d->_g17 = d->_pg195;
  d->_g195 = d->_GO || d->_g17;
  if (d->_g195) {
    d->_pre_AP = d->_reg_AP;
  }
  d->_g27 = d->_pg45_e2;
  d->_cg27 = d->VS || d->_pre_VP;
  d->_g50 = d->_g27 && !d->_cg27;
  d->_cg50 = d->AS || d->_pre_AP;
  d->_g51 = d->_g50 && d->_cg50;
  if (d->_g51) {
    d->A_event |= 1;
  }
  d->_g4 = d->_pg9;
  d->_cg4 = d->A_event;
  d->_g5 = d->_g4 && d->_cg4;
  if (d->_g5) {
    d->_region0_AVI_timer_t = 0;
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
  d->_g8 = d->_g5 || d->_g149 && !d->_cg20;
  d->_g5 = !d->_g8;
  d->_g20 = d->_g18 || d->_g140;
  d->_g21 = (d->_g9_e1 || d->_g12) && (d->_g5 || d->_g20) && (d->_g12 || d->_g20);
  d->_cg22 = d->_Pacemaker_local__Atrig;
  d->_g18 = d->_g21 && !d->_cg22;
  if (d->_g18) {
    d->VP |= 1;
  }
  d->_g9 = d->_GO || d->_g21 && d->_cg22 || d->_g18 || d->_g4 && !d->_cg4;
  d->_g9_e1 = d->_pg48;
  d->_g19 = d->_pg50;
  d->_g19_e2 = !(d->_g9_e1 || d->_g19);
  d->_g22 = d->_pg49;
  d->_g23 = d->_g22 && d->AS;
  if (d->_g23) {
    d->_Pacemaker_local__Atrig2 = 1;
  }
  d->_g4 = d->_pg135;
  if (d->_g4) {
    d->_region1_PVARP_timer_t += d->deltaT;
  }
  d->_g46 = d->_g22 && !d->AS;
  d->_cg46 = d->_region1_PVARP_timer_t >= d->PVARP_Constraint;
  d->_g47 = d->_g46 && d->_cg46;
  if (d->_g47) {
    d->_Pacemaker_local__Atrig3 = 1;
  }
  d->_g33 = d->_g19 || d->_g9_e1;
  d->_cg34 = d->_region1_PVARP_timer_t < d->PVARP_Constraint;
  d->_g39 = d->_g33 && d->_cg34;
  if (d->_g39) {
    d->sleepT = (d->sleepT < (d->PVARP_Constraint - d->_region1_PVARP_timer_t)) ? d->sleepT : (d->PVARP_Constraint - d->_region1_PVARP_timer_t);
  }
  d->_cg35 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g34 = d->_g33 && !d->_cg34;
  d->_cg37 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g36 = d->_g39 && d->_cg35 || d->_g34 && d->_cg37;
  d->_g43 = !d->_g22;
  d->_g44 = d->_g23 || d->_g47;
  d->_g47 = (d->_g19_e2 || d->_g36) && (d->_g43 || d->_g44) && (d->_g36 || d->_g44);
  d->_cg48 = d->_Pacemaker_local__Atrig2;
  d->_g45_e2 = d->_GO || d->_g47 && !d->_cg48 || d->_g51 || d->_g50 && !d->_cg50;
  d->_g36_e1 = d->_g27 && d->_cg27;
  if (d->_g36_e1) {
    d->_region1_PVARP_timer_t = 0;
  }
  d->_g45 = d->_g47 && d->_cg48;
  if (d->_g45) {
    d->AR |= 1;
  }
  d->_g36 = d->_g36_e1 || d->_g45;
  if (d->_g36) {
    d->_Pacemaker_local__Atrig2 = 0;
    d->_Pacemaker_local__Atrig3 = 0;
  }
  d->_cg30 = d->_region1_PVARP_timer_t < d->PVARP_Constraint;
  d->_g51 = d->_g36 && d->_cg30;
  if (d->_g51) {
    d->sleepT = (d->sleepT < (d->PVARP_Constraint - d->_region1_PVARP_timer_t)) ? d->sleepT : (d->PVARP_Constraint - d->_region1_PVARP_timer_t);
  }
  d->_cg31 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g50 = d->_g51 && !d->_cg31 || d->_g39 && !d->_cg35;
  d->_g27 = d->_g36 && !d->_cg30;
  d->_cg40 = d->_Pacemaker_local__Atrig2 || d->_Pacemaker_local__Atrig3;
  d->_g48 = d->_g34 && !d->_cg37 || d->_g27 && !d->_cg40;
  d->_g49 = d->_g36 || d->_g46 && !d->_cg46;
  d->_g28 = d->_pg77;
  d->_g35 = d->_pg55;
  d->_g31 = !(d->_g28 || d->_g35);
  d->_g40 = d->_pg56;
  d->_g37 = d->_g40 && d->VS;
  if (d->_g37) {
    d->_Pacemaker_local__Atrig4 = 1;
  }
  d->_g46 = d->_g40 && !d->VS;
  d->_cg74 = d->_region2_VRP_timer_t >= d->VRP_Constraint;
  d->_g29 = d->_g46 && d->_cg74;
  if (d->_g29) {
    d->_Pacemaker_local__Atrig5 = 1;
  }
  d->_g67 = d->_g35 || d->_g28;
  d->_cg62 = d->_region2_VRP_timer_t < d->VRP_Constraint;
  d->_g61 = d->_g67 && d->_cg62;
  if (d->_g61) {
    d->sleepT = (d->sleepT < (d->VRP_Constraint - d->_region2_VRP_timer_t)) ? d->sleepT : (d->VRP_Constraint - d->_region2_VRP_timer_t);
  }
  d->_cg63 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g62 = d->_g67 && !d->_cg62;
  d->_cg65 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g64 = d->_g61 && d->_cg63 || d->_g62 && d->_cg65;
  d->_g71 = !d->_g40;
  d->_g75 = d->_g37 || d->_g29;
  d->_g72 = (d->_g31 || d->_g64) && (d->_g71 || d->_g75) && (d->_g64 || d->_g75);
  d->_cg76 = d->_Pacemaker_local__Atrig4;
  d->_g64_e1 = d->_GO || d->_g72 && !d->_cg76 || d->_g55 && !d->_cg55;
  d->_g73 = d->_g72 && d->_cg76;
  if (d->_g73) {
    d->VR |= 1;
  }
  d->_g64 = d->_g56 || d->_g73;
  if (d->_g64) {
    d->_Pacemaker_local__Atrig4 = 0;
    d->_Pacemaker_local__Atrig5 = 0;
  }
  d->_cg58 = d->_region2_VRP_timer_t < d->VRP_Constraint;
  d->_g73_e2 = d->_g64 && d->_cg58;
  if (d->_g73_e2) {
    d->sleepT = (d->sleepT < (d->VRP_Constraint - d->_region2_VRP_timer_t)) ? d->sleepT : (d->VRP_Constraint - d->_region2_VRP_timer_t);
  }
  d->_cg59 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g55 = d->_g73_e2 && !d->_cg59 || d->_g61 && !d->_cg63;
  d->_g76 = d->_g64 && !d->_cg58;
  d->_cg68 = d->_Pacemaker_local__Atrig4 || d->_Pacemaker_local__Atrig5;
  d->_g77 = d->_g62 && !d->_cg65 || d->_g76 && !d->_cg68;
  d->_g56 = d->_g64 || d->_g46 && !d->_cg74;
  d->_g59 = d->_pg85;
  d->_cg94 = d->A_event;
  d->_g63 = d->_g59 && d->_cg94;
  if (d->_g63) {
    d->_Pacemaker_local__Atrig6 = 1;
  }
  d->_g68 = d->_pg141;
  if (d->_g68) {
    d->_region3_AEI_timer_t += d->deltaT;
  }
  d->_g65 = d->_g59 && !d->_cg94;
  d->_cg97 = d->_region3_AEI_timer_t >= d->AEI_Constraint;
  d->_g74 = d->_g65 && d->_cg97;
  if (d->_g74) {
    d->_Pacemaker_local__Atrig7 = 1;
  }
  d->_g57 = d->_pg96;
  d->_cg81 = d->V_event;
  d->_g94 = d->_g57 && d->_cg81;
  if (d->_g94) {
    d->_region3_AEI_timer_t = 0;
    d->_Pacemaker_local__Atrig6 = 0;
    d->_Pacemaker_local__Atrig7 = 0;
  }
  d->_g88 = d->_pg87;
  d->_g91 = d->_pg90;
  d->_g91 = d->_g94 || d->_g88 || d->_g91;
  d->_cg84 = d->_region3_AEI_timer_t < d->AEI_Constraint;
  d->_g88 = d->_g91 && !d->_cg84;
  d->_cg89 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g90 = d->_g88 && !d->_cg89;
  d->_g84 = d->_g91 && d->_cg84;
  if (d->_g84) {
    d->sleepT = (d->sleepT < (d->AEI_Constraint - d->_region3_AEI_timer_t)) ? d->sleepT : (d->AEI_Constraint - d->_region3_AEI_timer_t);
  }
  d->_cg85 = d->_Pacemaker_local__Atrig6 || d->_Pacemaker_local__Atrig7;
  d->_g87 = d->_g84 && !d->_cg85;
  d->_g86_e1 = !(d->_g90 || d->_g87);
  d->_g89 = d->_g84 && d->_cg85 || d->_g88 && d->_cg89;
  d->_g85 = d->_g94 || d->_g65 && !d->_cg97;
  d->_g97 = !d->_g85;
  d->_g82 = d->_g63 || d->_g74;
  d->_g95 = (d->_g86_e1 || d->_g89) && (d->_g97 || d->_g82) && (d->_g89 || d->_g82);
  d->_cg99 = d->_Pacemaker_local__Atrig6;
  d->_g98 = d->_g95 && !d->_cg99;
  if (d->_g98) {
    d->AP |= 1;
  }
  d->_g96 = d->_GO || d->_g95 && d->_cg99 || d->_g98 || d->_g57 && !d->_cg81;
  d->_g86 = d->_pg112;
  d->_g86_e1 = d->_pg105;
  d->_g96_e2 = !(d->_g86 || d->_g86_e1);
  d->_g99 = d->_pg108;
  d->_cg120 = d->V_event;
  d->_g81 = d->_g99 && d->_cg120;
  if (d->_g81) {
    d->_Pacemaker_local__Atrig8 = 1;
  }
  d->_g100 = d->_pg144;
  if (d->_g100) {
    d->_region4_LRI_timer_t += d->deltaT;
  }
  d->_g123 = d->_g99 && !d->_cg120;
  d->_cg123 = d->_region4_LRI_timer_t >= d->LRI_Constraint;
  d->_g124 = d->_g123 && d->_cg123;
  if (d->_g124) {
    d->_Pacemaker_local__Atrig9 = 1;
  }
  d->_g116 = d->_g86_e1 || d->_g86;
  d->_cg111 = d->_region4_LRI_timer_t < d->LRI_Constraint;
  d->_g110 = d->_g116 && d->_cg111;
  if (d->_g110) {
    d->sleepT = (d->sleepT < (d->LRI_Constraint - d->_region4_LRI_timer_t)) ? d->sleepT : (d->LRI_Constraint - d->_region4_LRI_timer_t);
  }
  d->_cg112 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9;
  d->_g111 = d->_g116 && !d->_cg111;
  d->_cg114 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9;
  d->_g113 = d->_g110 && d->_cg112 || d->_g111 && d->_cg114;
  d->_g120 = !d->_g99;
  d->_g124 = d->_g81 || d->_g124;
  d->_g121 = (d->_g96_e2 || d->_g113) && (d->_g120 || d->_g124) && (d->_g113 || d->_g124);
  d->_cg125 = d->_Pacemaker_local__Atrig8;
  d->_g113 = d->_g121 && !d->_cg125;
  if (d->_g113) {
    d->VP |= 1;
  }
  d->_g113_e1 = d->_pg122;
  d->_cg104 = d->V_event;
  d->_g122 = d->_GO || d->_g113 || d->_g113_e1 && !d->_cg104;
  d->_g122_e2 = d->_g113_e1 && d->_cg104;
  if (d->_g122_e2) {
    d->_region4_LRI_timer_t = 0;
  }
  d->_g127 = d->_g121 && d->_cg125;
  if (d->_g127) {
    d->_region4_LRI_timer_t = 0;
  }
  d->_g104 = d->_g122_e2 || d->_g127;
  if (d->_g104) {
    d->_Pacemaker_local__Atrig8 = 0;
    d->_Pacemaker_local__Atrig9 = 0;
  }
  d->_cg107 = d->_region4_LRI_timer_t < d->LRI_Constraint;
  d->_g125 = d->_g104 && d->_cg107;
  if (d->_g125) {
    d->sleepT = (d->sleepT < (d->LRI_Constraint - d->_region4_LRI_timer_t)) ? d->sleepT : (d->LRI_Constraint - d->_region4_LRI_timer_t);
  }
  d->_cg108 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9;
  d->_g105 = d->_g125 && !d->_cg108 || d->_g110 && !d->_cg112;
  d->_g126 = d->_g104 && !d->_cg107;
  d->_cg117 = d->_Pacemaker_local__Atrig8 || d->_Pacemaker_local__Atrig9;
  d->_g112 = d->_g111 && !d->_cg114 || d->_g126 && !d->_cg117;
  d->_g108 = d->_g104 || d->_g123 && !d->_cg123;
  d->_g117 = d->_GO || d->_g149_e2 || d->_g131 && !d->_cg131;
  d->_g114 = d->_g148 && d->_cg152;
  if (d->_g114) {
    d->_region5_URI_timer_t = 0;
  }
  d->_g123 = d->_g132 || d->_g114;
  if (d->_g123) {
    d->_Pacemaker_local__Atrig10 = 0;
    d->_Pacemaker_local__Atrig11 = 0;
  }
  d->_cg134 = d->_region5_URI_timer_t < d->URI_Constraint;
  d->_g106 = d->_g123 && d->_cg134;
  if (d->_g106) {
    d->sleepT = (d->sleepT < (d->URI_Constraint - d->_region5_URI_timer_t)) ? d->sleepT : (d->URI_Constraint - d->_region5_URI_timer_t);
  }
  d->_cg135 = d->_Pacemaker_local__Atrig10 || d->_Pacemaker_local__Atrig11;
  d->_g131 = d->_g106 && !d->_cg135 || d->_g137 && !d->_cg139;
  d->_g154 = d->_g123 && !d->_cg134;
  d->_cg144 = d->_Pacemaker_local__Atrig10 || d->_Pacemaker_local__Atrig11;
  d->_g152 = d->_g138 && !d->_cg141 || d->_g154 && !d->_cg144;
  d->_g153 = d->_g123 || d->_g150 && !d->_cg150;
  d->_g132 = d->_GO || d->_g140_e1;
  d->_g135 = d->_GO || d->_g4;
  d->_g139 = d->_GO || d->_g170;
  d->_g141 = d->_GO || d->_g68;
  d->_g144 = d->_GO || d->_g100;
  d->_g150 = d->_GO || d->_g182;
  d->_reg_VP = d->VP;
  if (d->_g195) {
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
  d->_pg139 = 0;
  d->_pg64_e1 = 0;
  d->_pg8 = 0;
  d->_pg150 = 0;
  d->_pg117 = 0;
  d->_pg152 = 0;
  d->_pg131 = 0;
  d->_pg153 = 0;
  d->_pg132 = 0;
  d->_pg195 = 0;
  d->_pg45_e2 = 0;
  d->_pg9 = 0;
  d->_pg10 = 0;
  d->_pg13 = 0;
  d->_pg48 = 0;
  d->_pg50 = 0;
  d->_pg49 = 0;
  d->_pg135 = 0;
  d->_pg77 = 0;
  d->_pg55 = 0;
  d->_pg56 = 0;
  d->_pg85 = 0;
  d->_pg141 = 0;
  d->_pg96 = 0;
  d->_pg87 = 0;
  d->_pg90 = 0;
  d->_pg112 = 0;
  d->_pg105 = 0;
  d->_pg108 = 0;
  d->_pg144 = 0;
  d->_pg122 = 0;
}

void tick(TickData* d) {
  logic(d);

  d->_pg139 = d->_g139;
  d->_pg64_e1 = d->_g64_e1;
  d->_pg8 = d->_g8;
  d->_pg150 = d->_g150;
  d->_pg117 = d->_g117;
  d->_pg152 = d->_g152;
  d->_pg131 = d->_g131;
  d->_pg153 = d->_g153;
  d->_pg132 = d->_g132;
  d->_pg195 = d->_g195;
  d->_pg45_e2 = d->_g45_e2;
  d->_pg9 = d->_g9;
  d->_pg10 = d->_g10;
  d->_pg13 = d->_g13;
  d->_pg48 = d->_g48;
  d->_pg50 = d->_g50;
  d->_pg49 = d->_g49;
  d->_pg135 = d->_g135;
  d->_pg77 = d->_g77;
  d->_pg55 = d->_g55;
  d->_pg56 = d->_g56;
  d->_pg85 = d->_g85;
  d->_pg141 = d->_g141;
  d->_pg96 = d->_g96;
  d->_pg87 = d->_g87;
  d->_pg90 = d->_g90;
  d->_pg112 = d->_g112;
  d->_pg105 = d->_g105;
  d->_pg108 = d->_g108;
  d->_pg144 = d->_g144;
  d->_pg122 = d->_g122;
  d->_GO = 0;
}
