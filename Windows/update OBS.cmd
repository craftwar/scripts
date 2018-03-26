@rem 7zip doesn't support extract some formats (7z...etc) from pipe yet
@rem curl -skL https://zlib.net/zlib1211.zip -f --retry 5 -C - | "C:\Program Files\7-Zip\7z.exe" x -si

@rem setlocal
set file_url=https://ci.appveyor.com/api/projects/craftwar_appveyor/obs-studio/artifacts/OBS-git-craftwar.7z?branch=master
set file=OBS-git-craftwar.7z
set file-new=%file%-new
set _7z=7z.exe
::set _7z_options=


if exist %file% (
	curl -kLo %file-new% %file_url% -f --retry 5 -z %file%
    if exist %file%-new (
        %_7z% x %file-new% -y -o. %_7z_options%
        move /y %file-new% %file%
    )
) else (
	curl -kLo %file% %file_url% -f --retry 5 -C -
	%_7z% x %file% -y -o. %_7z_options%
)
@rem endlocal
pause

:: old force update
:: curl -kLo D:\downloads\OBS-git-craftwar.7z "https://ci.appveyor.com/api/projects/craftwar_appveyor/obs-studio/artifacts/OBS-git-craftwar.7z?branch=master" -f --retry 5
:: "C:\Program Files\7-Zip\7z.exe" x D:\downloads\OBS-git-craftwar.7z -y -oD:\OBS
