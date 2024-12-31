@echo off
@goto :step1
obtain local maven's coordd,pom and jar
then, Manually push jar to a private maven repository in batch 
:step1

set research_dir=C:\Users\22835\.m2\repository
set url=https://cmc.central.repo/product_maven
set repositoryid=smartkti_release

setlocal EnableDelayedExpansion

for /r %research_dir% %%i in (*.jar)  do (
	set perjar_dir=%%~dpi
	call:obtain_jarinfo !perjar_dir! groupid pomfile version repo_type
	:: groupid
	echo !groupid!
	:: jar_path
	echo %%i
	:: pomfile
	echo !pomfile!
	:: version
	echo !version!
	:: repo_type
	echo !repo_type!
)
pause
exit 0 




@REM obatin all jarinfo to push manually to a private maven reposity
:obtain_jarinfo
set jar_dir=%1
set jar_path2=%jar_dir:~0,-1%
::groupid
call:obtain_strlen %research_dir% len
for %%j in (%jar_path2%) do set string=%%~dpj
set string=%string:~0,-1%
set string=!string:~%len%!
set %~2=%string:\=.%
::pomfile
for /r %jar_dir% %%j in (*.pom) do (
	set %~3=%%j
)
::version and repo_type
for %%j in (%jar_path2%) do set version=%%~nxj
set versiontype=%version:~-8%
if "%versiontype%" == "SNAPSHOT" (
	set %~5=smartkit_snapshot
) else (
	set %~5=smartkit_release	
)
goto:eof


@REM obtain research_dir's length to cut 
:obtain_strlen
set arg1=%~1
set count=0
:loop
if not "!arg1:~%count%,1!" == "" (
	set /a count+=1
	goto loop
)
set /a %~2=%count%+1
goto:eof



