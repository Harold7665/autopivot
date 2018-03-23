@echo off

set DEMO_ROOT=.
set DEMO_TITLE=AUTOPIVOT for BD

IF DEFINED CATALINA_HOME (GOTO catalinaCheckDone)
IF EXIST ..\tomcat (
    SET CATALINA_HOME=..\tomcat
    GOTO catalinaCheckDone
)
IF EXIST ..\..\tomcat (
    SET CATALINA_HOME=..\..\tomcat
    GOTO catalinaCheckDone
)

:catalinaCheckDone

REM -------------------------------------------------------

echo Stopping %DEMO_TITLE% AutoPivot...
set CATALINA_BASE=%DEMO_ROOT%\pivot
call %CATALINA_HOME%\bin\shutdown.bat
