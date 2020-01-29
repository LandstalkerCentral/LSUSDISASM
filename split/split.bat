echo off
cls
echo Start of split operation for file split/ls.bin
echo Executing tools/splitrom.exe ...
cd ../disasm/
@"../tools/splitrom" ../rom/ls.bin ../split/lssplits.txt
echo End of split operation. Data extracted in disasm/ folder.
pause