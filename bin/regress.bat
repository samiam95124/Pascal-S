@echo off
rem
rem Regression test
rem
rem Run the compiler through a few typical programs
rem to a "gold" standard file
rem
call testprog sample_programs\hello
call testprog sample_programs\roman
call testprog sample_programs\prime
