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

REM Go back to the initial directory
cd ..
