

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import org.json.*;

public class Main {

    public static Pacemaker model = new Pacemaker();
    
    private static long _tickstart;
private static long _ticktime;

    
    public static BufferedReader stdInReader = new BufferedReader(new InputStreamReader(System.in));
            
    private static void receiveVariables() {
        try {
            String line = stdInReader.readLine();
            JSONObject json = new JSONObject(line);
            
            // Receive AS
            if (json.has("AS")) {
                model.AS = json.getBoolean("AS");
            }
            // Receive VS
            if (json.has("VS")) {
                model.VS = json.getBoolean("VS");
            }
            // Receive deltaT
            if (json.has("deltaT")) {
                model.deltaT = json.getDouble("deltaT");
            }
            // Receive AP
            if (json.has("AP")) {
                model.AP = json.getBoolean("AP");
            }
            // Receive VP
            if (json.has("VP")) {
                model.VP = json.getBoolean("VP");
            }
            // Receive sleepT
            if (json.has("sleepT")) {
                model.sleepT = json.getDouble("sleepT");
            }
            // Receive #ticktime
            if (json.has("#ticktime")) {
                _ticktime = json.getInt("#ticktime");
            }
            // Receive AR
            if (json.has("AR")) {
                model.AR = json.getBoolean("AR");
            }
            // Receive A_event
            if (json.has("A_event")) {
                model.A_event = json.getBoolean("A_event");
            }
            // Receive VR
            if (json.has("VR")) {
                model.VR = json.getBoolean("VR");
            }
            // Receive V_event
            if (json.has("V_event")) {
                model.V_event = json.getBoolean("V_event");
            }
            // Receive _GO
            if (json.has("_GO")) {
                model._GO = json.getBoolean("_GO");
            }
            // Receive _Pacemaker_local__Atrig
            if (json.has("_Pacemaker_local__Atrig")) {
                model._Pacemaker_local__Atrig = json.getBoolean("_Pacemaker_local__Atrig");
            }
            // Receive _Pacemaker_local__Atrig1
            if (json.has("_Pacemaker_local__Atrig1")) {
                model._Pacemaker_local__Atrig1 = json.getBoolean("_Pacemaker_local__Atrig1");
            }
            // Receive _Pacemaker_local__Atrig10
            if (json.has("_Pacemaker_local__Atrig10")) {
                model._Pacemaker_local__Atrig10 = json.getBoolean("_Pacemaker_local__Atrig10");
            }
            // Receive _Pacemaker_local__Atrig11
            if (json.has("_Pacemaker_local__Atrig11")) {
                model._Pacemaker_local__Atrig11 = json.getBoolean("_Pacemaker_local__Atrig11");
            }
            // Receive _Pacemaker_local__Atrig2
            if (json.has("_Pacemaker_local__Atrig2")) {
                model._Pacemaker_local__Atrig2 = json.getBoolean("_Pacemaker_local__Atrig2");
            }
            // Receive _Pacemaker_local__Atrig3
            if (json.has("_Pacemaker_local__Atrig3")) {
                model._Pacemaker_local__Atrig3 = json.getBoolean("_Pacemaker_local__Atrig3");
            }
            // Receive _Pacemaker_local__Atrig4
            if (json.has("_Pacemaker_local__Atrig4")) {
                model._Pacemaker_local__Atrig4 = json.getBoolean("_Pacemaker_local__Atrig4");
            }
            // Receive _Pacemaker_local__Atrig5
            if (json.has("_Pacemaker_local__Atrig5")) {
                model._Pacemaker_local__Atrig5 = json.getBoolean("_Pacemaker_local__Atrig5");
            }
            // Receive _Pacemaker_local__Atrig6
            if (json.has("_Pacemaker_local__Atrig6")) {
                model._Pacemaker_local__Atrig6 = json.getBoolean("_Pacemaker_local__Atrig6");
            }
            // Receive _Pacemaker_local__Atrig7
            if (json.has("_Pacemaker_local__Atrig7")) {
                model._Pacemaker_local__Atrig7 = json.getBoolean("_Pacemaker_local__Atrig7");
            }
            // Receive _Pacemaker_local__Atrig8
            if (json.has("_Pacemaker_local__Atrig8")) {
                model._Pacemaker_local__Atrig8 = json.getBoolean("_Pacemaker_local__Atrig8");
            }
            // Receive _Pacemaker_local__Atrig9
            if (json.has("_Pacemaker_local__Atrig9")) {
                model._Pacemaker_local__Atrig9 = json.getBoolean("_Pacemaker_local__Atrig9");
            }
            // Receive _TERM
            if (json.has("_TERM")) {
                model._TERM = json.getBoolean("_TERM");
            }
            // Receive _cg100
            if (json.has("_cg100")) {
                model._cg100 = json.getBoolean("_cg100");
            }
            // Receive _cg102
            if (json.has("_cg102")) {
                model._cg102 = json.getBoolean("_cg102");
            }
            // Receive _cg108
            if (json.has("_cg108")) {
                model._cg108 = json.getBoolean("_cg108");
            }
            // Receive _cg111
            if (json.has("_cg111")) {
                model._cg111 = json.getBoolean("_cg111");
            }
            // Receive _cg112
            if (json.has("_cg112")) {
                model._cg112 = json.getBoolean("_cg112");
            }
            // Receive _cg115
            if (json.has("_cg115")) {
                model._cg115 = json.getBoolean("_cg115");
            }
            // Receive _cg116
            if (json.has("_cg116")) {
                model._cg116 = json.getBoolean("_cg116");
            }
            // Receive _cg118
            if (json.has("_cg118")) {
                model._cg118 = json.getBoolean("_cg118");
            }
            // Receive _cg12
            if (json.has("_cg12")) {
                model._cg12 = json.getBoolean("_cg12");
            }
            // Receive _cg121
            if (json.has("_cg121")) {
                model._cg121 = json.getBoolean("_cg121");
            }
            // Receive _cg124
            if (json.has("_cg124")) {
                model._cg124 = json.getBoolean("_cg124");
            }
            // Receive _cg127
            if (json.has("_cg127")) {
                model._cg127 = json.getBoolean("_cg127");
            }
            // Receive _cg129
            if (json.has("_cg129")) {
                model._cg129 = json.getBoolean("_cg129");
            }
            // Receive _cg135
            if (json.has("_cg135")) {
                model._cg135 = json.getBoolean("_cg135");
            }
            // Receive _cg138
            if (json.has("_cg138")) {
                model._cg138 = json.getBoolean("_cg138");
            }
            // Receive _cg139
            if (json.has("_cg139")) {
                model._cg139 = json.getBoolean("_cg139");
            }
            // Receive _cg142
            if (json.has("_cg142")) {
                model._cg142 = json.getBoolean("_cg142");
            }
            // Receive _cg143
            if (json.has("_cg143")) {
                model._cg143 = json.getBoolean("_cg143");
            }
            // Receive _cg145
            if (json.has("_cg145")) {
                model._cg145 = json.getBoolean("_cg145");
            }
            // Receive _cg148
            if (json.has("_cg148")) {
                model._cg148 = json.getBoolean("_cg148");
            }
            // Receive _cg151
            if (json.has("_cg151")) {
                model._cg151 = json.getBoolean("_cg151");
            }
            // Receive _cg154
            if (json.has("_cg154")) {
                model._cg154 = json.getBoolean("_cg154");
            }
            // Receive _cg156
            if (json.has("_cg156")) {
                model._cg156 = json.getBoolean("_cg156");
            }
            // Receive _cg17
            if (json.has("_cg17")) {
                model._cg17 = json.getBoolean("_cg17");
            }
            // Receive _cg20
            if (json.has("_cg20")) {
                model._cg20 = json.getBoolean("_cg20");
            }
            // Receive _cg22
            if (json.has("_cg22")) {
                model._cg22 = json.getBoolean("_cg22");
            }
            // Receive _cg28
            if (json.has("_cg28")) {
                model._cg28 = json.getBoolean("_cg28");
            }
            // Receive _cg31
            if (json.has("_cg31")) {
                model._cg31 = json.getBoolean("_cg31");
            }
            // Receive _cg32
            if (json.has("_cg32")) {
                model._cg32 = json.getBoolean("_cg32");
            }
            // Receive _cg35
            if (json.has("_cg35")) {
                model._cg35 = json.getBoolean("_cg35");
            }
            // Receive _cg36
            if (json.has("_cg36")) {
                model._cg36 = json.getBoolean("_cg36");
            }
            // Receive _cg38
            if (json.has("_cg38")) {
                model._cg38 = json.getBoolean("_cg38");
            }
            // Receive _cg4
            if (json.has("_cg4")) {
                model._cg4 = json.getBoolean("_cg4");
            }
            // Receive _cg41
            if (json.has("_cg41")) {
                model._cg41 = json.getBoolean("_cg41");
            }
            // Receive _cg44
            if (json.has("_cg44")) {
                model._cg44 = json.getBoolean("_cg44");
            }
            // Receive _cg47
            if (json.has("_cg47")) {
                model._cg47 = json.getBoolean("_cg47");
            }
            // Receive _cg49
            if (json.has("_cg49")) {
                model._cg49 = json.getBoolean("_cg49");
            }
            // Receive _cg52
            if (json.has("_cg52")) {
                model._cg52 = json.getBoolean("_cg52");
            }
            // Receive _cg57
            if (json.has("_cg57")) {
                model._cg57 = json.getBoolean("_cg57");
            }
            // Receive _cg60
            if (json.has("_cg60")) {
                model._cg60 = json.getBoolean("_cg60");
            }
            // Receive _cg61
            if (json.has("_cg61")) {
                model._cg61 = json.getBoolean("_cg61");
            }
            // Receive _cg64
            if (json.has("_cg64")) {
                model._cg64 = json.getBoolean("_cg64");
            }
            // Receive _cg65
            if (json.has("_cg65")) {
                model._cg65 = json.getBoolean("_cg65");
            }
            // Receive _cg67
            if (json.has("_cg67")) {
                model._cg67 = json.getBoolean("_cg67");
            }
            // Receive _cg7
            if (json.has("_cg7")) {
                model._cg7 = json.getBoolean("_cg7");
            }
            // Receive _cg70
            if (json.has("_cg70")) {
                model._cg70 = json.getBoolean("_cg70");
            }
            // Receive _cg73
            if (json.has("_cg73")) {
                model._cg73 = json.getBoolean("_cg73");
            }
            // Receive _cg76
            if (json.has("_cg76")) {
                model._cg76 = json.getBoolean("_cg76");
            }
            // Receive _cg78
            if (json.has("_cg78")) {
                model._cg78 = json.getBoolean("_cg78");
            }
            // Receive _cg8
            if (json.has("_cg8")) {
                model._cg8 = json.getBoolean("_cg8");
            }
            // Receive _cg84
            if (json.has("_cg84")) {
                model._cg84 = json.getBoolean("_cg84");
            }
            // Receive _cg87
            if (json.has("_cg87")) {
                model._cg87 = json.getBoolean("_cg87");
            }
            // Receive _cg88
            if (json.has("_cg88")) {
                model._cg88 = json.getBoolean("_cg88");
            }
            // Receive _cg92
            if (json.has("_cg92")) {
                model._cg92 = json.getBoolean("_cg92");
            }
            // Receive _cg97
            if (json.has("_cg97")) {
                model._cg97 = json.getBoolean("_cg97");
            }
            // Receive _g10
            if (json.has("_g10")) {
                model._g10 = json.getBoolean("_g10");
            }
            // Receive _g100
            if (json.has("_g100")) {
                model._g100 = json.getBoolean("_g100");
            }
            // Receive _g101
            if (json.has("_g101")) {
                model._g101 = json.getBoolean("_g101");
            }
            // Receive _g102
            if (json.has("_g102")) {
                model._g102 = json.getBoolean("_g102");
            }
            // Receive _g103
            if (json.has("_g103")) {
                model._g103 = json.getBoolean("_g103");
            }
            // Receive _g104
            if (json.has("_g104")) {
                model._g104 = json.getBoolean("_g104");
            }
            // Receive _g108
            if (json.has("_g108")) {
                model._g108 = json.getBoolean("_g108");
            }
            // Receive _g109
            if (json.has("_g109")) {
                model._g109 = json.getBoolean("_g109");
            }
            // Receive _g11
            if (json.has("_g11")) {
                model._g11 = json.getBoolean("_g11");
            }
            // Receive _g110
            if (json.has("_g110")) {
                model._g110 = json.getBoolean("_g110");
            }
            // Receive _g112
            if (json.has("_g112")) {
                model._g112 = json.getBoolean("_g112");
            }
            // Receive _g114
            if (json.has("_g114")) {
                model._g114 = json.getBoolean("_g114");
            }
            // Receive _g115
            if (json.has("_g115")) {
                model._g115 = json.getBoolean("_g115");
            }
            // Receive _g116
            if (json.has("_g116")) {
                model._g116 = json.getBoolean("_g116");
            }
            // Receive _g117
            if (json.has("_g117")) {
                model._g117 = json.getBoolean("_g117");
            }
            // Receive _g117_e1
            if (json.has("_g117_e1")) {
                model._g117_e1 = json.getBoolean("_g117_e1");
            }
            // Receive _g118
            if (json.has("_g118")) {
                model._g118 = json.getBoolean("_g118");
            }
            // Receive _g12
            if (json.has("_g12")) {
                model._g12 = json.getBoolean("_g12");
            }
            // Receive _g120
            if (json.has("_g120")) {
                model._g120 = json.getBoolean("_g120");
            }
            // Receive _g121
            if (json.has("_g121")) {
                model._g121 = json.getBoolean("_g121");
            }
            // Receive _g124
            if (json.has("_g124")) {
                model._g124 = json.getBoolean("_g124");
            }
            // Receive _g125
            if (json.has("_g125")) {
                model._g125 = json.getBoolean("_g125");
            }
            // Receive _g126
            if (json.has("_g126")) {
                model._g126 = json.getBoolean("_g126");
            }
            // Receive _g126_e2
            if (json.has("_g126_e2")) {
                model._g126_e2 = json.getBoolean("_g126_e2");
            }
            // Receive _g127
            if (json.has("_g127")) {
                model._g127 = json.getBoolean("_g127");
            }
            // Receive _g128
            if (json.has("_g128")) {
                model._g128 = json.getBoolean("_g128");
            }
            // Receive _g129
            if (json.has("_g129")) {
                model._g129 = json.getBoolean("_g129");
            }
            // Receive _g13
            if (json.has("_g13")) {
                model._g13 = json.getBoolean("_g13");
            }
            // Receive _g130
            if (json.has("_g130")) {
                model._g130 = json.getBoolean("_g130");
            }
            // Receive _g131
            if (json.has("_g131")) {
                model._g131 = json.getBoolean("_g131");
            }
            // Receive _g135
            if (json.has("_g135")) {
                model._g135 = json.getBoolean("_g135");
            }
            // Receive _g136
            if (json.has("_g136")) {
                model._g136 = json.getBoolean("_g136");
            }
            // Receive _g139
            if (json.has("_g139")) {
                model._g139 = json.getBoolean("_g139");
            }
            // Receive _g14
            if (json.has("_g14")) {
                model._g14 = json.getBoolean("_g14");
            }
            // Receive _g141
            if (json.has("_g141")) {
                model._g141 = json.getBoolean("_g141");
            }
            // Receive _g142
            if (json.has("_g142")) {
                model._g142 = json.getBoolean("_g142");
            }
            // Receive _g143
            if (json.has("_g143")) {
                model._g143 = json.getBoolean("_g143");
            }
            // Receive _g144
            if (json.has("_g144")) {
                model._g144 = json.getBoolean("_g144");
            }
            // Receive _g144_e1
            if (json.has("_g144_e1")) {
                model._g144_e1 = json.getBoolean("_g144_e1");
            }
            // Receive _g145
            if (json.has("_g145")) {
                model._g145 = json.getBoolean("_g145");
            }
            // Receive _g147
            if (json.has("_g147")) {
                model._g147 = json.getBoolean("_g147");
            }
            // Receive _g148
            if (json.has("_g148")) {
                model._g148 = json.getBoolean("_g148");
            }
            // Receive _g151
            if (json.has("_g151")) {
                model._g151 = json.getBoolean("_g151");
            }
            // Receive _g152
            if (json.has("_g152")) {
                model._g152 = json.getBoolean("_g152");
            }
            // Receive _g153
            if (json.has("_g153")) {
                model._g153 = json.getBoolean("_g153");
            }
            // Receive _g153_e2
            if (json.has("_g153_e2")) {
                model._g153_e2 = json.getBoolean("_g153_e2");
            }
            // Receive _g154
            if (json.has("_g154")) {
                model._g154 = json.getBoolean("_g154");
            }
            // Receive _g155
            if (json.has("_g155")) {
                model._g155 = json.getBoolean("_g155");
            }
            // Receive _g156
            if (json.has("_g156")) {
                model._g156 = json.getBoolean("_g156");
            }
            // Receive _g157
            if (json.has("_g157")) {
                model._g157 = json.getBoolean("_g157");
            }
            // Receive _g158
            if (json.has("_g158")) {
                model._g158 = json.getBoolean("_g158");
            }
            // Receive _g17
            if (json.has("_g17")) {
                model._g17 = json.getBoolean("_g17");
            }
            // Receive _g174
            if (json.has("_g174")) {
                model._g174 = json.getBoolean("_g174");
            }
            // Receive _g18
            if (json.has("_g18")) {
                model._g18 = json.getBoolean("_g18");
            }
            // Receive _g186
            if (json.has("_g186")) {
                model._g186 = json.getBoolean("_g186");
            }
            // Receive _g19
            if (json.has("_g19")) {
                model._g19 = json.getBoolean("_g19");
            }
            // Receive _g19_e2
            if (json.has("_g19_e2")) {
                model._g19_e2 = json.getBoolean("_g19_e2");
            }
            // Receive _g20
            if (json.has("_g20")) {
                model._g20 = json.getBoolean("_g20");
            }
            // Receive _g202
            if (json.has("_g202")) {
                model._g202 = json.getBoolean("_g202");
            }
            // Receive _g21
            if (json.has("_g21")) {
                model._g21 = json.getBoolean("_g21");
            }
            // Receive _g22
            if (json.has("_g22")) {
                model._g22 = json.getBoolean("_g22");
            }
            // Receive _g23
            if (json.has("_g23")) {
                model._g23 = json.getBoolean("_g23");
            }
            // Receive _g24
            if (json.has("_g24")) {
                model._g24 = json.getBoolean("_g24");
            }
            // Receive _g28
            if (json.has("_g28")) {
                model._g28 = json.getBoolean("_g28");
            }
            // Receive _g29
            if (json.has("_g29")) {
                model._g29 = json.getBoolean("_g29");
            }
            // Receive _g30
            if (json.has("_g30")) {
                model._g30 = json.getBoolean("_g30");
            }
            // Receive _g32
            if (json.has("_g32")) {
                model._g32 = json.getBoolean("_g32");
            }
            // Receive _g34
            if (json.has("_g34")) {
                model._g34 = json.getBoolean("_g34");
            }
            // Receive _g35
            if (json.has("_g35")) {
                model._g35 = json.getBoolean("_g35");
            }
            // Receive _g36
            if (json.has("_g36")) {
                model._g36 = json.getBoolean("_g36");
            }
            // Receive _g37
            if (json.has("_g37")) {
                model._g37 = json.getBoolean("_g37");
            }
            // Receive _g37_e1
            if (json.has("_g37_e1")) {
                model._g37_e1 = json.getBoolean("_g37_e1");
            }
            // Receive _g38
            if (json.has("_g38")) {
                model._g38 = json.getBoolean("_g38");
            }
            // Receive _g4
            if (json.has("_g4")) {
                model._g4 = json.getBoolean("_g4");
            }
            // Receive _g40
            if (json.has("_g40")) {
                model._g40 = json.getBoolean("_g40");
            }
            // Receive _g41
            if (json.has("_g41")) {
                model._g41 = json.getBoolean("_g41");
            }
            // Receive _g44
            if (json.has("_g44")) {
                model._g44 = json.getBoolean("_g44");
            }
            // Receive _g45
            if (json.has("_g45")) {
                model._g45 = json.getBoolean("_g45");
            }
            // Receive _g46
            if (json.has("_g46")) {
                model._g46 = json.getBoolean("_g46");
            }
            // Receive _g46_e2
            if (json.has("_g46_e2")) {
                model._g46_e2 = json.getBoolean("_g46_e2");
            }
            // Receive _g47
            if (json.has("_g47")) {
                model._g47 = json.getBoolean("_g47");
            }
            // Receive _g48
            if (json.has("_g48")) {
                model._g48 = json.getBoolean("_g48");
            }
            // Receive _g49
            if (json.has("_g49")) {
                model._g49 = json.getBoolean("_g49");
            }
            // Receive _g5
            if (json.has("_g5")) {
                model._g5 = json.getBoolean("_g5");
            }
            // Receive _g50
            if (json.has("_g50")) {
                model._g50 = json.getBoolean("_g50");
            }
            // Receive _g51
            if (json.has("_g51")) {
                model._g51 = json.getBoolean("_g51");
            }
            // Receive _g52
            if (json.has("_g52")) {
                model._g52 = json.getBoolean("_g52");
            }
            // Receive _g53
            if (json.has("_g53")) {
                model._g53 = json.getBoolean("_g53");
            }
            // Receive _g57
            if (json.has("_g57")) {
                model._g57 = json.getBoolean("_g57");
            }
            // Receive _g58
            if (json.has("_g58")) {
                model._g58 = json.getBoolean("_g58");
            }
            // Receive _g59
            if (json.has("_g59")) {
                model._g59 = json.getBoolean("_g59");
            }
            // Receive _g61
            if (json.has("_g61")) {
                model._g61 = json.getBoolean("_g61");
            }
            // Receive _g63
            if (json.has("_g63")) {
                model._g63 = json.getBoolean("_g63");
            }
            // Receive _g64
            if (json.has("_g64")) {
                model._g64 = json.getBoolean("_g64");
            }
            // Receive _g65
            if (json.has("_g65")) {
                model._g65 = json.getBoolean("_g65");
            }
            // Receive _g66
            if (json.has("_g66")) {
                model._g66 = json.getBoolean("_g66");
            }
            // Receive _g66_e1
            if (json.has("_g66_e1")) {
                model._g66_e1 = json.getBoolean("_g66_e1");
            }
            // Receive _g67
            if (json.has("_g67")) {
                model._g67 = json.getBoolean("_g67");
            }
            // Receive _g69
            if (json.has("_g69")) {
                model._g69 = json.getBoolean("_g69");
            }
            // Receive _g7
            if (json.has("_g7")) {
                model._g7 = json.getBoolean("_g7");
            }
            // Receive _g70
            if (json.has("_g70")) {
                model._g70 = json.getBoolean("_g70");
            }
            // Receive _g73
            if (json.has("_g73")) {
                model._g73 = json.getBoolean("_g73");
            }
            // Receive _g74
            if (json.has("_g74")) {
                model._g74 = json.getBoolean("_g74");
            }
            // Receive _g75
            if (json.has("_g75")) {
                model._g75 = json.getBoolean("_g75");
            }
            // Receive _g75_e2
            if (json.has("_g75_e2")) {
                model._g75_e2 = json.getBoolean("_g75_e2");
            }
            // Receive _g76
            if (json.has("_g76")) {
                model._g76 = json.getBoolean("_g76");
            }
            // Receive _g77
            if (json.has("_g77")) {
                model._g77 = json.getBoolean("_g77");
            }
            // Receive _g78
            if (json.has("_g78")) {
                model._g78 = json.getBoolean("_g78");
            }
            // Receive _g79
            if (json.has("_g79")) {
                model._g79 = json.getBoolean("_g79");
            }
            // Receive _g8
            if (json.has("_g8")) {
                model._g8 = json.getBoolean("_g8");
            }
            // Receive _g80
            if (json.has("_g80")) {
                model._g80 = json.getBoolean("_g80");
            }
            // Receive _g84
            if (json.has("_g84")) {
                model._g84 = json.getBoolean("_g84");
            }
            // Receive _g85
            if (json.has("_g85")) {
                model._g85 = json.getBoolean("_g85");
            }
            // Receive _g87
            if (json.has("_g87")) {
                model._g87 = json.getBoolean("_g87");
            }
            // Receive _g88
            if (json.has("_g88")) {
                model._g88 = json.getBoolean("_g88");
            }
            // Receive _g89
            if (json.has("_g89")) {
                model._g89 = json.getBoolean("_g89");
            }
            // Receive _g89_e1
            if (json.has("_g89_e1")) {
                model._g89_e1 = json.getBoolean("_g89_e1");
            }
            // Receive _g9
            if (json.has("_g9")) {
                model._g9 = json.getBoolean("_g9");
            }
            // Receive _g90
            if (json.has("_g90")) {
                model._g90 = json.getBoolean("_g90");
            }
            // Receive _g91
            if (json.has("_g91")) {
                model._g91 = json.getBoolean("_g91");
            }
            // Receive _g92
            if (json.has("_g92")) {
                model._g92 = json.getBoolean("_g92");
            }
            // Receive _g93
            if (json.has("_g93")) {
                model._g93 = json.getBoolean("_g93");
            }
            // Receive _g94
            if (json.has("_g94")) {
                model._g94 = json.getBoolean("_g94");
            }
            // Receive _g97
            if (json.has("_g97")) {
                model._g97 = json.getBoolean("_g97");
            }
            // Receive _g98
            if (json.has("_g98")) {
                model._g98 = json.getBoolean("_g98");
            }
            // Receive _g99
            if (json.has("_g99")) {
                model._g99 = json.getBoolean("_g99");
            }
            // Receive _g99_e2
            if (json.has("_g99_e2")) {
                model._g99_e2 = json.getBoolean("_g99_e2");
            }
            // Receive _g9_e1
            if (json.has("_g9_e1")) {
                model._g9_e1 = json.getBoolean("_g9_e1");
            }
            // Receive _pg10
            if (json.has("_pg10")) {
                model._pg10 = json.getBoolean("_pg10");
            }
            // Receive _pg112
            if (json.has("_pg112")) {
                model._pg112 = json.getBoolean("_pg112");
            }
            // Receive _pg116
            if (json.has("_pg116")) {
                model._pg116 = json.getBoolean("_pg116");
            }
            // Receive _pg121
            if (json.has("_pg121")) {
                model._pg121 = json.getBoolean("_pg121");
            }
            // Receive _pg126
            if (json.has("_pg126")) {
                model._pg126 = json.getBoolean("_pg126");
            }
            // Receive _pg13
            if (json.has("_pg13")) {
                model._pg13 = json.getBoolean("_pg13");
            }
            // Receive _pg130
            if (json.has("_pg130")) {
                model._pg130 = json.getBoolean("_pg130");
            }
            // Receive _pg135
            if (json.has("_pg135")) {
                model._pg135 = json.getBoolean("_pg135");
            }
            // Receive _pg136
            if (json.has("_pg136")) {
                model._pg136 = json.getBoolean("_pg136");
            }
            // Receive _pg139
            if (json.has("_pg139")) {
                model._pg139 = json.getBoolean("_pg139");
            }
            // Receive _pg143
            if (json.has("_pg143")) {
                model._pg143 = json.getBoolean("_pg143");
            }
            // Receive _pg145
            if (json.has("_pg145")) {
                model._pg145 = json.getBoolean("_pg145");
            }
            // Receive _pg148
            if (json.has("_pg148")) {
                model._pg148 = json.getBoolean("_pg148");
            }
            // Receive _pg154
            if (json.has("_pg154")) {
                model._pg154 = json.getBoolean("_pg154");
            }
            // Receive _pg156
            if (json.has("_pg156")) {
                model._pg156 = json.getBoolean("_pg156");
            }
            // Receive _pg157
            if (json.has("_pg157")) {
                model._pg157 = json.getBoolean("_pg157");
            }
            // Receive _pg202
            if (json.has("_pg202")) {
                model._pg202 = json.getBoolean("_pg202");
            }
            // Receive _pg29
            if (json.has("_pg29")) {
                model._pg29 = json.getBoolean("_pg29");
            }
            // Receive _pg37_e1
            if (json.has("_pg37_e1")) {
                model._pg37_e1 = json.getBoolean("_pg37_e1");
            }
            // Receive _pg49
            if (json.has("_pg49")) {
                model._pg49 = json.getBoolean("_pg49");
            }
            // Receive _pg53
            if (json.has("_pg53")) {
                model._pg53 = json.getBoolean("_pg53");
            }
            // Receive _pg57
            if (json.has("_pg57")) {
                model._pg57 = json.getBoolean("_pg57");
            }
            // Receive _pg58
            if (json.has("_pg58")) {
                model._pg58 = json.getBoolean("_pg58");
            }
            // Receive _pg66
            if (json.has("_pg66")) {
                model._pg66 = json.getBoolean("_pg66");
            }
            // Receive _pg79
            if (json.has("_pg79")) {
                model._pg79 = json.getBoolean("_pg79");
            }
            // Receive _pg8
            if (json.has("_pg8")) {
                model._pg8 = json.getBoolean("_pg8");
            }
            // Receive _pg90
            if (json.has("_pg90")) {
                model._pg90 = json.getBoolean("_pg90");
            }
            // Receive _pg92
            if (json.has("_pg92")) {
                model._pg92 = json.getBoolean("_pg92");
            }
            // Receive _pg93
            if (json.has("_pg93")) {
                model._pg93 = json.getBoolean("_pg93");
            }
            // Receive _pg99
            if (json.has("_pg99")) {
                model._pg99 = json.getBoolean("_pg99");
            }
            // Receive _pg9_e1
            if (json.has("_pg9_e1")) {
                model._pg9_e1 = json.getBoolean("_pg9_e1");
            }
            // Receive _pre_AP
            if (json.has("_pre_AP")) {
                model._pre_AP = json.getBoolean("_pre_AP");
            }
            // Receive _pre_VP
            if (json.has("_pre_VP")) {
                model._pre_VP = json.getBoolean("_pre_VP");
            }
            // Receive _reg_AP
            if (json.has("_reg_AP")) {
                model._reg_AP = json.getBoolean("_reg_AP");
            }
            // Receive _reg_VP
            if (json.has("_reg_VP")) {
                model._reg_VP = json.getBoolean("_reg_VP");
            }
            // Receive _region0_AVI_timer_t
            if (json.has("_region0_AVI_timer_t")) {
                model._region0_AVI_timer_t = json.getDouble("_region0_AVI_timer_t");
            }
            // Receive _region1_PVARP_timer_t
            if (json.has("_region1_PVARP_timer_t")) {
                model._region1_PVARP_timer_t = json.getDouble("_region1_PVARP_timer_t");
            }
            // Receive _region2_VRP_timer_t
            if (json.has("_region2_VRP_timer_t")) {
                model._region2_VRP_timer_t = json.getDouble("_region2_VRP_timer_t");
            }
            // Receive _region3_AEI_timer_t
            if (json.has("_region3_AEI_timer_t")) {
                model._region3_AEI_timer_t = json.getDouble("_region3_AEI_timer_t");
            }
            // Receive _region4_LRI_timer_t
            if (json.has("_region4_LRI_timer_t")) {
                model._region4_LRI_timer_t = json.getDouble("_region4_LRI_timer_t");
            }
            // Receive _region5_URI_timer_t
            if (json.has("_region5_URI_timer_t")) {
                model._region5_URI_timer_t = json.getDouble("_region5_URI_timer_t");
            }
            // Receive _taken_transitions
            if (json.has("_taken_transitions")) {
                JSONArray _array = json.getJSONArray("_taken_transitions");
                for (int i = 0; i < _array.length(); i++) {
                    model._taken_transitions[i] = _array.getInt(i);
                }
            }
            // Receive inside_URI
            if (json.has("inside_URI")) {
                model.inside_URI = json.getBoolean("inside_URI");
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (JSONException e) {
           // Ignore other input
        }
    }
    
    private static void sendVariables() {
        JSONObject json = new JSONObject();
        
        // Send AS
        json.put("AS", JSONObject.wrap(model.AS));
        // Send VS
        json.put("VS", JSONObject.wrap(model.VS));
        // Send deltaT
        json.put("deltaT", JSONObject.wrap(model.deltaT));
        // Send AP
        json.put("AP", JSONObject.wrap(model.AP));
        // Send VP
        json.put("VP", JSONObject.wrap(model.VP));
        // Send sleepT
        json.put("sleepT", JSONObject.wrap(model.sleepT));
        // Send #ticktime
        json.put("#ticktime", _ticktime);
        // Send AR
        json.put("AR", JSONObject.wrap(model.AR));
        // Send A_event
        json.put("A_event", JSONObject.wrap(model.A_event));
        // Send VR
        json.put("VR", JSONObject.wrap(model.VR));
        // Send V_event
        json.put("V_event", JSONObject.wrap(model.V_event));
        // Send _GO
        json.put("_GO", JSONObject.wrap(model._GO));
        // Send _Pacemaker_local__Atrig
        json.put("_Pacemaker_local__Atrig", JSONObject.wrap(model._Pacemaker_local__Atrig));
        // Send _Pacemaker_local__Atrig1
        json.put("_Pacemaker_local__Atrig1", JSONObject.wrap(model._Pacemaker_local__Atrig1));
        // Send _Pacemaker_local__Atrig10
        json.put("_Pacemaker_local__Atrig10", JSONObject.wrap(model._Pacemaker_local__Atrig10));
        // Send _Pacemaker_local__Atrig11
        json.put("_Pacemaker_local__Atrig11", JSONObject.wrap(model._Pacemaker_local__Atrig11));
        // Send _Pacemaker_local__Atrig2
        json.put("_Pacemaker_local__Atrig2", JSONObject.wrap(model._Pacemaker_local__Atrig2));
        // Send _Pacemaker_local__Atrig3
        json.put("_Pacemaker_local__Atrig3", JSONObject.wrap(model._Pacemaker_local__Atrig3));
        // Send _Pacemaker_local__Atrig4
        json.put("_Pacemaker_local__Atrig4", JSONObject.wrap(model._Pacemaker_local__Atrig4));
        // Send _Pacemaker_local__Atrig5
        json.put("_Pacemaker_local__Atrig5", JSONObject.wrap(model._Pacemaker_local__Atrig5));
        // Send _Pacemaker_local__Atrig6
        json.put("_Pacemaker_local__Atrig6", JSONObject.wrap(model._Pacemaker_local__Atrig6));
        // Send _Pacemaker_local__Atrig7
        json.put("_Pacemaker_local__Atrig7", JSONObject.wrap(model._Pacemaker_local__Atrig7));
        // Send _Pacemaker_local__Atrig8
        json.put("_Pacemaker_local__Atrig8", JSONObject.wrap(model._Pacemaker_local__Atrig8));
        // Send _Pacemaker_local__Atrig9
        json.put("_Pacemaker_local__Atrig9", JSONObject.wrap(model._Pacemaker_local__Atrig9));
        // Send _TERM
        json.put("_TERM", JSONObject.wrap(model._TERM));
        // Send _cg100
        json.put("_cg100", JSONObject.wrap(model._cg100));
        // Send _cg102
        json.put("_cg102", JSONObject.wrap(model._cg102));
        // Send _cg108
        json.put("_cg108", JSONObject.wrap(model._cg108));
        // Send _cg111
        json.put("_cg111", JSONObject.wrap(model._cg111));
        // Send _cg112
        json.put("_cg112", JSONObject.wrap(model._cg112));
        // Send _cg115
        json.put("_cg115", JSONObject.wrap(model._cg115));
        // Send _cg116
        json.put("_cg116", JSONObject.wrap(model._cg116));
        // Send _cg118
        json.put("_cg118", JSONObject.wrap(model._cg118));
        // Send _cg12
        json.put("_cg12", JSONObject.wrap(model._cg12));
        // Send _cg121
        json.put("_cg121", JSONObject.wrap(model._cg121));
        // Send _cg124
        json.put("_cg124", JSONObject.wrap(model._cg124));
        // Send _cg127
        json.put("_cg127", JSONObject.wrap(model._cg127));
        // Send _cg129
        json.put("_cg129", JSONObject.wrap(model._cg129));
        // Send _cg135
        json.put("_cg135", JSONObject.wrap(model._cg135));
        // Send _cg138
        json.put("_cg138", JSONObject.wrap(model._cg138));
        // Send _cg139
        json.put("_cg139", JSONObject.wrap(model._cg139));
        // Send _cg142
        json.put("_cg142", JSONObject.wrap(model._cg142));
        // Send _cg143
        json.put("_cg143", JSONObject.wrap(model._cg143));
        // Send _cg145
        json.put("_cg145", JSONObject.wrap(model._cg145));
        // Send _cg148
        json.put("_cg148", JSONObject.wrap(model._cg148));
        // Send _cg151
        json.put("_cg151", JSONObject.wrap(model._cg151));
        // Send _cg154
        json.put("_cg154", JSONObject.wrap(model._cg154));
        // Send _cg156
        json.put("_cg156", JSONObject.wrap(model._cg156));
        // Send _cg17
        json.put("_cg17", JSONObject.wrap(model._cg17));
        // Send _cg20
        json.put("_cg20", JSONObject.wrap(model._cg20));
        // Send _cg22
        json.put("_cg22", JSONObject.wrap(model._cg22));
        // Send _cg28
        json.put("_cg28", JSONObject.wrap(model._cg28));
        // Send _cg31
        json.put("_cg31", JSONObject.wrap(model._cg31));
        // Send _cg32
        json.put("_cg32", JSONObject.wrap(model._cg32));
        // Send _cg35
        json.put("_cg35", JSONObject.wrap(model._cg35));
        // Send _cg36
        json.put("_cg36", JSONObject.wrap(model._cg36));
        // Send _cg38
        json.put("_cg38", JSONObject.wrap(model._cg38));
        // Send _cg4
        json.put("_cg4", JSONObject.wrap(model._cg4));
        // Send _cg41
        json.put("_cg41", JSONObject.wrap(model._cg41));
        // Send _cg44
        json.put("_cg44", JSONObject.wrap(model._cg44));
        // Send _cg47
        json.put("_cg47", JSONObject.wrap(model._cg47));
        // Send _cg49
        json.put("_cg49", JSONObject.wrap(model._cg49));
        // Send _cg52
        json.put("_cg52", JSONObject.wrap(model._cg52));
        // Send _cg57
        json.put("_cg57", JSONObject.wrap(model._cg57));
        // Send _cg60
        json.put("_cg60", JSONObject.wrap(model._cg60));
        // Send _cg61
        json.put("_cg61", JSONObject.wrap(model._cg61));
        // Send _cg64
        json.put("_cg64", JSONObject.wrap(model._cg64));
        // Send _cg65
        json.put("_cg65", JSONObject.wrap(model._cg65));
        // Send _cg67
        json.put("_cg67", JSONObject.wrap(model._cg67));
        // Send _cg7
        json.put("_cg7", JSONObject.wrap(model._cg7));
        // Send _cg70
        json.put("_cg70", JSONObject.wrap(model._cg70));
        // Send _cg73
        json.put("_cg73", JSONObject.wrap(model._cg73));
        // Send _cg76
        json.put("_cg76", JSONObject.wrap(model._cg76));
        // Send _cg78
        json.put("_cg78", JSONObject.wrap(model._cg78));
        // Send _cg8
        json.put("_cg8", JSONObject.wrap(model._cg8));
        // Send _cg84
        json.put("_cg84", JSONObject.wrap(model._cg84));
        // Send _cg87
        json.put("_cg87", JSONObject.wrap(model._cg87));
        // Send _cg88
        json.put("_cg88", JSONObject.wrap(model._cg88));
        // Send _cg92
        json.put("_cg92", JSONObject.wrap(model._cg92));
        // Send _cg97
        json.put("_cg97", JSONObject.wrap(model._cg97));
        // Send _g10
        json.put("_g10", JSONObject.wrap(model._g10));
        // Send _g100
        json.put("_g100", JSONObject.wrap(model._g100));
        // Send _g101
        json.put("_g101", JSONObject.wrap(model._g101));
        // Send _g102
        json.put("_g102", JSONObject.wrap(model._g102));
        // Send _g103
        json.put("_g103", JSONObject.wrap(model._g103));
        // Send _g104
        json.put("_g104", JSONObject.wrap(model._g104));
        // Send _g108
        json.put("_g108", JSONObject.wrap(model._g108));
        // Send _g109
        json.put("_g109", JSONObject.wrap(model._g109));
        // Send _g11
        json.put("_g11", JSONObject.wrap(model._g11));
        // Send _g110
        json.put("_g110", JSONObject.wrap(model._g110));
        // Send _g112
        json.put("_g112", JSONObject.wrap(model._g112));
        // Send _g114
        json.put("_g114", JSONObject.wrap(model._g114));
        // Send _g115
        json.put("_g115", JSONObject.wrap(model._g115));
        // Send _g116
        json.put("_g116", JSONObject.wrap(model._g116));
        // Send _g117
        json.put("_g117", JSONObject.wrap(model._g117));
        // Send _g117_e1
        json.put("_g117_e1", JSONObject.wrap(model._g117_e1));
        // Send _g118
        json.put("_g118", JSONObject.wrap(model._g118));
        // Send _g12
        json.put("_g12", JSONObject.wrap(model._g12));
        // Send _g120
        json.put("_g120", JSONObject.wrap(model._g120));
        // Send _g121
        json.put("_g121", JSONObject.wrap(model._g121));
        // Send _g124
        json.put("_g124", JSONObject.wrap(model._g124));
        // Send _g125
        json.put("_g125", JSONObject.wrap(model._g125));
        // Send _g126
        json.put("_g126", JSONObject.wrap(model._g126));
        // Send _g126_e2
        json.put("_g126_e2", JSONObject.wrap(model._g126_e2));
        // Send _g127
        json.put("_g127", JSONObject.wrap(model._g127));
        // Send _g128
        json.put("_g128", JSONObject.wrap(model._g128));
        // Send _g129
        json.put("_g129", JSONObject.wrap(model._g129));
        // Send _g13
        json.put("_g13", JSONObject.wrap(model._g13));
        // Send _g130
        json.put("_g130", JSONObject.wrap(model._g130));
        // Send _g131
        json.put("_g131", JSONObject.wrap(model._g131));
        // Send _g135
        json.put("_g135", JSONObject.wrap(model._g135));
        // Send _g136
        json.put("_g136", JSONObject.wrap(model._g136));
        // Send _g139
        json.put("_g139", JSONObject.wrap(model._g139));
        // Send _g14
        json.put("_g14", JSONObject.wrap(model._g14));
        // Send _g141
        json.put("_g141", JSONObject.wrap(model._g141));
        // Send _g142
        json.put("_g142", JSONObject.wrap(model._g142));
        // Send _g143
        json.put("_g143", JSONObject.wrap(model._g143));
        // Send _g144
        json.put("_g144", JSONObject.wrap(model._g144));
        // Send _g144_e1
        json.put("_g144_e1", JSONObject.wrap(model._g144_e1));
        // Send _g145
        json.put("_g145", JSONObject.wrap(model._g145));
        // Send _g147
        json.put("_g147", JSONObject.wrap(model._g147));
        // Send _g148
        json.put("_g148", JSONObject.wrap(model._g148));
        // Send _g151
        json.put("_g151", JSONObject.wrap(model._g151));
        // Send _g152
        json.put("_g152", JSONObject.wrap(model._g152));
        // Send _g153
        json.put("_g153", JSONObject.wrap(model._g153));
        // Send _g153_e2
        json.put("_g153_e2", JSONObject.wrap(model._g153_e2));
        // Send _g154
        json.put("_g154", JSONObject.wrap(model._g154));
        // Send _g155
        json.put("_g155", JSONObject.wrap(model._g155));
        // Send _g156
        json.put("_g156", JSONObject.wrap(model._g156));
        // Send _g157
        json.put("_g157", JSONObject.wrap(model._g157));
        // Send _g158
        json.put("_g158", JSONObject.wrap(model._g158));
        // Send _g17
        json.put("_g17", JSONObject.wrap(model._g17));
        // Send _g174
        json.put("_g174", JSONObject.wrap(model._g174));
        // Send _g18
        json.put("_g18", JSONObject.wrap(model._g18));
        // Send _g186
        json.put("_g186", JSONObject.wrap(model._g186));
        // Send _g19
        json.put("_g19", JSONObject.wrap(model._g19));
        // Send _g19_e2
        json.put("_g19_e2", JSONObject.wrap(model._g19_e2));
        // Send _g20
        json.put("_g20", JSONObject.wrap(model._g20));
        // Send _g202
        json.put("_g202", JSONObject.wrap(model._g202));
        // Send _g21
        json.put("_g21", JSONObject.wrap(model._g21));
        // Send _g22
        json.put("_g22", JSONObject.wrap(model._g22));
        // Send _g23
        json.put("_g23", JSONObject.wrap(model._g23));
        // Send _g24
        json.put("_g24", JSONObject.wrap(model._g24));
        // Send _g28
        json.put("_g28", JSONObject.wrap(model._g28));
        // Send _g29
        json.put("_g29", JSONObject.wrap(model._g29));
        // Send _g30
        json.put("_g30", JSONObject.wrap(model._g30));
        // Send _g32
        json.put("_g32", JSONObject.wrap(model._g32));
        // Send _g34
        json.put("_g34", JSONObject.wrap(model._g34));
        // Send _g35
        json.put("_g35", JSONObject.wrap(model._g35));
        // Send _g36
        json.put("_g36", JSONObject.wrap(model._g36));
        // Send _g37
        json.put("_g37", JSONObject.wrap(model._g37));
        // Send _g37_e1
        json.put("_g37_e1", JSONObject.wrap(model._g37_e1));
        // Send _g38
        json.put("_g38", JSONObject.wrap(model._g38));
        // Send _g4
        json.put("_g4", JSONObject.wrap(model._g4));
        // Send _g40
        json.put("_g40", JSONObject.wrap(model._g40));
        // Send _g41
        json.put("_g41", JSONObject.wrap(model._g41));
        // Send _g44
        json.put("_g44", JSONObject.wrap(model._g44));
        // Send _g45
        json.put("_g45", JSONObject.wrap(model._g45));
        // Send _g46
        json.put("_g46", JSONObject.wrap(model._g46));
        // Send _g46_e2
        json.put("_g46_e2", JSONObject.wrap(model._g46_e2));
        // Send _g47
        json.put("_g47", JSONObject.wrap(model._g47));
        // Send _g48
        json.put("_g48", JSONObject.wrap(model._g48));
        // Send _g49
        json.put("_g49", JSONObject.wrap(model._g49));
        // Send _g5
        json.put("_g5", JSONObject.wrap(model._g5));
        // Send _g50
        json.put("_g50", JSONObject.wrap(model._g50));
        // Send _g51
        json.put("_g51", JSONObject.wrap(model._g51));
        // Send _g52
        json.put("_g52", JSONObject.wrap(model._g52));
        // Send _g53
        json.put("_g53", JSONObject.wrap(model._g53));
        // Send _g57
        json.put("_g57", JSONObject.wrap(model._g57));
        // Send _g58
        json.put("_g58", JSONObject.wrap(model._g58));
        // Send _g59
        json.put("_g59", JSONObject.wrap(model._g59));
        // Send _g61
        json.put("_g61", JSONObject.wrap(model._g61));
        // Send _g63
        json.put("_g63", JSONObject.wrap(model._g63));
        // Send _g64
        json.put("_g64", JSONObject.wrap(model._g64));
        // Send _g65
        json.put("_g65", JSONObject.wrap(model._g65));
        // Send _g66
        json.put("_g66", JSONObject.wrap(model._g66));
        // Send _g66_e1
        json.put("_g66_e1", JSONObject.wrap(model._g66_e1));
        // Send _g67
        json.put("_g67", JSONObject.wrap(model._g67));
        // Send _g69
        json.put("_g69", JSONObject.wrap(model._g69));
        // Send _g7
        json.put("_g7", JSONObject.wrap(model._g7));
        // Send _g70
        json.put("_g70", JSONObject.wrap(model._g70));
        // Send _g73
        json.put("_g73", JSONObject.wrap(model._g73));
        // Send _g74
        json.put("_g74", JSONObject.wrap(model._g74));
        // Send _g75
        json.put("_g75", JSONObject.wrap(model._g75));
        // Send _g75_e2
        json.put("_g75_e2", JSONObject.wrap(model._g75_e2));
        // Send _g76
        json.put("_g76", JSONObject.wrap(model._g76));
        // Send _g77
        json.put("_g77", JSONObject.wrap(model._g77));
        // Send _g78
        json.put("_g78", JSONObject.wrap(model._g78));
        // Send _g79
        json.put("_g79", JSONObject.wrap(model._g79));
        // Send _g8
        json.put("_g8", JSONObject.wrap(model._g8));
        // Send _g80
        json.put("_g80", JSONObject.wrap(model._g80));
        // Send _g84
        json.put("_g84", JSONObject.wrap(model._g84));
        // Send _g85
        json.put("_g85", JSONObject.wrap(model._g85));
        // Send _g87
        json.put("_g87", JSONObject.wrap(model._g87));
        // Send _g88
        json.put("_g88", JSONObject.wrap(model._g88));
        // Send _g89
        json.put("_g89", JSONObject.wrap(model._g89));
        // Send _g89_e1
        json.put("_g89_e1", JSONObject.wrap(model._g89_e1));
        // Send _g9
        json.put("_g9", JSONObject.wrap(model._g9));
        // Send _g90
        json.put("_g90", JSONObject.wrap(model._g90));
        // Send _g91
        json.put("_g91", JSONObject.wrap(model._g91));
        // Send _g92
        json.put("_g92", JSONObject.wrap(model._g92));
        // Send _g93
        json.put("_g93", JSONObject.wrap(model._g93));
        // Send _g94
        json.put("_g94", JSONObject.wrap(model._g94));
        // Send _g97
        json.put("_g97", JSONObject.wrap(model._g97));
        // Send _g98
        json.put("_g98", JSONObject.wrap(model._g98));
        // Send _g99
        json.put("_g99", JSONObject.wrap(model._g99));
        // Send _g99_e2
        json.put("_g99_e2", JSONObject.wrap(model._g99_e2));
        // Send _g9_e1
        json.put("_g9_e1", JSONObject.wrap(model._g9_e1));
        // Send _pg10
        json.put("_pg10", JSONObject.wrap(model._pg10));
        // Send _pg112
        json.put("_pg112", JSONObject.wrap(model._pg112));
        // Send _pg116
        json.put("_pg116", JSONObject.wrap(model._pg116));
        // Send _pg121
        json.put("_pg121", JSONObject.wrap(model._pg121));
        // Send _pg126
        json.put("_pg126", JSONObject.wrap(model._pg126));
        // Send _pg13
        json.put("_pg13", JSONObject.wrap(model._pg13));
        // Send _pg130
        json.put("_pg130", JSONObject.wrap(model._pg130));
        // Send _pg135
        json.put("_pg135", JSONObject.wrap(model._pg135));
        // Send _pg136
        json.put("_pg136", JSONObject.wrap(model._pg136));
        // Send _pg139
        json.put("_pg139", JSONObject.wrap(model._pg139));
        // Send _pg143
        json.put("_pg143", JSONObject.wrap(model._pg143));
        // Send _pg145
        json.put("_pg145", JSONObject.wrap(model._pg145));
        // Send _pg148
        json.put("_pg148", JSONObject.wrap(model._pg148));
        // Send _pg154
        json.put("_pg154", JSONObject.wrap(model._pg154));
        // Send _pg156
        json.put("_pg156", JSONObject.wrap(model._pg156));
        // Send _pg157
        json.put("_pg157", JSONObject.wrap(model._pg157));
        // Send _pg202
        json.put("_pg202", JSONObject.wrap(model._pg202));
        // Send _pg29
        json.put("_pg29", JSONObject.wrap(model._pg29));
        // Send _pg37_e1
        json.put("_pg37_e1", JSONObject.wrap(model._pg37_e1));
        // Send _pg49
        json.put("_pg49", JSONObject.wrap(model._pg49));
        // Send _pg53
        json.put("_pg53", JSONObject.wrap(model._pg53));
        // Send _pg57
        json.put("_pg57", JSONObject.wrap(model._pg57));
        // Send _pg58
        json.put("_pg58", JSONObject.wrap(model._pg58));
        // Send _pg66
        json.put("_pg66", JSONObject.wrap(model._pg66));
        // Send _pg79
        json.put("_pg79", JSONObject.wrap(model._pg79));
        // Send _pg8
        json.put("_pg8", JSONObject.wrap(model._pg8));
        // Send _pg90
        json.put("_pg90", JSONObject.wrap(model._pg90));
        // Send _pg92
        json.put("_pg92", JSONObject.wrap(model._pg92));
        // Send _pg93
        json.put("_pg93", JSONObject.wrap(model._pg93));
        // Send _pg99
        json.put("_pg99", JSONObject.wrap(model._pg99));
        // Send _pg9_e1
        json.put("_pg9_e1", JSONObject.wrap(model._pg9_e1));
        // Send _pre_AP
        json.put("_pre_AP", JSONObject.wrap(model._pre_AP));
        // Send _pre_VP
        json.put("_pre_VP", JSONObject.wrap(model._pre_VP));
        // Send _reg_AP
        json.put("_reg_AP", JSONObject.wrap(model._reg_AP));
        // Send _reg_VP
        json.put("_reg_VP", JSONObject.wrap(model._reg_VP));
        // Send _region0_AVI_timer_t
        json.put("_region0_AVI_timer_t", JSONObject.wrap(model._region0_AVI_timer_t));
        // Send _region1_PVARP_timer_t
        json.put("_region1_PVARP_timer_t", JSONObject.wrap(model._region1_PVARP_timer_t));
        // Send _region2_VRP_timer_t
        json.put("_region2_VRP_timer_t", JSONObject.wrap(model._region2_VRP_timer_t));
        // Send _region3_AEI_timer_t
        json.put("_region3_AEI_timer_t", JSONObject.wrap(model._region3_AEI_timer_t));
        // Send _region4_LRI_timer_t
        json.put("_region4_LRI_timer_t", JSONObject.wrap(model._region4_LRI_timer_t));
        // Send _region5_URI_timer_t
        json.put("_region5_URI_timer_t", JSONObject.wrap(model._region5_URI_timer_t));
        // Send _taken_transitions
        json.put("_taken_transitions", JSONObject.wrap(model._taken_transitions));
        // Send inside_URI
        json.put("inside_URI", JSONObject.wrap(model.inside_URI));
        
        System.out.println(json.toString());
    }
    
    public static void main(String[] args) {
        
        
        // Initialize 
        model.reset();
        
        sendVariables();

        
        while (true) {
            
        
           // Read inputs
           receiveVariables();

           
           _tickstart = System.nanoTime();

        
           // Reaction of model
           model.tick();
           
           _ticktime = System.nanoTime() - _tickstart;

           
           // Send outputs
           sendVariables();

           
           
        }
    }
    
}