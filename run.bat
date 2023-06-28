rem Comando para atualizar os arquivos do repositório
git pull

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
rem Comando para atualizar o repositório novamente
git pull
git add .
git commit -m "Atualização após a execução do paper.jar"
git push