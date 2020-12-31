@echo off

rem Set workspace directory.
set workspaceDir=%~pd0

rem Remove trailing slash (\) from the workspace directory path, if present.
if %workspaceDir:~-1%==\ set workspaceDir=%workspaceDir:~0,-1%

cd %workspaceDir%\assets

bash ucc init
