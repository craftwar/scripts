"C:\Program Files\7-Zip\7z.exe" x D:\downloads\KVIrc*.exe -y -oD:\KVIrc -x!$PLUGINSDIR -x!vcredist_x64.exe
pause
del /Q D:\downloads\KVIrc*.exe
