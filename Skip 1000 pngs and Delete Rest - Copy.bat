@echo off

for %%i in (%*) do call :Handler %%i
goto :End

:Handler
echo Looking and skipping the first 1000 pngs in
echo %1
cd %1
set loopcount=0
for  %%f in (*.png) do call :Check %%f
goto :eof

:Check
set /a loopcount = loopcount + 1
if %loopcount% gtr 1000 echo Deleting: %~1
if %loopcount% gtr 1000 del /Q %~1
goto :eof

:End