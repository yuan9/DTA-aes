wvResizeWindow -win $_nWave1 65 24 1615 1026
wvSetPosition -win $_nWave1 {("G1" 0)}
wvOpenFile -win $_nWave1 {/home/dtatest/DTA-aes/yuan_power.fsdb}
wvSelectGroup -win $_nWave1 {G1}
wvGetSignalOpen -win $_nWave1
wvGetSignalSetScope -win $_nWave1 "/"
wvSetPosition -win $_nWave1 {("G1" 1)}
wvSetPosition -win $_nWave1 {("G1" 1)}
wvAddSignal -win $_nWave1 -clear
wvAddSignal -win $_nWave1 -group {"G1" \
{/Pc\(pp_root\)} -color ID_RED5 \
}
wvAddSignal -win $_nWave1 -group {"G2" \
}
wvSelectSignal -win $_nWave1 {( "G1" 1 )} 
wvSetPosition -win $_nWave1 {("G1" 1)}
wvGetSignalClose -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvZoomAll -win $_nWave1
wvExit
