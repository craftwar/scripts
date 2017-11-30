rem 7zip doesn't support extract some formats (7z...etc) from pipe yet
rem curl -skL https://zlib.net/zlib1211.zip -f --retry 5 -C - | "C:\Program Files\7-Zip\7z.exe" x -si

curl -kLo D:\downloads\OBS-git-craftwar.7z "https://ci.appveyor.com/api/projects/craftwar_appveyor/obs-studio/artifacts/OBS-git-craftwar.7z?branch=master" -f --retry 5 -C -
"C:\Program Files\7-Zip\7z.exe" x D:\downloads\OBS-git-craftwar.7z -y -oD:\OBS
pause
