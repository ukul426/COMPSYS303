<#macro simulation_imports position>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "lib/cJSON.h"
</#macro>

<#macro simulation_init position>
sendVariables(1);
</#macro>

<#macro simulation_in position>
receiveVariables();
</#macro>

<#macro simulation_out position>
sendVariables(0);
</#macro>

<#macro simulation_body position>
void receiveVariables() {
    size_t blocksize = 2048;
    char *buffer = realloc(NULL, sizeof(char) * blocksize);
    size_t i = 0;
    
    // read next line
    int c = getchar();
    while (c != EOF && c != '\n') {
        buffer[i++] = (char) c;
        if (i == blocksize) {
            buffer = realloc(buffer, sizeof(char) * (blocksize += 2048));
        }
        c = getchar();
    }
    buffer[i++] = '\0';
    
    if (c == EOF) {
        exit(EOF);
    }
    
    cJSON *root = cJSON_Parse(buffer);
    cJSON *item = NULL;
    if(root != NULL) {
        // Receive AS
        item = cJSON_GetObjectItemCaseSensitive(root, "AS");
        if(item != NULL) {
            ${tickdata_name}.AS = item->valueint;
        }
        // Receive VS
        item = cJSON_GetObjectItemCaseSensitive(root, "VS");
        if(item != NULL) {
            ${tickdata_name}.VS = item->valueint;
        }
        // Receive deltaT
        item = cJSON_GetObjectItemCaseSensitive(root, "deltaT");
        if(item != NULL) {
            ${tickdata_name}.deltaT = item->valuedouble;
        }
        // Receive AP
        item = cJSON_GetObjectItemCaseSensitive(root, "AP");
        if(item != NULL) {
            ${tickdata_name}.AP = item->valueint;
        }
        // Receive VP
        item = cJSON_GetObjectItemCaseSensitive(root, "VP");
        if(item != NULL) {
            ${tickdata_name}.VP = item->valueint;
        }
        // Receive sleepT
        item = cJSON_GetObjectItemCaseSensitive(root, "sleepT");
        if(item != NULL) {
            ${tickdata_name}.sleepT = item->valuedouble;
        }
        // Receive #ticktime
        item = cJSON_GetObjectItemCaseSensitive(root, "#ticktime");
        if(item != NULL) {
            _ticktime = item->valuedouble;
        }
        // Receive AR
        item = cJSON_GetObjectItemCaseSensitive(root, "AR");
        if(item != NULL) {
            ${tickdata_name}.AR = item->valueint;
        }
        // Receive A_event
        item = cJSON_GetObjectItemCaseSensitive(root, "A_event");
        if(item != NULL) {
            ${tickdata_name}.A_event = item->valueint;
        }
        // Receive VR
        item = cJSON_GetObjectItemCaseSensitive(root, "VR");
        if(item != NULL) {
            ${tickdata_name}.VR = item->valueint;
        }
        // Receive V_event
        item = cJSON_GetObjectItemCaseSensitive(root, "V_event");
        if(item != NULL) {
            ${tickdata_name}.V_event = item->valueint;
        }
        // Receive _GO
        item = cJSON_GetObjectItemCaseSensitive(root, "_GO");
        if(item != NULL) {
            ${tickdata_name}._GO = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig1
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig1");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig1 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig10
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig10");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig10 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig11
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig11");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig11 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig2
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig2");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig2 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig3
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig3");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig3 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig4
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig4");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig4 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig5
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig5");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig5 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig6
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig6");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig6 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig7
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig7");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig7 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig8
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig8");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig8 = item->valueint;
        }
        // Receive _Pacemaker_local__Atrig9
        item = cJSON_GetObjectItemCaseSensitive(root, "_Pacemaker_local__Atrig9");
        if(item != NULL) {
            ${tickdata_name}._Pacemaker_local__Atrig9 = item->valueint;
        }
        // Receive _TERM
        item = cJSON_GetObjectItemCaseSensitive(root, "_TERM");
        if(item != NULL) {
            ${tickdata_name}._TERM = item->valueint;
        }
        // Receive _cg100
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg100");
        if(item != NULL) {
            ${tickdata_name}._cg100 = item->valueint;
        }
        // Receive _cg102
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg102");
        if(item != NULL) {
            ${tickdata_name}._cg102 = item->valueint;
        }
        // Receive _cg108
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg108");
        if(item != NULL) {
            ${tickdata_name}._cg108 = item->valueint;
        }
        // Receive _cg111
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg111");
        if(item != NULL) {
            ${tickdata_name}._cg111 = item->valueint;
        }
        // Receive _cg112
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg112");
        if(item != NULL) {
            ${tickdata_name}._cg112 = item->valueint;
        }
        // Receive _cg115
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg115");
        if(item != NULL) {
            ${tickdata_name}._cg115 = item->valueint;
        }
        // Receive _cg116
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg116");
        if(item != NULL) {
            ${tickdata_name}._cg116 = item->valueint;
        }
        // Receive _cg118
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg118");
        if(item != NULL) {
            ${tickdata_name}._cg118 = item->valueint;
        }
        // Receive _cg12
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg12");
        if(item != NULL) {
            ${tickdata_name}._cg12 = item->valueint;
        }
        // Receive _cg121
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg121");
        if(item != NULL) {
            ${tickdata_name}._cg121 = item->valueint;
        }
        // Receive _cg124
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg124");
        if(item != NULL) {
            ${tickdata_name}._cg124 = item->valueint;
        }
        // Receive _cg127
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg127");
        if(item != NULL) {
            ${tickdata_name}._cg127 = item->valueint;
        }
        // Receive _cg129
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg129");
        if(item != NULL) {
            ${tickdata_name}._cg129 = item->valueint;
        }
        // Receive _cg135
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg135");
        if(item != NULL) {
            ${tickdata_name}._cg135 = item->valueint;
        }
        // Receive _cg138
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg138");
        if(item != NULL) {
            ${tickdata_name}._cg138 = item->valueint;
        }
        // Receive _cg139
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg139");
        if(item != NULL) {
            ${tickdata_name}._cg139 = item->valueint;
        }
        // Receive _cg142
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg142");
        if(item != NULL) {
            ${tickdata_name}._cg142 = item->valueint;
        }
        // Receive _cg143
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg143");
        if(item != NULL) {
            ${tickdata_name}._cg143 = item->valueint;
        }
        // Receive _cg145
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg145");
        if(item != NULL) {
            ${tickdata_name}._cg145 = item->valueint;
        }
        // Receive _cg148
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg148");
        if(item != NULL) {
            ${tickdata_name}._cg148 = item->valueint;
        }
        // Receive _cg151
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg151");
        if(item != NULL) {
            ${tickdata_name}._cg151 = item->valueint;
        }
        // Receive _cg154
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg154");
        if(item != NULL) {
            ${tickdata_name}._cg154 = item->valueint;
        }
        // Receive _cg156
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg156");
        if(item != NULL) {
            ${tickdata_name}._cg156 = item->valueint;
        }
        // Receive _cg17
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg17");
        if(item != NULL) {
            ${tickdata_name}._cg17 = item->valueint;
        }
        // Receive _cg20
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg20");
        if(item != NULL) {
            ${tickdata_name}._cg20 = item->valueint;
        }
        // Receive _cg22
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg22");
        if(item != NULL) {
            ${tickdata_name}._cg22 = item->valueint;
        }
        // Receive _cg28
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg28");
        if(item != NULL) {
            ${tickdata_name}._cg28 = item->valueint;
        }
        // Receive _cg31
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg31");
        if(item != NULL) {
            ${tickdata_name}._cg31 = item->valueint;
        }
        // Receive _cg32
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg32");
        if(item != NULL) {
            ${tickdata_name}._cg32 = item->valueint;
        }
        // Receive _cg35
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg35");
        if(item != NULL) {
            ${tickdata_name}._cg35 = item->valueint;
        }
        // Receive _cg36
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg36");
        if(item != NULL) {
            ${tickdata_name}._cg36 = item->valueint;
        }
        // Receive _cg38
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg38");
        if(item != NULL) {
            ${tickdata_name}._cg38 = item->valueint;
        }
        // Receive _cg4
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg4");
        if(item != NULL) {
            ${tickdata_name}._cg4 = item->valueint;
        }
        // Receive _cg41
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg41");
        if(item != NULL) {
            ${tickdata_name}._cg41 = item->valueint;
        }
        // Receive _cg44
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg44");
        if(item != NULL) {
            ${tickdata_name}._cg44 = item->valueint;
        }
        // Receive _cg47
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg47");
        if(item != NULL) {
            ${tickdata_name}._cg47 = item->valueint;
        }
        // Receive _cg49
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg49");
        if(item != NULL) {
            ${tickdata_name}._cg49 = item->valueint;
        }
        // Receive _cg52
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg52");
        if(item != NULL) {
            ${tickdata_name}._cg52 = item->valueint;
        }
        // Receive _cg57
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg57");
        if(item != NULL) {
            ${tickdata_name}._cg57 = item->valueint;
        }
        // Receive _cg60
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg60");
        if(item != NULL) {
            ${tickdata_name}._cg60 = item->valueint;
        }
        // Receive _cg61
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg61");
        if(item != NULL) {
            ${tickdata_name}._cg61 = item->valueint;
        }
        // Receive _cg64
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg64");
        if(item != NULL) {
            ${tickdata_name}._cg64 = item->valueint;
        }
        // Receive _cg65
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg65");
        if(item != NULL) {
            ${tickdata_name}._cg65 = item->valueint;
        }
        // Receive _cg67
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg67");
        if(item != NULL) {
            ${tickdata_name}._cg67 = item->valueint;
        }
        // Receive _cg7
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg7");
        if(item != NULL) {
            ${tickdata_name}._cg7 = item->valueint;
        }
        // Receive _cg70
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg70");
        if(item != NULL) {
            ${tickdata_name}._cg70 = item->valueint;
        }
        // Receive _cg73
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg73");
        if(item != NULL) {
            ${tickdata_name}._cg73 = item->valueint;
        }
        // Receive _cg76
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg76");
        if(item != NULL) {
            ${tickdata_name}._cg76 = item->valueint;
        }
        // Receive _cg78
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg78");
        if(item != NULL) {
            ${tickdata_name}._cg78 = item->valueint;
        }
        // Receive _cg8
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg8");
        if(item != NULL) {
            ${tickdata_name}._cg8 = item->valueint;
        }
        // Receive _cg84
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg84");
        if(item != NULL) {
            ${tickdata_name}._cg84 = item->valueint;
        }
        // Receive _cg87
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg87");
        if(item != NULL) {
            ${tickdata_name}._cg87 = item->valueint;
        }
        // Receive _cg88
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg88");
        if(item != NULL) {
            ${tickdata_name}._cg88 = item->valueint;
        }
        // Receive _cg92
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg92");
        if(item != NULL) {
            ${tickdata_name}._cg92 = item->valueint;
        }
        // Receive _cg97
        item = cJSON_GetObjectItemCaseSensitive(root, "_cg97");
        if(item != NULL) {
            ${tickdata_name}._cg97 = item->valueint;
        }
        // Receive _g10
        item = cJSON_GetObjectItemCaseSensitive(root, "_g10");
        if(item != NULL) {
            ${tickdata_name}._g10 = item->valueint;
        }
        // Receive _g100
        item = cJSON_GetObjectItemCaseSensitive(root, "_g100");
        if(item != NULL) {
            ${tickdata_name}._g100 = item->valueint;
        }
        // Receive _g101
        item = cJSON_GetObjectItemCaseSensitive(root, "_g101");
        if(item != NULL) {
            ${tickdata_name}._g101 = item->valueint;
        }
        // Receive _g102
        item = cJSON_GetObjectItemCaseSensitive(root, "_g102");
        if(item != NULL) {
            ${tickdata_name}._g102 = item->valueint;
        }
        // Receive _g103
        item = cJSON_GetObjectItemCaseSensitive(root, "_g103");
        if(item != NULL) {
            ${tickdata_name}._g103 = item->valueint;
        }
        // Receive _g104
        item = cJSON_GetObjectItemCaseSensitive(root, "_g104");
        if(item != NULL) {
            ${tickdata_name}._g104 = item->valueint;
        }
        // Receive _g108
        item = cJSON_GetObjectItemCaseSensitive(root, "_g108");
        if(item != NULL) {
            ${tickdata_name}._g108 = item->valueint;
        }
        // Receive _g109
        item = cJSON_GetObjectItemCaseSensitive(root, "_g109");
        if(item != NULL) {
            ${tickdata_name}._g109 = item->valueint;
        }
        // Receive _g11
        item = cJSON_GetObjectItemCaseSensitive(root, "_g11");
        if(item != NULL) {
            ${tickdata_name}._g11 = item->valueint;
        }
        // Receive _g110
        item = cJSON_GetObjectItemCaseSensitive(root, "_g110");
        if(item != NULL) {
            ${tickdata_name}._g110 = item->valueint;
        }
        // Receive _g112
        item = cJSON_GetObjectItemCaseSensitive(root, "_g112");
        if(item != NULL) {
            ${tickdata_name}._g112 = item->valueint;
        }
        // Receive _g114
        item = cJSON_GetObjectItemCaseSensitive(root, "_g114");
        if(item != NULL) {
            ${tickdata_name}._g114 = item->valueint;
        }
        // Receive _g115
        item = cJSON_GetObjectItemCaseSensitive(root, "_g115");
        if(item != NULL) {
            ${tickdata_name}._g115 = item->valueint;
        }
        // Receive _g116
        item = cJSON_GetObjectItemCaseSensitive(root, "_g116");
        if(item != NULL) {
            ${tickdata_name}._g116 = item->valueint;
        }
        // Receive _g117
        item = cJSON_GetObjectItemCaseSensitive(root, "_g117");
        if(item != NULL) {
            ${tickdata_name}._g117 = item->valueint;
        }
        // Receive _g117_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g117_e1");
        if(item != NULL) {
            ${tickdata_name}._g117_e1 = item->valueint;
        }
        // Receive _g118
        item = cJSON_GetObjectItemCaseSensitive(root, "_g118");
        if(item != NULL) {
            ${tickdata_name}._g118 = item->valueint;
        }
        // Receive _g12
        item = cJSON_GetObjectItemCaseSensitive(root, "_g12");
        if(item != NULL) {
            ${tickdata_name}._g12 = item->valueint;
        }
        // Receive _g120
        item = cJSON_GetObjectItemCaseSensitive(root, "_g120");
        if(item != NULL) {
            ${tickdata_name}._g120 = item->valueint;
        }
        // Receive _g121
        item = cJSON_GetObjectItemCaseSensitive(root, "_g121");
        if(item != NULL) {
            ${tickdata_name}._g121 = item->valueint;
        }
        // Receive _g124
        item = cJSON_GetObjectItemCaseSensitive(root, "_g124");
        if(item != NULL) {
            ${tickdata_name}._g124 = item->valueint;
        }
        // Receive _g125
        item = cJSON_GetObjectItemCaseSensitive(root, "_g125");
        if(item != NULL) {
            ${tickdata_name}._g125 = item->valueint;
        }
        // Receive _g126
        item = cJSON_GetObjectItemCaseSensitive(root, "_g126");
        if(item != NULL) {
            ${tickdata_name}._g126 = item->valueint;
        }
        // Receive _g126_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g126_e2");
        if(item != NULL) {
            ${tickdata_name}._g126_e2 = item->valueint;
        }
        // Receive _g127
        item = cJSON_GetObjectItemCaseSensitive(root, "_g127");
        if(item != NULL) {
            ${tickdata_name}._g127 = item->valueint;
        }
        // Receive _g128
        item = cJSON_GetObjectItemCaseSensitive(root, "_g128");
        if(item != NULL) {
            ${tickdata_name}._g128 = item->valueint;
        }
        // Receive _g129
        item = cJSON_GetObjectItemCaseSensitive(root, "_g129");
        if(item != NULL) {
            ${tickdata_name}._g129 = item->valueint;
        }
        // Receive _g13
        item = cJSON_GetObjectItemCaseSensitive(root, "_g13");
        if(item != NULL) {
            ${tickdata_name}._g13 = item->valueint;
        }
        // Receive _g130
        item = cJSON_GetObjectItemCaseSensitive(root, "_g130");
        if(item != NULL) {
            ${tickdata_name}._g130 = item->valueint;
        }
        // Receive _g131
        item = cJSON_GetObjectItemCaseSensitive(root, "_g131");
        if(item != NULL) {
            ${tickdata_name}._g131 = item->valueint;
        }
        // Receive _g135
        item = cJSON_GetObjectItemCaseSensitive(root, "_g135");
        if(item != NULL) {
            ${tickdata_name}._g135 = item->valueint;
        }
        // Receive _g136
        item = cJSON_GetObjectItemCaseSensitive(root, "_g136");
        if(item != NULL) {
            ${tickdata_name}._g136 = item->valueint;
        }
        // Receive _g139
        item = cJSON_GetObjectItemCaseSensitive(root, "_g139");
        if(item != NULL) {
            ${tickdata_name}._g139 = item->valueint;
        }
        // Receive _g14
        item = cJSON_GetObjectItemCaseSensitive(root, "_g14");
        if(item != NULL) {
            ${tickdata_name}._g14 = item->valueint;
        }
        // Receive _g141
        item = cJSON_GetObjectItemCaseSensitive(root, "_g141");
        if(item != NULL) {
            ${tickdata_name}._g141 = item->valueint;
        }
        // Receive _g142
        item = cJSON_GetObjectItemCaseSensitive(root, "_g142");
        if(item != NULL) {
            ${tickdata_name}._g142 = item->valueint;
        }
        // Receive _g143
        item = cJSON_GetObjectItemCaseSensitive(root, "_g143");
        if(item != NULL) {
            ${tickdata_name}._g143 = item->valueint;
        }
        // Receive _g144
        item = cJSON_GetObjectItemCaseSensitive(root, "_g144");
        if(item != NULL) {
            ${tickdata_name}._g144 = item->valueint;
        }
        // Receive _g144_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g144_e1");
        if(item != NULL) {
            ${tickdata_name}._g144_e1 = item->valueint;
        }
        // Receive _g145
        item = cJSON_GetObjectItemCaseSensitive(root, "_g145");
        if(item != NULL) {
            ${tickdata_name}._g145 = item->valueint;
        }
        // Receive _g147
        item = cJSON_GetObjectItemCaseSensitive(root, "_g147");
        if(item != NULL) {
            ${tickdata_name}._g147 = item->valueint;
        }
        // Receive _g148
        item = cJSON_GetObjectItemCaseSensitive(root, "_g148");
        if(item != NULL) {
            ${tickdata_name}._g148 = item->valueint;
        }
        // Receive _g151
        item = cJSON_GetObjectItemCaseSensitive(root, "_g151");
        if(item != NULL) {
            ${tickdata_name}._g151 = item->valueint;
        }
        // Receive _g152
        item = cJSON_GetObjectItemCaseSensitive(root, "_g152");
        if(item != NULL) {
            ${tickdata_name}._g152 = item->valueint;
        }
        // Receive _g153
        item = cJSON_GetObjectItemCaseSensitive(root, "_g153");
        if(item != NULL) {
            ${tickdata_name}._g153 = item->valueint;
        }
        // Receive _g153_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g153_e2");
        if(item != NULL) {
            ${tickdata_name}._g153_e2 = item->valueint;
        }
        // Receive _g154
        item = cJSON_GetObjectItemCaseSensitive(root, "_g154");
        if(item != NULL) {
            ${tickdata_name}._g154 = item->valueint;
        }
        // Receive _g155
        item = cJSON_GetObjectItemCaseSensitive(root, "_g155");
        if(item != NULL) {
            ${tickdata_name}._g155 = item->valueint;
        }
        // Receive _g156
        item = cJSON_GetObjectItemCaseSensitive(root, "_g156");
        if(item != NULL) {
            ${tickdata_name}._g156 = item->valueint;
        }
        // Receive _g157
        item = cJSON_GetObjectItemCaseSensitive(root, "_g157");
        if(item != NULL) {
            ${tickdata_name}._g157 = item->valueint;
        }
        // Receive _g158
        item = cJSON_GetObjectItemCaseSensitive(root, "_g158");
        if(item != NULL) {
            ${tickdata_name}._g158 = item->valueint;
        }
        // Receive _g17
        item = cJSON_GetObjectItemCaseSensitive(root, "_g17");
        if(item != NULL) {
            ${tickdata_name}._g17 = item->valueint;
        }
        // Receive _g174
        item = cJSON_GetObjectItemCaseSensitive(root, "_g174");
        if(item != NULL) {
            ${tickdata_name}._g174 = item->valueint;
        }
        // Receive _g18
        item = cJSON_GetObjectItemCaseSensitive(root, "_g18");
        if(item != NULL) {
            ${tickdata_name}._g18 = item->valueint;
        }
        // Receive _g186
        item = cJSON_GetObjectItemCaseSensitive(root, "_g186");
        if(item != NULL) {
            ${tickdata_name}._g186 = item->valueint;
        }
        // Receive _g19
        item = cJSON_GetObjectItemCaseSensitive(root, "_g19");
        if(item != NULL) {
            ${tickdata_name}._g19 = item->valueint;
        }
        // Receive _g19_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g19_e2");
        if(item != NULL) {
            ${tickdata_name}._g19_e2 = item->valueint;
        }
        // Receive _g20
        item = cJSON_GetObjectItemCaseSensitive(root, "_g20");
        if(item != NULL) {
            ${tickdata_name}._g20 = item->valueint;
        }
        // Receive _g202
        item = cJSON_GetObjectItemCaseSensitive(root, "_g202");
        if(item != NULL) {
            ${tickdata_name}._g202 = item->valueint;
        }
        // Receive _g21
        item = cJSON_GetObjectItemCaseSensitive(root, "_g21");
        if(item != NULL) {
            ${tickdata_name}._g21 = item->valueint;
        }
        // Receive _g22
        item = cJSON_GetObjectItemCaseSensitive(root, "_g22");
        if(item != NULL) {
            ${tickdata_name}._g22 = item->valueint;
        }
        // Receive _g23
        item = cJSON_GetObjectItemCaseSensitive(root, "_g23");
        if(item != NULL) {
            ${tickdata_name}._g23 = item->valueint;
        }
        // Receive _g24
        item = cJSON_GetObjectItemCaseSensitive(root, "_g24");
        if(item != NULL) {
            ${tickdata_name}._g24 = item->valueint;
        }
        // Receive _g28
        item = cJSON_GetObjectItemCaseSensitive(root, "_g28");
        if(item != NULL) {
            ${tickdata_name}._g28 = item->valueint;
        }
        // Receive _g29
        item = cJSON_GetObjectItemCaseSensitive(root, "_g29");
        if(item != NULL) {
            ${tickdata_name}._g29 = item->valueint;
        }
        // Receive _g30
        item = cJSON_GetObjectItemCaseSensitive(root, "_g30");
        if(item != NULL) {
            ${tickdata_name}._g30 = item->valueint;
        }
        // Receive _g32
        item = cJSON_GetObjectItemCaseSensitive(root, "_g32");
        if(item != NULL) {
            ${tickdata_name}._g32 = item->valueint;
        }
        // Receive _g34
        item = cJSON_GetObjectItemCaseSensitive(root, "_g34");
        if(item != NULL) {
            ${tickdata_name}._g34 = item->valueint;
        }
        // Receive _g35
        item = cJSON_GetObjectItemCaseSensitive(root, "_g35");
        if(item != NULL) {
            ${tickdata_name}._g35 = item->valueint;
        }
        // Receive _g36
        item = cJSON_GetObjectItemCaseSensitive(root, "_g36");
        if(item != NULL) {
            ${tickdata_name}._g36 = item->valueint;
        }
        // Receive _g37
        item = cJSON_GetObjectItemCaseSensitive(root, "_g37");
        if(item != NULL) {
            ${tickdata_name}._g37 = item->valueint;
        }
        // Receive _g37_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g37_e1");
        if(item != NULL) {
            ${tickdata_name}._g37_e1 = item->valueint;
        }
        // Receive _g38
        item = cJSON_GetObjectItemCaseSensitive(root, "_g38");
        if(item != NULL) {
            ${tickdata_name}._g38 = item->valueint;
        }
        // Receive _g4
        item = cJSON_GetObjectItemCaseSensitive(root, "_g4");
        if(item != NULL) {
            ${tickdata_name}._g4 = item->valueint;
        }
        // Receive _g40
        item = cJSON_GetObjectItemCaseSensitive(root, "_g40");
        if(item != NULL) {
            ${tickdata_name}._g40 = item->valueint;
        }
        // Receive _g41
        item = cJSON_GetObjectItemCaseSensitive(root, "_g41");
        if(item != NULL) {
            ${tickdata_name}._g41 = item->valueint;
        }
        // Receive _g44
        item = cJSON_GetObjectItemCaseSensitive(root, "_g44");
        if(item != NULL) {
            ${tickdata_name}._g44 = item->valueint;
        }
        // Receive _g45
        item = cJSON_GetObjectItemCaseSensitive(root, "_g45");
        if(item != NULL) {
            ${tickdata_name}._g45 = item->valueint;
        }
        // Receive _g46
        item = cJSON_GetObjectItemCaseSensitive(root, "_g46");
        if(item != NULL) {
            ${tickdata_name}._g46 = item->valueint;
        }
        // Receive _g46_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g46_e2");
        if(item != NULL) {
            ${tickdata_name}._g46_e2 = item->valueint;
        }
        // Receive _g47
        item = cJSON_GetObjectItemCaseSensitive(root, "_g47");
        if(item != NULL) {
            ${tickdata_name}._g47 = item->valueint;
        }
        // Receive _g48
        item = cJSON_GetObjectItemCaseSensitive(root, "_g48");
        if(item != NULL) {
            ${tickdata_name}._g48 = item->valueint;
        }
        // Receive _g49
        item = cJSON_GetObjectItemCaseSensitive(root, "_g49");
        if(item != NULL) {
            ${tickdata_name}._g49 = item->valueint;
        }
        // Receive _g5
        item = cJSON_GetObjectItemCaseSensitive(root, "_g5");
        if(item != NULL) {
            ${tickdata_name}._g5 = item->valueint;
        }
        // Receive _g50
        item = cJSON_GetObjectItemCaseSensitive(root, "_g50");
        if(item != NULL) {
            ${tickdata_name}._g50 = item->valueint;
        }
        // Receive _g51
        item = cJSON_GetObjectItemCaseSensitive(root, "_g51");
        if(item != NULL) {
            ${tickdata_name}._g51 = item->valueint;
        }
        // Receive _g52
        item = cJSON_GetObjectItemCaseSensitive(root, "_g52");
        if(item != NULL) {
            ${tickdata_name}._g52 = item->valueint;
        }
        // Receive _g53
        item = cJSON_GetObjectItemCaseSensitive(root, "_g53");
        if(item != NULL) {
            ${tickdata_name}._g53 = item->valueint;
        }
        // Receive _g57
        item = cJSON_GetObjectItemCaseSensitive(root, "_g57");
        if(item != NULL) {
            ${tickdata_name}._g57 = item->valueint;
        }
        // Receive _g58
        item = cJSON_GetObjectItemCaseSensitive(root, "_g58");
        if(item != NULL) {
            ${tickdata_name}._g58 = item->valueint;
        }
        // Receive _g59
        item = cJSON_GetObjectItemCaseSensitive(root, "_g59");
        if(item != NULL) {
            ${tickdata_name}._g59 = item->valueint;
        }
        // Receive _g61
        item = cJSON_GetObjectItemCaseSensitive(root, "_g61");
        if(item != NULL) {
            ${tickdata_name}._g61 = item->valueint;
        }
        // Receive _g63
        item = cJSON_GetObjectItemCaseSensitive(root, "_g63");
        if(item != NULL) {
            ${tickdata_name}._g63 = item->valueint;
        }
        // Receive _g64
        item = cJSON_GetObjectItemCaseSensitive(root, "_g64");
        if(item != NULL) {
            ${tickdata_name}._g64 = item->valueint;
        }
        // Receive _g65
        item = cJSON_GetObjectItemCaseSensitive(root, "_g65");
        if(item != NULL) {
            ${tickdata_name}._g65 = item->valueint;
        }
        // Receive _g66
        item = cJSON_GetObjectItemCaseSensitive(root, "_g66");
        if(item != NULL) {
            ${tickdata_name}._g66 = item->valueint;
        }
        // Receive _g66_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g66_e1");
        if(item != NULL) {
            ${tickdata_name}._g66_e1 = item->valueint;
        }
        // Receive _g67
        item = cJSON_GetObjectItemCaseSensitive(root, "_g67");
        if(item != NULL) {
            ${tickdata_name}._g67 = item->valueint;
        }
        // Receive _g69
        item = cJSON_GetObjectItemCaseSensitive(root, "_g69");
        if(item != NULL) {
            ${tickdata_name}._g69 = item->valueint;
        }
        // Receive _g7
        item = cJSON_GetObjectItemCaseSensitive(root, "_g7");
        if(item != NULL) {
            ${tickdata_name}._g7 = item->valueint;
        }
        // Receive _g70
        item = cJSON_GetObjectItemCaseSensitive(root, "_g70");
        if(item != NULL) {
            ${tickdata_name}._g70 = item->valueint;
        }
        // Receive _g73
        item = cJSON_GetObjectItemCaseSensitive(root, "_g73");
        if(item != NULL) {
            ${tickdata_name}._g73 = item->valueint;
        }
        // Receive _g74
        item = cJSON_GetObjectItemCaseSensitive(root, "_g74");
        if(item != NULL) {
            ${tickdata_name}._g74 = item->valueint;
        }
        // Receive _g75
        item = cJSON_GetObjectItemCaseSensitive(root, "_g75");
        if(item != NULL) {
            ${tickdata_name}._g75 = item->valueint;
        }
        // Receive _g75_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g75_e2");
        if(item != NULL) {
            ${tickdata_name}._g75_e2 = item->valueint;
        }
        // Receive _g76
        item = cJSON_GetObjectItemCaseSensitive(root, "_g76");
        if(item != NULL) {
            ${tickdata_name}._g76 = item->valueint;
        }
        // Receive _g77
        item = cJSON_GetObjectItemCaseSensitive(root, "_g77");
        if(item != NULL) {
            ${tickdata_name}._g77 = item->valueint;
        }
        // Receive _g78
        item = cJSON_GetObjectItemCaseSensitive(root, "_g78");
        if(item != NULL) {
            ${tickdata_name}._g78 = item->valueint;
        }
        // Receive _g79
        item = cJSON_GetObjectItemCaseSensitive(root, "_g79");
        if(item != NULL) {
            ${tickdata_name}._g79 = item->valueint;
        }
        // Receive _g8
        item = cJSON_GetObjectItemCaseSensitive(root, "_g8");
        if(item != NULL) {
            ${tickdata_name}._g8 = item->valueint;
        }
        // Receive _g80
        item = cJSON_GetObjectItemCaseSensitive(root, "_g80");
        if(item != NULL) {
            ${tickdata_name}._g80 = item->valueint;
        }
        // Receive _g84
        item = cJSON_GetObjectItemCaseSensitive(root, "_g84");
        if(item != NULL) {
            ${tickdata_name}._g84 = item->valueint;
        }
        // Receive _g85
        item = cJSON_GetObjectItemCaseSensitive(root, "_g85");
        if(item != NULL) {
            ${tickdata_name}._g85 = item->valueint;
        }
        // Receive _g87
        item = cJSON_GetObjectItemCaseSensitive(root, "_g87");
        if(item != NULL) {
            ${tickdata_name}._g87 = item->valueint;
        }
        // Receive _g88
        item = cJSON_GetObjectItemCaseSensitive(root, "_g88");
        if(item != NULL) {
            ${tickdata_name}._g88 = item->valueint;
        }
        // Receive _g89
        item = cJSON_GetObjectItemCaseSensitive(root, "_g89");
        if(item != NULL) {
            ${tickdata_name}._g89 = item->valueint;
        }
        // Receive _g89_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g89_e1");
        if(item != NULL) {
            ${tickdata_name}._g89_e1 = item->valueint;
        }
        // Receive _g9
        item = cJSON_GetObjectItemCaseSensitive(root, "_g9");
        if(item != NULL) {
            ${tickdata_name}._g9 = item->valueint;
        }
        // Receive _g90
        item = cJSON_GetObjectItemCaseSensitive(root, "_g90");
        if(item != NULL) {
            ${tickdata_name}._g90 = item->valueint;
        }
        // Receive _g91
        item = cJSON_GetObjectItemCaseSensitive(root, "_g91");
        if(item != NULL) {
            ${tickdata_name}._g91 = item->valueint;
        }
        // Receive _g92
        item = cJSON_GetObjectItemCaseSensitive(root, "_g92");
        if(item != NULL) {
            ${tickdata_name}._g92 = item->valueint;
        }
        // Receive _g93
        item = cJSON_GetObjectItemCaseSensitive(root, "_g93");
        if(item != NULL) {
            ${tickdata_name}._g93 = item->valueint;
        }
        // Receive _g94
        item = cJSON_GetObjectItemCaseSensitive(root, "_g94");
        if(item != NULL) {
            ${tickdata_name}._g94 = item->valueint;
        }
        // Receive _g97
        item = cJSON_GetObjectItemCaseSensitive(root, "_g97");
        if(item != NULL) {
            ${tickdata_name}._g97 = item->valueint;
        }
        // Receive _g98
        item = cJSON_GetObjectItemCaseSensitive(root, "_g98");
        if(item != NULL) {
            ${tickdata_name}._g98 = item->valueint;
        }
        // Receive _g99
        item = cJSON_GetObjectItemCaseSensitive(root, "_g99");
        if(item != NULL) {
            ${tickdata_name}._g99 = item->valueint;
        }
        // Receive _g99_e2
        item = cJSON_GetObjectItemCaseSensitive(root, "_g99_e2");
        if(item != NULL) {
            ${tickdata_name}._g99_e2 = item->valueint;
        }
        // Receive _g9_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_g9_e1");
        if(item != NULL) {
            ${tickdata_name}._g9_e1 = item->valueint;
        }
        // Receive _pg10
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg10");
        if(item != NULL) {
            ${tickdata_name}._pg10 = item->valueint;
        }
        // Receive _pg112
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg112");
        if(item != NULL) {
            ${tickdata_name}._pg112 = item->valueint;
        }
        // Receive _pg116
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg116");
        if(item != NULL) {
            ${tickdata_name}._pg116 = item->valueint;
        }
        // Receive _pg121
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg121");
        if(item != NULL) {
            ${tickdata_name}._pg121 = item->valueint;
        }
        // Receive _pg126
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg126");
        if(item != NULL) {
            ${tickdata_name}._pg126 = item->valueint;
        }
        // Receive _pg13
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg13");
        if(item != NULL) {
            ${tickdata_name}._pg13 = item->valueint;
        }
        // Receive _pg130
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg130");
        if(item != NULL) {
            ${tickdata_name}._pg130 = item->valueint;
        }
        // Receive _pg135
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg135");
        if(item != NULL) {
            ${tickdata_name}._pg135 = item->valueint;
        }
        // Receive _pg136
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg136");
        if(item != NULL) {
            ${tickdata_name}._pg136 = item->valueint;
        }
        // Receive _pg139
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg139");
        if(item != NULL) {
            ${tickdata_name}._pg139 = item->valueint;
        }
        // Receive _pg143
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg143");
        if(item != NULL) {
            ${tickdata_name}._pg143 = item->valueint;
        }
        // Receive _pg145
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg145");
        if(item != NULL) {
            ${tickdata_name}._pg145 = item->valueint;
        }
        // Receive _pg148
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg148");
        if(item != NULL) {
            ${tickdata_name}._pg148 = item->valueint;
        }
        // Receive _pg154
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg154");
        if(item != NULL) {
            ${tickdata_name}._pg154 = item->valueint;
        }
        // Receive _pg156
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg156");
        if(item != NULL) {
            ${tickdata_name}._pg156 = item->valueint;
        }
        // Receive _pg157
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg157");
        if(item != NULL) {
            ${tickdata_name}._pg157 = item->valueint;
        }
        // Receive _pg202
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg202");
        if(item != NULL) {
            ${tickdata_name}._pg202 = item->valueint;
        }
        // Receive _pg29
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg29");
        if(item != NULL) {
            ${tickdata_name}._pg29 = item->valueint;
        }
        // Receive _pg37_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg37_e1");
        if(item != NULL) {
            ${tickdata_name}._pg37_e1 = item->valueint;
        }
        // Receive _pg49
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg49");
        if(item != NULL) {
            ${tickdata_name}._pg49 = item->valueint;
        }
        // Receive _pg53
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg53");
        if(item != NULL) {
            ${tickdata_name}._pg53 = item->valueint;
        }
        // Receive _pg57
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg57");
        if(item != NULL) {
            ${tickdata_name}._pg57 = item->valueint;
        }
        // Receive _pg58
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg58");
        if(item != NULL) {
            ${tickdata_name}._pg58 = item->valueint;
        }
        // Receive _pg66
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg66");
        if(item != NULL) {
            ${tickdata_name}._pg66 = item->valueint;
        }
        // Receive _pg79
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg79");
        if(item != NULL) {
            ${tickdata_name}._pg79 = item->valueint;
        }
        // Receive _pg8
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg8");
        if(item != NULL) {
            ${tickdata_name}._pg8 = item->valueint;
        }
        // Receive _pg90
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg90");
        if(item != NULL) {
            ${tickdata_name}._pg90 = item->valueint;
        }
        // Receive _pg92
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg92");
        if(item != NULL) {
            ${tickdata_name}._pg92 = item->valueint;
        }
        // Receive _pg93
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg93");
        if(item != NULL) {
            ${tickdata_name}._pg93 = item->valueint;
        }
        // Receive _pg99
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg99");
        if(item != NULL) {
            ${tickdata_name}._pg99 = item->valueint;
        }
        // Receive _pg9_e1
        item = cJSON_GetObjectItemCaseSensitive(root, "_pg9_e1");
        if(item != NULL) {
            ${tickdata_name}._pg9_e1 = item->valueint;
        }
        // Receive _pre_AP
        item = cJSON_GetObjectItemCaseSensitive(root, "_pre_AP");
        if(item != NULL) {
            ${tickdata_name}._pre_AP = item->valueint;
        }
        // Receive _pre_VP
        item = cJSON_GetObjectItemCaseSensitive(root, "_pre_VP");
        if(item != NULL) {
            ${tickdata_name}._pre_VP = item->valueint;
        }
        // Receive _reg_AP
        item = cJSON_GetObjectItemCaseSensitive(root, "_reg_AP");
        if(item != NULL) {
            ${tickdata_name}._reg_AP = item->valueint;
        }
        // Receive _reg_VP
        item = cJSON_GetObjectItemCaseSensitive(root, "_reg_VP");
        if(item != NULL) {
            ${tickdata_name}._reg_VP = item->valueint;
        }
        // Receive _region0_AVI_timer_t
        item = cJSON_GetObjectItemCaseSensitive(root, "_region0_AVI_timer_t");
        if(item != NULL) {
            ${tickdata_name}._region0_AVI_timer_t = item->valuedouble;
        }
        // Receive _region1_PVARP_timer_t
        item = cJSON_GetObjectItemCaseSensitive(root, "_region1_PVARP_timer_t");
        if(item != NULL) {
            ${tickdata_name}._region1_PVARP_timer_t = item->valuedouble;
        }
        // Receive _region2_VRP_timer_t
        item = cJSON_GetObjectItemCaseSensitive(root, "_region2_VRP_timer_t");
        if(item != NULL) {
            ${tickdata_name}._region2_VRP_timer_t = item->valuedouble;
        }
        // Receive _region3_AEI_timer_t
        item = cJSON_GetObjectItemCaseSensitive(root, "_region3_AEI_timer_t");
        if(item != NULL) {
            ${tickdata_name}._region3_AEI_timer_t = item->valuedouble;
        }
        // Receive _region4_LRI_timer_t
        item = cJSON_GetObjectItemCaseSensitive(root, "_region4_LRI_timer_t");
        if(item != NULL) {
            ${tickdata_name}._region4_LRI_timer_t = item->valuedouble;
        }
        // Receive _region5_URI_timer_t
        item = cJSON_GetObjectItemCaseSensitive(root, "_region5_URI_timer_t");
        if(item != NULL) {
            ${tickdata_name}._region5_URI_timer_t = item->valuedouble;
        }
        // Receive _taken_transitions
        item = cJSON_GetObjectItemCaseSensitive(root, "_taken_transitions");
        if(item != NULL) {
            for (int i0 = 0; i0 < cJSON_GetArraySize(item); i0++) {
                cJSON *item0 = cJSON_GetArrayItem(item, i0);
                ${tickdata_name}._taken_transitions[i0] = item0->valueint;
            }
        }
        // Receive inside_URI
        item = cJSON_GetObjectItemCaseSensitive(root, "inside_URI");
        if(item != NULL) {
            ${tickdata_name}.inside_URI = item->valueint;
        }
    }
  
    cJSON_Delete(root);
    free(buffer);
}

