:: @author KOOKIIE
echo off

echo This script will set up your virtual environment.
echo Do not close this window until you are told to do so!

echo Generating venv folder...
:: Generate VENV in project dir
python -m venv %~dp0venv

echo Installing dependencies...
:: Activate the VENV
call venv\scripts\activate.bat

:: Install requirements
pip install wheel
pip install -r requirements.txt
echo Sequence completed! You may now close this window:

pause