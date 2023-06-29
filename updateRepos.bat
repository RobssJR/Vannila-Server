@echo off
cd /d "%~dp0"
git add .
echo Digite a mensagem de commit:
set /p commit_message=
git commit -m "%commit_message%"
git push origin main
pause