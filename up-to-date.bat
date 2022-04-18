@echo off
 
set "Dir=%cd%"			# Directory, 		%cd% - current directory
set "Git_Server=%1"		# Server address,  	%1 - third arg
set "Git_Name=%2"		# Username, 		%2 - first arg
set "Git_Password=%3"		# Password, 		%3 - second arg

title Update all git

echo Hi
echo.
echo Current dir 		- %dir%
echo Current name		- %Git_Name%
echo Current password	- %Git_Password%
echo Current server		- %Git_Server%
echo.

setlocal enabledelayedexpansion

for /d %%f in (%dir%\*) do (
	echo git repo "%%~nxf":
	push_mirror_script\sc_branchs.sh %%f
	cd %%f
	echo pull:
	git pull --all
	echo.
	echo push mirror:
	git push --mirror http://%Git_Name%:%Git_Password%@%Git_Server%/%Git_Name%/%%~nxf.git
	echo.
	echo.
	echo.
	cd ..
)
cd %dir%