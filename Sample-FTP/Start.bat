@echo off
rem ------------------KETTLE PATH SETTING-------------------
set KettlePath=%KETTLE_HOME%\Kitchen.bat

rem ------------------OTHER PATH SETTING--------------------
set JobPath=%cd%\StartToFTP.kjb
set today=%date:~0,4%%date:~5,2%%date:~8,2%
set LogFile=%cd%\Logs\%today%.log
set paramValue=%cd%\Configs\Allconfigs.xml
rem ------------------RUN JOB-------------------------------
%KettlePath% /file %JobPath% /param:CONFIGFILEFULLNAME=%paramValue% /level basic>>%LogFile%