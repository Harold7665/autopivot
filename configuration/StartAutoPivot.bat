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
echo Using Tomcat installed at: %CATALINA_HOME%

REM -------------------------------------------------------

echo Cleaning %DEMO_TITLE% AutoPivot logs...
del %DEMO_ROOT%\pivot\logs /f/q

echo Starting %DEMO_TITLE% AutoPivot...
set CATALINA_BASE=%DEMO_ROOT%\pivot
call %CATALINA_HOME%\bin\startup.bat

REM -------------------------------------------------------

PAUSE