void sendVariables(int send_interface) {
    cJSON* root = cJSON_CreateObject();
    cJSON *array;
    
    // Send AS
    cJSON_AddItemToObject(root, "AS", cJSON_CreateBool(${tickdata_name}.AS));
    // Send VS
    cJSON_AddItemToObject(root, "VS", cJSON_CreateBool(${tickdata_name}.VS));
    // Send deltaT
    cJSON_AddItemToObject(root, "deltaT", cJSON_CreateNumber(${tickdata_name}.deltaT));
    // Send AP
    cJSON_AddItemToObject(root, "AP", cJSON_CreateBool(${tickdata_name}.AP));
    // Send VP
    cJSON_AddItemToObject(root, "VP", cJSON_CreateBool(${tickdata_name}.VP));
    // Send sleepT
    cJSON_AddItemToObject(root, "sleepT", cJSON_CreateNumber(${tickdata_name}.sleepT));
    // Send #ticktime
    cJSON_AddItemToObject(root, "#ticktime", cJSON_CreateNumber(_ticktime));
    // Send AR
    cJSON_AddItemToObject(root, "AR", cJSON_CreateBool(${tickdata_name}.AR));
    // Send A_event
    cJSON_AddItemToObject(root, "A_event", cJSON_CreateBool(${tickdata_name}.A_event));
    // Send VR
    cJSON_AddItemToObject(root, "VR", cJSON_CreateBool(${tickdata_name}.VR));
    // Send V_event
    cJSON_AddItemToObject(root, "V_event", cJSON_CreateBool(${tickdata_name}.V_event));
    // Send _GO
    cJSON_AddItemToObject(root, "_GO", cJSON_CreateBool(${tickdata_name}._GO));
    // Send _Pacemaker_local__Atrig
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig));
    // Send _Pacemaker_local__Atrig1
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig1", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig1));
    // Send _Pacemaker_local__Atrig10
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig10", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig10));
    // Send _Pacemaker_local__Atrig11
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig11", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig11));
    // Send _Pacemaker_local__Atrig2
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig2", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig2));
    // Send _Pacemaker_local__Atrig3
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig3", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig3));
    // Send _Pacemaker_local__Atrig4
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig4", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig4));
    // Send _Pacemaker_local__Atrig5
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig5", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig5));
    // Send _Pacemaker_local__Atrig6
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig6", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig6));
    // Send _Pacemaker_local__Atrig7
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig7", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig7));
    // Send _Pacemaker_local__Atrig8
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig8", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig8));
    // Send _Pacemaker_local__Atrig9
    cJSON_AddItemToObject(root, "_Pacemaker_local__Atrig9", cJSON_CreateBool(${tickdata_name}._Pacemaker_local__Atrig9));
    // Send _TERM
    cJSON_AddItemToObject(root, "_TERM", cJSON_CreateBool(${tickdata_name}._TERM));
    // Send _cg100
    cJSON_AddItemToObject(root, "_cg100", cJSON_CreateBool(${tickdata_name}._cg100));
    // Send _cg102
    cJSON_AddItemToObject(root, "_cg102", cJSON_CreateBool(${tickdata_name}._cg102));
    // Send _cg108
    cJSON_AddItemToObject(root, "_cg108", cJSON_CreateBool(${tickdata_name}._cg108));
    // Send _cg111
    cJSON_AddItemToObject(root, "_cg111", cJSON_CreateBool(${tickdata_name}._cg111));
    // Send _cg112
    cJSON_AddItemToObject(root, "_cg112", cJSON_CreateBool(${tickdata_name}._cg112));
    // Send _cg115
    cJSON_AddItemToObject(root, "_cg115", cJSON_CreateBool(${tickdata_name}._cg115));
    // Send _cg116
    cJSON_AddItemToObject(root, "_cg116", cJSON_CreateBool(${tickdata_name}._cg116));
    // Send _cg118
    cJSON_AddItemToObject(root, "_cg118", cJSON_CreateBool(${tickdata_name}._cg118));
    // Send _cg12
    cJSON_AddItemToObject(root, "_cg12", cJSON_CreateBool(${tickdata_name}._cg12));
    // Send _cg121
    cJSON_AddItemToObject(root, "_cg121", cJSON_CreateBool(${tickdata_name}._cg121));
    // Send _cg124
    cJSON_AddItemToObject(root, "_cg124", cJSON_CreateBool(${tickdata_name}._cg124));
    // Send _cg127
    cJSON_AddItemToObject(root, "_cg127", cJSON_CreateBool(${tickdata_name}._cg127));
    // Send _cg129
    cJSON_AddItemToObject(root, "_cg129", cJSON_CreateBool(${tickdata_name}._cg129));
    // Send _cg135
    cJSON_AddItemToObject(root, "_cg135", cJSON_CreateBool(${tickdata_name}._cg135));
    // Send _cg138
    cJSON_AddItemToObject(root, "_cg138", cJSON_CreateBool(${tickdata_name}._cg138));
    // Send _cg139
    cJSON_AddItemToObject(root, "_cg139", cJSON_CreateBool(${tickdata_name}._cg139));
    // Send _cg142
    cJSON_AddItemToObject(root, "_cg142", cJSON_CreateBool(${tickdata_name}._cg142));
    // Send _cg143
    cJSON_AddItemToObject(root, "_cg143", cJSON_CreateBool(${tickdata_name}._cg143));
    // Send _cg145
    cJSON_AddItemToObject(root, "_cg145", cJSON_CreateBool(${tickdata_name}._cg145));
    // Send _cg148
    cJSON_AddItemToObject(root, "_cg148", cJSON_CreateBool(${tickdata_name}._cg148));
    // Send _cg151
    cJSON_AddItemToObject(root, "_cg151", cJSON_CreateBool(${tickdata_name}._cg151));
    // Send _cg154
    cJSON_AddItemToObject(root, "_cg154", cJSON_CreateBool(${tickdata_name}._cg154));
    // Send _cg156
    cJSON_AddItemToObject(root, "_cg156", cJSON_CreateBool(${tickdata_name}._cg156));
    // Send _cg17
    cJSON_AddItemToObject(root, "_cg17", cJSON_CreateBool(${tickdata_name}._cg17));
    // Send _cg20
    cJSON_AddItemToObject(root, "_cg20", cJSON_CreateBool(${tickdata_name}._cg20));
    // Send _cg22
    cJSON_AddItemToObject(root, "_cg22", cJSON_CreateBool(${tickdata_name}._cg22));
    // Send _cg28
    cJSON_AddItemToObject(root, "_cg28", cJSON_CreateBool(${tickdata_name}._cg28));
    // Send _cg31
    cJSON_AddItemToObject(root, "_cg31", cJSON_CreateBool(${tickdata_name}._cg31));
    // Send _cg32
    cJSON_AddItemToObject(root, "_cg32", cJSON_CreateBool(${tickdata_name}._cg32));
    // Send _cg35
    cJSON_AddItemToObject(root, "_cg35", cJSON_CreateBool(${tickdata_name}._cg35));
    // Send _cg36
    cJSON_AddItemToObject(root, "_cg36", cJSON_CreateBool(${tickdata_name}._cg36));
    // Send _cg38
    cJSON_AddItemToObject(root, "_cg38", cJSON_CreateBool(${tickdata_name}._cg38));
    // Send _cg4
    cJSON_AddItemToObject(root, "_cg4", cJSON_CreateBool(${tickdata_name}._cg4));
    // Send _cg41
    cJSON_AddItemToObject(root, "_cg41", cJSON_CreateBool(${tickdata_name}._cg41));
    // Send _cg44
    cJSON_AddItemToObject(root, "_cg44", cJSON_CreateBool(${tickdata_name}._cg44));
    // Send _cg47
    cJSON_AddItemToObject(root, "_cg47", cJSON_CreateBool(${tickdata_name}._cg47));
    // Send _cg49
    cJSON_AddItemToObject(root, "_cg49", cJSON_CreateBool(${tickdata_name}._cg49));
    // Send _cg52
    cJSON_AddItemToObject(root, "_cg52", cJSON_CreateBool(${tickdata_name}._cg52));
    // Send _cg57
    cJSON_AddItemToObject(root, "_cg57", cJSON_CreateBool(${tickdata_name}._cg57));
    // Send _cg60
    cJSON_AddItemToObject(root, "_cg60", cJSON_CreateBool(${tickdata_name}._cg60));
    // Send _cg61
    cJSON_AddItemToObject(root, "_cg61", cJSON_CreateBool(${tickdata_name}._cg61));
    // Send _cg64
    cJSON_AddItemToObject(root, "_cg64", cJSON_CreateBool(${tickdata_name}._cg64));
    // Send _cg65
    cJSON_AddItemToObject(root, "_cg65", cJSON_CreateBool(${tickdata_name}._cg65));
    // Send _cg67
    cJSON_AddItemToObject(root, "_cg67", cJSON_CreateBool(${tickdata_name}._cg67));
    // Send _cg7
    cJSON_AddItemToObject(root, "_cg7", cJSON_CreateBool(${tickdata_name}._cg7));
    // Send _cg70
    cJSON_AddItemToObject(root, "_cg70", cJSON_CreateBool(${tickdata_name}._cg70));
    // Send _cg73
    cJSON_AddItemToObject(root, "_cg73", cJSON_CreateBool(${tickdata_name}._cg73));
    // Send _cg76
    cJSON_AddItemToObject(root, "_cg76", cJSON_CreateBool(${tickdata_name}._cg76));
    // Send _cg78
    cJSON_AddItemToObject(root, "_cg78", cJSON_CreateBool(${tickdata_name}._cg78));
    // Send _cg8
    cJSON_AddItemToObject(root, "_cg8", cJSON_CreateBool(${tickdata_name}._cg8));
    // Send _cg84
    cJSON_AddItemToObject(root, "_cg84", cJSON_CreateBool(${tickdata_name}._cg84));
    // Send _cg87
    cJSON_AddItemToObject(root, "_cg87", cJSON_CreateBool(${tickdata_name}._cg87));
    // Send _cg88
    cJSON_AddItemToObject(root, "_cg88", cJSON_CreateBool(${tickdata_name}._cg88));
    // Send _cg92
    cJSON_AddItemToObject(root, "_cg92", cJSON_CreateBool(${tickdata_name}._cg92));
    // Send _cg97
    cJSON_AddItemToObject(root, "_cg97", cJSON_CreateBool(${tickdata_name}._cg97));
    // Send _g10
    cJSON_AddItemToObject(root, "_g10", cJSON_CreateBool(${tickdata_name}._g10));
    // Send _g100
    cJSON_AddItemToObject(root, "_g100", cJSON_CreateBool(${tickdata_name}._g100));
    // Send _g101
    cJSON_AddItemToObject(root, "_g101", cJSON_CreateBool(${tickdata_name}._g101));
    // Send _g102
    cJSON_AddItemToObject(root, "_g102", cJSON_CreateBool(${tickdata_name}._g102));
    // Send _g103
    cJSON_AddItemToObject(root, "_g103", cJSON_CreateBool(${tickdata_name}._g103));
    // Send _g104
    cJSON_AddItemToObject(root, "_g104", cJSON_CreateBool(${tickdata_name}._g104));
    // Send _g108
    cJSON_AddItemToObject(root, "_g108", cJSON_CreateBool(${tickdata_name}._g108));
    // Send _g109
    cJSON_AddItemToObject(root, "_g109", cJSON_CreateBool(${tickdata_name}._g109));
    // Send _g11
    cJSON_AddItemToObject(root, "_g11", cJSON_CreateBool(${tickdata_name}._g11));
    // Send _g110
    cJSON_AddItemToObject(root, "_g110", cJSON_CreateBool(${tickdata_name}._g110));
    // Send _g112
    cJSON_AddItemToObject(root, "_g112", cJSON_CreateBool(${tickdata_name}._g112));
    // Send _g114
    cJSON_AddItemToObject(root, "_g114", cJSON_CreateBool(${tickdata_name}._g114));
    // Send _g115
    cJSON_AddItemToObject(root, "_g115", cJSON_CreateBool(${tickdata_name}._g115));
    // Send _g116
    cJSON_AddItemToObject(root, "_g116", cJSON_CreateBool(${tickdata_name}._g116));
    // Send _g117
    cJSON_AddItemToObject(root, "_g117", cJSON_CreateBool(${tickdata_name}._g117));
    // Send _g117_e1
    cJSON_AddItemToObject(root, "_g117_e1", cJSON_CreateBool(${tickdata_name}._g117_e1));
    // Send _g118
    cJSON_AddItemToObject(root, "_g118", cJSON_CreateBool(${tickdata_name}._g118));
    // Send _g12
    cJSON_AddItemToObject(root, "_g12", cJSON_CreateBool(${tickdata_name}._g12));
    // Send _g120
    cJSON_AddItemToObject(root, "_g120", cJSON_CreateBool(${tickdata_name}._g120));
    // Send _g121
    cJSON_AddItemToObject(root, "_g121", cJSON_CreateBool(${tickdata_name}._g121));
    // Send _g124
    cJSON_AddItemToObject(root, "_g124", cJSON_CreateBool(${tickdata_name}._g124));
    // Send _g125
    cJSON_AddItemToObject(root, "_g125", cJSON_CreateBool(${tickdata_name}._g125));
    // Send _g126
    cJSON_AddItemToObject(root, "_g126", cJSON_CreateBool(${tickdata_name}._g126));
    // Send _g126_e2
    cJSON_AddItemToObject(root, "_g126_e2", cJSON_CreateBool(${tickdata_name}._g126_e2));
    // Send _g127
    cJSON_AddItemToObject(root, "_g127", cJSON_CreateBool(${tickdata_name}._g127));
    // Send _g128
    cJSON_AddItemToObject(root, "_g128", cJSON_CreateBool(${tickdata_name}._g128));
    // Send _g129
    cJSON_AddItemToObject(root, "_g129", cJSON_CreateBool(${tickdata_name}._g129));
    // Send _g13
    cJSON_AddItemToObject(root, "_g13", cJSON_CreateBool(${tickdata_name}._g13));
    // Send _g130
    cJSON_AddItemToObject(root, "_g130", cJSON_CreateBool(${tickdata_name}._g130));
    // Send _g131
    cJSON_AddItemToObject(root, "_g131", cJSON_CreateBool(${tickdata_name}._g131));
    // Send _g135
    cJSON_AddItemToObject(root, "_g135", cJSON_CreateBool(${tickdata_name}._g135));
    // Send _g136
    cJSON_AddItemToObject(root, "_g136", cJSON_CreateBool(${tickdata_name}._g136));
    // Send _g139
    cJSON_AddItemToObject(root, "_g139", cJSON_CreateBool(${tickdata_name}._g139));
    // Send _g14
    cJSON_AddItemToObject(root, "_g14", cJSON_CreateBool(${tickdata_name}._g14));
    // Send _g141
    cJSON_AddItemToObject(root, "_g141", cJSON_CreateBool(${tickdata_name}._g141));
    // Send _g142
    cJSON_AddItemToObject(root, "_g142", cJSON_CreateBool(${tickdata_name}._g142));
    // Send _g143
    cJSON_AddItemToObject(root, "_g143", cJSON_CreateBool(${tickdata_name}._g143));
    // Send _g144
    cJSON_AddItemToObject(root, "_g144", cJSON_CreateBool(${tickdata_name}._g144));
    // Send _g144_e1
    cJSON_AddItemToObject(root, "_g144_e1", cJSON_CreateBool(${tickdata_name}._g144_e1));
    // Send _g145
    cJSON_AddItemToObject(root, "_g145", cJSON_CreateBool(${tickdata_name}._g145));
    // Send _g147
    cJSON_AddItemToObject(root, "_g147", cJSON_CreateBool(${tickdata_name}._g147));
    // Send _g148
    cJSON_AddItemToObject(root, "_g148", cJSON_CreateBool(${tickdata_name}._g148));
    // Send _g151
    cJSON_AddItemToObject(root, "_g151", cJSON_CreateBool(${tickdata_name}._g151));
    // Send _g152
    cJSON_AddItemToObject(root, "_g152", cJSON_CreateBool(${tickdata_name}._g152));
    // Send _g153
    cJSON_AddItemToObject(root, "_g153", cJSON_CreateBool(${tickdata_name}._g153));
    // Send _g153_e2
    cJSON_AddItemToObject(root, "_g153_e2", cJSON_CreateBool(${tickdata_name}._g153_e2));
    // Send _g154
    cJSON_AddItemToObject(root, "_g154", cJSON_CreateBool(${tickdata_name}._g154));
    // Send _g155
    cJSON_AddItemToObject(root, "_g155", cJSON_CreateBool(${tickdata_name}._g155));
    // Send _g156
    cJSON_AddItemToObject(root, "_g156", cJSON_CreateBool(${tickdata_name}._g156));
    // Send _g157
    cJSON_AddItemToObject(root, "_g157", cJSON_CreateBool(${tickdata_name}._g157));
    // Send _g158
    cJSON_AddItemToObject(root, "_g158", cJSON_CreateBool(${tickdata_name}._g158));
    // Send _g17
    cJSON_AddItemToObject(root, "_g17", cJSON_CreateBool(${tickdata_name}._g17));
    // Send _g174
    cJSON_AddItemToObject(root, "_g174", cJSON_CreateBool(${tickdata_name}._g174));
    // Send _g18
    cJSON_AddItemToObject(root, "_g18", cJSON_CreateBool(${tickdata_name}._g18));
    // Send _g186
    cJSON_AddItemToObject(root, "_g186", cJSON_CreateBool(${tickdata_name}._g186));
    // Send _g19
    cJSON_AddItemToObject(root, "_g19", cJSON_CreateBool(${tickdata_name}._g19));
    // Send _g19_e2
    cJSON_AddItemToObject(root, "_g19_e2", cJSON_CreateBool(${tickdata_name}._g19_e2));
    // Send _g20
    cJSON_AddItemToObject(root, "_g20", cJSON_CreateBool(${tickdata_name}._g20));
    // Send _g202
    cJSON_AddItemToObject(root, "_g202", cJSON_CreateBool(${tickdata_name}._g202));
    // Send _g21
    cJSON_AddItemToObject(root, "_g21", cJSON_CreateBool(${tickdata_name}._g21));
    // Send _g22
    cJSON_AddItemToObject(root, "_g22", cJSON_CreateBool(${tickdata_name}._g22));
    // Send _g23
    cJSON_AddItemToObject(root, "_g23", cJSON_CreateBool(${tickdata_name}._g23));
    // Send _g24
    cJSON_AddItemToObject(root, "_g24", cJSON_CreateBool(${tickdata_name}._g24));
    // Send _g28
    cJSON_AddItemToObject(root, "_g28", cJSON_CreateBool(${tickdata_name}._g28));
    // Send _g29
    cJSON_AddItemToObject(root, "_g29", cJSON_CreateBool(${tickdata_name}._g29));
    // Send _g30
    cJSON_AddItemToObject(root, "_g30", cJSON_CreateBool(${tickdata_name}._g30));
    // Send _g32
    cJSON_AddItemToObject(root, "_g32", cJSON_CreateBool(${tickdata_name}._g32));
    // Send _g34
    cJSON_AddItemToObject(root, "_g34", cJSON_CreateBool(${tickdata_name}._g34));
    // Send _g35
    cJSON_AddItemToObject(root, "_g35", cJSON_CreateBool(${tickdata_name}._g35));
    // Send _g36
    cJSON_AddItemToObject(root, "_g36", cJSON_CreateBool(${tickdata_name}._g36));
    // Send _g37
    cJSON_AddItemToObject(root, "_g37", cJSON_CreateBool(${tickdata_name}._g37));
    // Send _g37_e1
    cJSON_AddItemToObject(root, "_g37_e1", cJSON_CreateBool(${tickdata_name}._g37_e1));
    // Send _g38
    cJSON_AddItemToObject(root, "_g38", cJSON_CreateBool(${tickdata_name}._g38));
    // Send _g4
    cJSON_AddItemToObject(root, "_g4", cJSON_CreateBool(${tickdata_name}._g4));
    // Send _g40
    cJSON_AddItemToObject(root, "_g40", cJSON_CreateBool(${tickdata_name}._g40));
    // Send _g41
    cJSON_AddItemToObject(root, "_g41", cJSON_CreateBool(${tickdata_name}._g41));
    // Send _g44
    cJSON_AddItemToObject(root, "_g44", cJSON_CreateBool(${tickdata_name}._g44));
    // Send _g45
    cJSON_AddItemToObject(root, "_g45", cJSON_CreateBool(${tickdata_name}._g45));
    // Send _g46
    cJSON_AddItemToObject(root, "_g46", cJSON_CreateBool(${tickdata_name}._g46));
    // Send _g46_e2
    cJSON_AddItemToObject(root, "_g46_e2", cJSON_CreateBool(${tickdata_name}._g46_e2));
    // Send _g47
    cJSON_AddItemToObject(root, "_g47", cJSON_CreateBool(${tickdata_name}._g47));
    // Send _g48
    cJSON_AddItemToObject(root, "_g48", cJSON_CreateBool(${tickdata_name}._g48));
    // Send _g49
    cJSON_AddItemToObject(root, "_g49", cJSON_CreateBool(${tickdata_name}._g49));
    // Send _g5
    cJSON_AddItemToObject(root, "_g5", cJSON_CreateBool(${tickdata_name}._g5));
    // Send _g50
    cJSON_AddItemToObject(root, "_g50", cJSON_CreateBool(${tickdata_name}._g50));
    // Send _g51
    cJSON_AddItemToObject(root, "_g51", cJSON_CreateBool(${tickdata_name}._g51));
    // Send _g52
    cJSON_AddItemToObject(root, "_g52", cJSON_CreateBool(${tickdata_name}._g52));
    // Send _g53
    cJSON_AddItemToObject(root, "_g53", cJSON_CreateBool(${tickdata_name}._g53));
    // Send _g57
    cJSON_AddItemToObject(root, "_g57", cJSON_CreateBool(${tickdata_name}._g57));
    // Send _g58
    cJSON_AddItemToObject(root, "_g58", cJSON_CreateBool(${tickdata_name}._g58));
    // Send _g59
    cJSON_AddItemToObject(root, "_g59", cJSON_CreateBool(${tickdata_name}._g59));
    // Send _g61
    cJSON_AddItemToObject(root, "_g61", cJSON_CreateBool(${tickdata_name}._g61));
    // Send _g63
    cJSON_AddItemToObject(root, "_g63", cJSON_CreateBool(${tickdata_name}._g63));
    // Send _g64
    cJSON_AddItemToObject(root, "_g64", cJSON_CreateBool(${tickdata_name}._g64));
    // Send _g65
    cJSON_AddItemToObject(root, "_g65", cJSON_CreateBool(${tickdata_name}._g65));
    // Send _g66
    cJSON_AddItemToObject(root, "_g66", cJSON_CreateBool(${tickdata_name}._g66));
    // Send _g66_e1
    cJSON_AddItemToObject(root, "_g66_e1", cJSON_CreateBool(${tickdata_name}._g66_e1));
    // Send _g67
    cJSON_AddItemToObject(root, "_g67", cJSON_CreateBool(${tickdata_name}._g67));
    // Send _g69
    cJSON_AddItemToObject(root, "_g69", cJSON_CreateBool(${tickdata_name}._g69));
    // Send _g7
    cJSON_AddItemToObject(root, "_g7", cJSON_CreateBool(${tickdata_name}._g7));
    // Send _g70
    cJSON_AddItemToObject(root, "_g70", cJSON_CreateBool(${tickdata_name}._g70));
    // Send _g73
    cJSON_AddItemToObject(root, "_g73", cJSON_CreateBool(${tickdata_name}._g73));
    // Send _g74
    cJSON_AddItemToObject(root, "_g74", cJSON_CreateBool(${tickdata_name}._g74));
    // Send _g75
    cJSON_AddItemToObject(root, "_g75", cJSON_CreateBool(${tickdata_name}._g75));
    // Send _g75_e2
    cJSON_AddItemToObject(root, "_g75_e2", cJSON_CreateBool(${tickdata_name}._g75_e2));
    // Send _g76
    cJSON_AddItemToObject(root, "_g76", cJSON_CreateBool(${tickdata_name}._g76));
    // Send _g77
    cJSON_AddItemToObject(root, "_g77", cJSON_CreateBool(${tickdata_name}._g77));
    // Send _g78
    cJSON_AddItemToObject(root, "_g78", cJSON_CreateBool(${tickdata_name}._g78));
    // Send _g79
    cJSON_AddItemToObject(root, "_g79", cJSON_CreateBool(${tickdata_name}._g79));
    // Send _g8
    cJSON_AddItemToObject(root, "_g8", cJSON_CreateBool(${tickdata_name}._g8));
    // Send _g80
    cJSON_AddItemToObject(root, "_g80", cJSON_CreateBool(${tickdata_name}._g80));
    // Send _g84
    cJSON_AddItemToObject(root, "_g84", cJSON_CreateBool(${tickdata_name}._g84));
    // Send _g85
    cJSON_AddItemToObject(root, "_g85", cJSON_CreateBool(${tickdata_name}._g85));
    // Send _g87
    cJSON_AddItemToObject(root, "_g87", cJSON_CreateBool(${tickdata_name}._g87));
    // Send _g88
    cJSON_AddItemToObject(root, "_g88", cJSON_CreateBool(${tickdata_name}._g88));
    // Send _g89
    cJSON_AddItemToObject(root, "_g89", cJSON_CreateBool(${tickdata_name}._g89));
    // Send _g89_e1
    cJSON_AddItemToObject(root, "_g89_e1", cJSON_CreateBool(${tickdata_name}._g89_e1));
    // Send _g9
    cJSON_AddItemToObject(root, "_g9", cJSON_CreateBool(${tickdata_name}._g9));
    // Send _g90
    cJSON_AddItemToObject(root, "_g90", cJSON_CreateBool(${tickdata_name}._g90));
    // Send _g91
    cJSON_AddItemToObject(root, "_g91", cJSON_CreateBool(${tickdata_name}._g91));
    // Send _g92
    cJSON_AddItemToObject(root, "_g92", cJSON_CreateBool(${tickdata_name}._g92));
    // Send _g93
    cJSON_AddItemToObject(root, "_g93", cJSON_CreateBool(${tickdata_name}._g93));
    // Send _g94
    cJSON_AddItemToObject(root, "_g94", cJSON_CreateBool(${tickdata_name}._g94));
    // Send _g97
    cJSON_AddItemToObject(root, "_g97", cJSON_CreateBool(${tickdata_name}._g97));
    // Send _g98
    cJSON_AddItemToObject(root, "_g98", cJSON_CreateBool(${tickdata_name}._g98));
    // Send _g99
    cJSON_AddItemToObject(root, "_g99", cJSON_CreateBool(${tickdata_name}._g99));
    // Send _g99_e2
    cJSON_AddItemToObject(root, "_g99_e2", cJSON_CreateBool(${tickdata_name}._g99_e2));
    // Send _g9_e1
    cJSON_AddItemToObject(root, "_g9_e1", cJSON_CreateBool(${tickdata_name}._g9_e1));
    // Send _pg10
    cJSON_AddItemToObject(root, "_pg10", cJSON_CreateBool(${tickdata_name}._pg10));
    // Send _pg112
    cJSON_AddItemToObject(root, "_pg112", cJSON_CreateBool(${tickdata_name}._pg112));
    // Send _pg116
    cJSON_AddItemToObject(root, "_pg116", cJSON_CreateBool(${tickdata_name}._pg116));
    // Send _pg121
    cJSON_AddItemToObject(root, "_pg121", cJSON_CreateBool(${tickdata_name}._pg121));
    // Send _pg126
    cJSON_AddItemToObject(root, "_pg126", cJSON_CreateBool(${tickdata_name}._pg126));
    // Send _pg13
    cJSON_AddItemToObject(root, "_pg13", cJSON_CreateBool(${tickdata_name}._pg13));
    // Send _pg130
    cJSON_AddItemToObject(root, "_pg130", cJSON_CreateBool(${tickdata_name}._pg130));
    // Send _pg135
    cJSON_AddItemToObject(root, "_pg135", cJSON_CreateBool(${tickdata_name}._pg135));
    // Send _pg136
    cJSON_AddItemToObject(root, "_pg136", cJSON_CreateBool(${tickdata_name}._pg136));
    // Send _pg139
    cJSON_AddItemToObject(root, "_pg139", cJSON_CreateBool(${tickdata_name}._pg139));
    // Send _pg143
    cJSON_AddItemToObject(root, "_pg143", cJSON_CreateBool(${tickdata_name}._pg143));
    // Send _pg145
    cJSON_AddItemToObject(root, "_pg145", cJSON_CreateBool(${tickdata_name}._pg145));
    // Send _pg148
    cJSON_AddItemToObject(root, "_pg148", cJSON_CreateBool(${tickdata_name}._pg148));
    // Send _pg154
    cJSON_AddItemToObject(root, "_pg154", cJSON_CreateBool(${tickdata_name}._pg154));
    // Send _pg156
    cJSON_AddItemToObject(root, "_pg156", cJSON_CreateBool(${tickdata_name}._pg156));
    // Send _pg157
    cJSON_AddItemToObject(root, "_pg157", cJSON_CreateBool(${tickdata_name}._pg157));
    // Send _pg202
    cJSON_AddItemToObject(root, "_pg202", cJSON_CreateBool(${tickdata_name}._pg202));
    // Send _pg29
    cJSON_AddItemToObject(root, "_pg29", cJSON_CreateBool(${tickdata_name}._pg29));
    // Send _pg37_e1
    cJSON_AddItemToObject(root, "_pg37_e1", cJSON_CreateBool(${tickdata_name}._pg37_e1));
    // Send _pg49
    cJSON_AddItemToObject(root, "_pg49", cJSON_CreateBool(${tickdata_name}._pg49));
    // Send _pg53
    cJSON_AddItemToObject(root, "_pg53", cJSON_CreateBool(${tickdata_name}._pg53));
    // Send _pg57
    cJSON_AddItemToObject(root, "_pg57", cJSON_CreateBool(${tickdata_name}._pg57));
    // Send _pg58
    cJSON_AddItemToObject(root, "_pg58", cJSON_CreateBool(${tickdata_name}._pg58));
    // Send _pg66
    cJSON_AddItemToObject(root, "_pg66", cJSON_CreateBool(${tickdata_name}._pg66));
    // Send _pg79
    cJSON_AddItemToObject(root, "_pg79", cJSON_CreateBool(${tickdata_name}._pg79));
    // Send _pg8
    cJSON_AddItemToObject(root, "_pg8", cJSON_CreateBool(${tickdata_name}._pg8));
    // Send _pg90
    cJSON_AddItemToObject(root, "_pg90", cJSON_CreateBool(${tickdata_name}._pg90));
    // Send _pg92
    cJSON_AddItemToObject(root, "_pg92", cJSON_CreateBool(${tickdata_name}._pg92));
    // Send _pg93
    cJSON_AddItemToObject(root, "_pg93", cJSON_CreateBool(${tickdata_name}._pg93));
    // Send _pg99
    cJSON_AddItemToObject(root, "_pg99", cJSON_CreateBool(${tickdata_name}._pg99));
    // Send _pg9_e1
    cJSON_AddItemToObject(root, "_pg9_e1", cJSON_CreateBool(${tickdata_name}._pg9_e1));
    // Send _pre_AP
    cJSON_AddItemToObject(root, "_pre_AP", cJSON_CreateBool(${tickdata_name}._pre_AP));
    // Send _pre_VP
    cJSON_AddItemToObject(root, "_pre_VP", cJSON_CreateBool(${tickdata_name}._pre_VP));
    // Send _reg_AP
    cJSON_AddItemToObject(root, "_reg_AP", cJSON_CreateBool(${tickdata_name}._reg_AP));
    // Send _reg_VP
    cJSON_AddItemToObject(root, "_reg_VP", cJSON_CreateBool(${tickdata_name}._reg_VP));
    // Send _region0_AVI_timer_t
    cJSON_AddItemToObject(root, "_region0_AVI_timer_t", cJSON_CreateNumber(${tickdata_name}._region0_AVI_timer_t));
    // Send _region1_PVARP_timer_t
    cJSON_AddItemToObject(root, "_region1_PVARP_timer_t", cJSON_CreateNumber(${tickdata_name}._region1_PVARP_timer_t));
    // Send _region2_VRP_timer_t
    cJSON_AddItemToObject(root, "_region2_VRP_timer_t", cJSON_CreateNumber(${tickdata_name}._region2_VRP_timer_t));
    // Send _region3_AEI_timer_t
    cJSON_AddItemToObject(root, "_region3_AEI_timer_t", cJSON_CreateNumber(${tickdata_name}._region3_AEI_timer_t));
    // Send _region4_LRI_timer_t
    cJSON_AddItemToObject(root, "_region4_LRI_timer_t", cJSON_CreateNumber(${tickdata_name}._region4_LRI_timer_t));
    // Send _region5_URI_timer_t
    cJSON_AddItemToObject(root, "_region5_URI_timer_t", cJSON_CreateNumber(${tickdata_name}._region5_URI_timer_t));
    // Send _taken_transitions
    array = cJSON_CreateArray();
    for (int i0 = 0; i0 < 19; i0++) {
        cJSON *item0 = cJSON_CreateNumber(${tickdata_name}._taken_transitions[i0]);
        cJSON_AddItemToArray(array, item0);
    }
    cJSON_AddItemToObject(root, "_taken_transitions", array);
    // Send inside_URI
    cJSON_AddItemToObject(root, "inside_URI", cJSON_CreateBool(${tickdata_name}.inside_URI));
    
    if (send_interface) {
        cJSON *interface = cJSON_CreateObject();
        cJSON *info, *properties;
        
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VS", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("input"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("dynamic-ticks"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "deltaT", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("output"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("dynamic-ticks"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "sleepT", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("ticktime"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "#ticktime", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "AR", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "A_event", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "VR", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("signal"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "V_event", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("goGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_GO", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig11", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig3", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig5", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig6", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_Pacemaker_local__Atrig9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("term"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_TERM", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg100", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg102", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg108", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg111", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg115", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg118", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg12", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg121", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg124", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg127", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg129", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg135", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg138", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg139", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg142", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg143", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg145", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg148", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg151", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg154", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg156", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg17", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg20", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg22", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg28", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg31", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg32", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg35", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg36", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg38", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg41", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg44", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg47", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg49", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg52", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg57", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg60", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg61", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg64", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg65", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg67", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg70", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg73", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg76", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg78", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg84", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg87", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg88", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg92", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("conditionalGuard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_cg97", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g100", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g101", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g102", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g103", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g104", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g108", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g109", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g11", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g110", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g114", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g115", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g117", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g117_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g118", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g12", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g120", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g121", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g124", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g125", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g126", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g126_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g127", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g128", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g129", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g130", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g131", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g135", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g136", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g139", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g14", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g141", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g142", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g143", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g144", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g144_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g145", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g147", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g148", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g151", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g152", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g153", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g153_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g154", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g155", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g156", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g157", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g158", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g17", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g174", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g18", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g186", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g19", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g19_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g20", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g202", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g21", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g22", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g23", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g24", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g28", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g29", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g30", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g32", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g34", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g35", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g36", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g37", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g37_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g38", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g4", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g40", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g41", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g44", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g45", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g46", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g46_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g47", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g48", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g49", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g5", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g50", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g51", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g52", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g53", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g57", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g58", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g59", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g61", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g63", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g64", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g65", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g66", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g66_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g67", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g69", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g7", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g70", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g73", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g74", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g75", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g75_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g76", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g77", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g78", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g79", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g80", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g84", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g85", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g87", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g88", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g89", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g89_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g9", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g90", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g91", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g92", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g93", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g94", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g97", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g98", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g99", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g99_e2", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("emptyGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_g9_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg10", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg112", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg116", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg121", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg126", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg13", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg130", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg135", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg136", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg139", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg143", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg145", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg148", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg154", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg156", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg157", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg202", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg29", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg37_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg49", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg53", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg57", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg58", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg66", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg79", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg8", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg90", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg92", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg93", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg99", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("preGuard"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("guard"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pg9_e1", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pre_AP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_pre_VP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_reg_AP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("pre"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_reg_VP", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_region0_AVI_timer_t", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_region1_PVARP_timer_t", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_region2_VRP_timer_t", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_region3_AEI_timer_t", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_region4_LRI_timer_t", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("float"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_region5_URI_timer_t", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToArray(properties, cJSON_CreateString("sccharts-generated"));
        cJSON_AddItemToArray(properties, cJSON_CreateString("simulation"));
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("int"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "_taken_transitions", info);
        info = cJSON_CreateObject();
        properties = cJSON_CreateArray();
        cJSON_AddItemToObject(info, "type", cJSON_CreateString("bool"));
        cJSON_AddItemToObject(info, "properties", properties);
        cJSON_AddItemToObject(interface, "inside_URI", info);
        
        cJSON_AddItemToObject(root, "#interface", interface);
    }

    // Get JSON object as string
    char* outString = cJSON_Print(root);
    cJSON_Minify(outString);
    // Flush to stdout
    printf("%s\n", outString);
    fflush(stdout);

    cJSON_Delete(root);
    free(outString);
}
</#macro>
