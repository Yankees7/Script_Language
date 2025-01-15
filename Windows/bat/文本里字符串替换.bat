@ECHO OFF
cd %WORKSPACE%\xxx
setlocal EnableDelayedExpansion
cd /d D:\jenkins\workspace\build\package

if exist $ (del /f $)
FOR /F "eol=* tokens=*" %%i in ('type build.bat') do (
	set a=%%i
	set "a=!a:call mvn clean package=call mvn clean package -Dmaven.test.skip=true!"
	echo !a!>>$
)
move $ build.bat
setlocal DisableDelayedExpansion
@ECHO ON
