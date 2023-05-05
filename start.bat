:: This script allows the user to choose between global and virtual python environment for running the program
:: @author KOOKIIE
:: Turn ECHO off
@echo off
setlocal
:: Turn ECHO on
:: echo on

echo This script will launch the program.
echo Please select the environment to run the source code with:
echo A: Virtual Python Environment (Default)
echo B: Global Python Environment
choice /c AB /t 10 /d A /m "What is your choice"
if errorlevel 2 call :global
if errorlevel 1 call :virtual
:: Turn ECHO off
:: @echo off
pause
endlocal

:: function to run from venv
:virtual
echo You have selected A: Virtual Python Environment
call venv\scripts\activate.bat
venv\scripts\python main.py
:: echo "The program crashed, restarting..."
:: goto virtual
exit \b

:: function to run from global environment
:global
echo You have selected B: Global Python Environment
python main.py
:: echo "The program crashed, restarting..."
:: goto global
exit \b