::right click run as administrator
assoc .jar=jarfile
ftype jarfile="%%JAVA_HOME%%\bin\javaw.exe" -jar "%%1" %%*

:: Or run this in cmd as administrator manually
:: ftype jarfile="%JAVA_HOME%\bin\javaw.exe" -jar "%1" %*
