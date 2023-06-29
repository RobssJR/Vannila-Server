git pull

rem Comando para executar o paper.jar
set command=java -Xms6G -Xmx6G -jar paper.jar --nogui

start "" %command%

:waitloop
timeout /t 2 /nobreak >nul
tasklist | find /i "java.exe" >nul
if errorlevel 1 goto process_ended
goto waitloop

:process_ended
git pull
git add .
git commit -m Update"
git push