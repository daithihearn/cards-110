@ECHO off


if "%~1"=="-f" goto api

:frontend
cd cards-110-frontend
CALL .\build.bat
cd ..

:api
cd cards-110-api

CALL .\build.bat

cd ..