@rem 7zip doesn't support extract some formats (7z...etc) from pipe yet
@rem curl -skL https://zlib.net/zlib1211.zip -f --retry 5 -C - | "C:\Program Files\7-Zip\7z.exe" x -si

if exist OBS-git-craftwar.7z (
	curl -kLo OBS-git-craftwar-new.7z https://ci.appveyor.com/api/projects/craftwar_appveyor/obs-studio/artifacts/OBS-git-craftwar.7z?branch=master -f --retry 5 -z OBS-git-craftwar.7z
    if exist OBS-git-craftwar-new.7z (
        7z.exe x OBS-git-craftwar-new.7z -y -o.
        move /y OBS-git-craftwar-new.7z OBS-git-craftwar.7z
    )
) else (
	curl -kLo OBS-git-craftwar.7z https://ci.appveyor.com/api/projects/craftwar_appveyor/obs-studio/artifacts/OBS-git-craftwar.7z?branch=master -f --retry 5 -C -
	7z.exe x OBS-git-craftwar.7z -y -o.
)
pause

:: old force update
:: curl -kLo D:\downloads\OBS-git-craftwar.7z "https://ci.appveyor.com/api/projects/craftwar_appveyor/obs-studio/artifacts/OBS-git-craftwar.7z?branch=master" -f --retry 5
:: "C:\Program Files\7-Zip\7z.exe" x D:\downloads\OBS-git-craftwar.7z -y -oD:\OBS