@rem 7zip doesn't support extract some formats (7z...etc) from pipe yet
@rem curl -skL https://zlib.net/zlib1211.zip -f --retry 5 -C - | "C:\Program Files\7-Zip\7z.exe" x -si
set file_url=https://ci.appveyor.com/api/projects/craftwar_appveyor/obs-studio/artifacts/OBS-git-craftwar.7z?branch=master
set file=OBS-git-craftwar.7z

echo %file_url%

if exist %file% (
	curl -kLo %file%-new %file_url% -f --retry 5 -z %file%
    if exist %file%-new (
        7z.exe x %file%-new -y -o.
        move /y %file%-new %file%
    )
) else (
	curl -kLo %file% %file_url% -f --retry 5 -C -
	7z.exe x %file% -y -o.
)
pause

:: old force update
:: curl -kLo D:\downloads\OBS-git-craftwar.7z "https://ci.appveyor.com/api/projects/craftwar_appveyor/obs-studio/artifacts/OBS-git-craftwar.7z?branch=master" -f --retry 5
:: "C:\Program Files\7-Zip\7z.exe" x D:\downloads\OBS-git-craftwar.7z -y -oD:\OBS
