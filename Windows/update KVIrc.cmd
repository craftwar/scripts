"C:\Program Files\7-Zip\7z.exe" x D:\downloads\KVIrc*.exe -y -oD:\KVIrc -x!$PLUGINSDIR -x!vcredist_x64.exe -x!vc_redist.x64.exe -x!msvcr120.dll
pause
del /Q D:\downloads\KVIrc*.exe
