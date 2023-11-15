@echo off

if not defined DevEnvDir (
	call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvarsall.bat" x64
)

set THIS_FILE_DIR=%~dp0
set BUILD_DIR=%THIS_FILE_DIR%local_build
set SRC_FILES=%THIS_FILE_DIR%src\main\main.c

mkdir %BUILD_DIR%
pushd %BUILD_DIR%

set OUTPUT_DEBUG_SYMBOLS=/Z7
set COMPILER_FLAGS=%OUTPUT_DEBUG_SYMBOLS%

cl %COMPILER_FLAGS% %SRC_FILES%

popd 
