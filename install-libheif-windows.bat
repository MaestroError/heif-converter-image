@echo off

REM Clone the vcpkg repository
git clone https://github.com/Microsoft/vcpkg.git

REM Enter the vcpkg directory
cd vcpkg

REM Bootstrap vcpkg
.\bootstrap-vcpkg.bat

REM Install libheif
.\vcpkg integrate install
.\vcpkg install libheif

REM Define PKG_CONFIG_PATH
set PKG_CONFIG_PATH=%cd%\src\vcpkg

REM Go back to the initial directory
cd ..
