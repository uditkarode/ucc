@echo off

rem Set workspace directory.
set workspaceDir=%~pd0

rem Remove trailing slash (\) from the workspace directory path, if present.
if %workspaceDir:~-1%==\ set workspaceDir=%workspaceDir:~0,-1%

cd %workspaceDir%\assets

if "%~nx1"=="" ( goto choose ) else ( goto inline )

:inline
bash ucc -b "%~nx1"
pause
goto done

:choose
bash ucc -gb
pause
goto done

:done
cd %workspaceDir%
goto :eof
