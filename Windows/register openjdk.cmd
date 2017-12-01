::right click run as administrator
assoc .jar=jar_auto_file
ftype jar_auto_file="%JAVA_HOME%\bin\javaw.exe" -jar "%%1" %%*

:: original command run in cmd
:: ftype jar_auto_file="%JAVA_HOME%\bin\javaw.exe" -jar "%1" %*
