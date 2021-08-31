@echo off
echo Hay!
echo Bitte beachte das durch dieses Skript saemtliche inhalte in deinem mods ortner geloescht werden.
echo Das Skript funktioniert nur, wen du den standart Minecraft ordner verwendest.
echo .
echo Bitte druecke irgend eine Taste um vortzufahren.
pause

echo Bitte wähle nun als Minecraft version die 1.16.4 und belasse den rest wie es ist.
echo Anschliessend klicke bitte auf Install.

java -jar fabric-installer-0.7.4.jar

cd C:\Users\%USERNAME%\AppData\Roaming\.minecraft

md "mods_alt"
xcopy /Y "C:\Users\%USERNAME%\AppData\Roaming\.minecraft\mods" "C:\Users\%USERNAME%\AppData\Roaming\.minecraft\mods_alt" /s /i
rd /S /Q "C:\Users\%USERNAME%\AppData\Roaming\.minecraft\mods"

md "mods"
xcopy /Y "%~dp0\Mod\*" "C:\Users\%USERNAME%\AppData\Roaming\.minecraft\mods" /s /i
cls

echo Die Installation ist abgeschlossen.
echo Du kannst das Fenster jetzt mit der Taste deines Vertrauens beenden.
pause > nul