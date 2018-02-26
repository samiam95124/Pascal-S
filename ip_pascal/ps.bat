@echo off
rem
rem Compile with pascals using IP Pascal
rem
rem Execute with:
rem
rem ps <sourcefile> [<inputfile>[<outputfile>]]
rem
rem where <sourcefile> is the name of the source file without
rem extention. The Pascal file is compiled and run.
rem Any compiler errors are output to the screen. Input
rem and output to and from the running program are from
rem the console.
rem
if not "%1"=="" goto paramok
echo *** Error: Missing parameter
goto stop

:paramok
if exist "%1.pas" goto fileexists
echo *** Error: Missing %1.pas file
goto stop

:fileexists
if "%2"=="" goto continue
if exist "%2" goto continue
echo *** Error: Missing %2 input file
goto stop

:continue
echo.
echo Compiling and running %1
echo.
pascals %1
:stop