@echo off
set backupDir=D:\Backups\Minecraft
set date=%DATE:~10,4%-%DATE:~4,2%-%DATE:~7,2%
mkdir "%backupDir%\%date%"
xcopy "C:\MinecraftServer\world" "%backupDir%\%date%" /E /I /Y

REM automatic backups for server