:@echo off

SET BASE_DIR=%~dp0

echo [%date:~6,10%-%date:~3,2%-%date:~0,2% %time:~0,8%] Executando script...
:loop
call python "%BASE_DIR%\auto_backup.py" > "%BASE_DIR%\log_abu.txt" 2>&1
TIMEOUT 5
goto loop
::pause
