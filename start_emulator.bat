@echo off 
@echo. 

@echo Navigating to emulator location . . . . 
@echo. 

cd %ANDROID_HOME%/tools 
@echo Trying to fetch available emulator . . . . 
@echo. 

for /f "delims=" %%a in ('emulator -list-avds') do set emulator_device=%%a 
timeout /t 2 /nobreak > NUL 

@echo Fetched available emulator : %emulator_device% 
@echo. 

timeout /t 2 /nobreak > NUL 

@echo Starting emulator . . . . 
@echo. 

emulator -avd %emulator_device% 
pause