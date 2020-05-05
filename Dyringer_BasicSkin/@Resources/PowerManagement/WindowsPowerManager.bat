::Power manager. Firs argument is CPU usage in % [50-100]
@ECHO OFF
SET cpuMaxValue=%1
SET powerScheme=381b4222-f694-41f0-9685-ff5bb260df2e 
SET cpuPwrMgmtGrp=54533251-82be-4824-96c1-47b60b740d00
SET maxCpuSetting=bc5038f7-23e0-4960-96da-33abaf5935ec

powercfg /setacvalueindex %powerScheme% %cpuPwrMgmtGrp% %maxCpuSetting% %cpuMaxValue%
powercfg /setdcvalueindex %powerScheme% %cpuPwrMgmtGrp% %maxCpuSetting% %cpuMaxValue%
powercfg /S %powerScheme%