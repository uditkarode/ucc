@echo off

rem Set workspace directory.
set workspaceDir=%~pd0

rem Remove trailing slash (\) from the workspace directory path, if present.
if %workspaceDir:~-1%==\ set workspaceDir=%workspaceDir:~0,-1%

cd %workspaceDir%\assets

if "%~nx1"=="" ( goto choose ) else ( goto inline )

:inline
bash ucc -r "%~nx1"
goto done

:choose
bash ucc -gr
goto done

:done
cd %workspaceDir%
goto :eof
