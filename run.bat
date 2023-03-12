@echo off
set MYSQL_HOME=C:\Program Files\MySQL\MySQL Server 8.0
set SCRIPT_DIR=%~dp0

set MYSQL_USER=root
set MYSQL_PASSWORD=thangthang1!

echo Running SQL script...
"%MYSQL_HOME%\bin\mysql" -u %MYSQL_USER% -p%MYSQL_PASSWORD% mydb < "%SCRIPT_DIR%\NCLConly.sql"

echo Done.

start /B cmd /C "cd %SCRIPT_DIR%\frontend && npm start -- --port 3000"
call :wait
cd %SCRIPT_DIR%\backend && python manage.py migrate
start /B cmd /C "cd %SCRIPT_DIR%\backend && python manage.py runserver"
call :wait
goto :eof

:wait
ping -n 2 127.0.0.1 > nul
goto :eof
