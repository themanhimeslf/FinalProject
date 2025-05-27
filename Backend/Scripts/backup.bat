@echo on
set BACKUP_DIR=C:\MinecraftServer\backups
set SERVER_DIR=C:\MinecraftServer\server

:: Extract date ddmmyy
set year=%DATE:~6,4%
set month=%DATE:~3,2%
set day=%DATE:~0,2%

:: fikse timer eller noe
set hour=%TIME:~0,2%
if "%hour:~0,1%"==" " set hour=0%hour:~1,1%
set minute=%TIME:~3,2%

set TIMESTAMP=%year%-%month%-%day%_%hour%%minute%

mkdir "%BACKUP_DIR%\%TIMESTAMP%"

xcopy "%SERVER_DIR%\World" "%BACKUP_DIR%\%TIMESTAMP%\World" /E /I /H /Y
xcopy "%SERVER_DIR%\World_nether" "%BACKUP_DIR%\%TI_
