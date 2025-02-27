@echo off
net start SEVPNCLIENT >nul 2>&1
if %errorLevel% neq 0 powershell -Command "Start-Process '%~s0' -Verb RunAs"
