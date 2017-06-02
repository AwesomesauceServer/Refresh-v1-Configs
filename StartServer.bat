@echo off
:: Awesomesauce Minecraft Server
::
:: > Please for fucks sake, stop adding shit arguments to Java, 99% of them are not needed or are harmful. Seriously!
:: > Do not add quotes (single or double) to any of the settings below.
::
:: Batch Settings :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

set serverTitle=Awesomesauce Refresh-v1 Minecraft
set consoleSeparator=------------------------------------------------------------------------------------
set javaEXE=C:\Program Files\Java\jre1.8.0_111\bin\java.exe
set javaArgs=-server -Xms8g -Xmx16g
set forgeJar=forge-1.10.2-12.18.3.2297-universal.jar

:: Do not edit anything below this line :::::::::::::::::::::::::::::::::::::::::

:: Copy thump and configs
call AddThump.bat

title %serverTitle%
for /f "tokens=1-4 delims=:." %%a in ("%time%") do (set forgeTime=%%a:%%b:%%c)

echo %consoleSeparator%
echo [%forgeTime%] [%~n0.bat] [%serverTitle%] Server starting...
echo %consoleSeparator%

"%javaEXE%" %javaArgs% -jar %forgeJar% nogui

echo %consoleSeparator%
echo [%forgeTime%] [%~n0.bat] [%serverTitle%] Server stopped!
echo %consoleSeparator%

pause