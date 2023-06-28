@echo off

rem Comando para executar o paper.jar
set command=java -Xms6G -Xmx6G -jar paper.jar --nogui

rem Executa o comando em segundo plano
start "" %command%

rem Aguarda o processo do paper.jar ser encerrado
:waitloop
timeout /t 2 /nobreak >nul
tasklist | find /i "java.exe" >nul
if errorlevel 1 goto process_ended
goto waitloop

:process_ended
rem Executa o comando de commit no git
set commit_message=Commit automático ao fechar o paper.jar
git commit -am "%commit_message%"