@echo off
rem
rem Compile with pascals using GPC
rem
rem Execute with:
rem
rem ps <sourcefile>
rem
rem where <sourcefile> is the name of the source file without
rem extention. The Pascal file is compiled and run.
rem Any compiler errors are output to the screen. Input
rem and output to and from the running program are from
rem the console, but output to the prr file is placed
rem in <sourcefile>.out.
rem
rem The intermediate code is placed in <file>.pint.
rem
rem If <inputfile> and <outputfile> are specified, then these will be
rem placed as input to the "prd" file, and output from the "prr" file.
rem Note that the prd file cannot or should not be reset, since that
rem would cause it to back up to the start of the intermediate code.
rem
if not "%1"=="" goto paramok
echo *** Error: Missing parameter
goto stop
:paramok
if exist "%1.pas" goto fileexists
echo *** Error: Missing %1.pas file
goto stop
:fileexists
echo.
echo Compiling and running %1
echo.
cp %1.pas srcfil
pascals
rm srcfil
:stop
