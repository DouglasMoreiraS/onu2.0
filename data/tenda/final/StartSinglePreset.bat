@echo off
title TendaSinglePresetUpgrade


if not exist RouterCfm_????????????.cfg echo There is no RouterCfm_????????????.cfg
if not exist RouterCfm_????????????.cfg pause
if not exist RouterCfm_????????????.cfg exit

cd .\PresetUpgradeTools\
del RouterCfm_Batch.cfg
del ????????????.bin

move ..\RouterCfm_????????????.cfg .

start RunStandAlone.bat
echo Wscript.sleep 2000 >y.vbs
call y.vbs &del y.vbs
start RunStandAloneMT.bat