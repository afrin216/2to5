REM cerner_2^5_2017
if "%1"=="15" goto Java5 
if "%1"=="5" goto Java5 
if "%1"=="16" goto Java6 
if "%1"=="6" (goto Java6)
if "%1"=="17" goto Java7 
if "%1"=="7" (goto Java7)
if "%1"=="18" goto JavaLatest 
if "%1"=="8" (goto JavaLatest)
if "%1"=="latest" (goto JavaLatest) else (goto Exit)

:Java5
echo Setting up the environment for JDK 5
set JAVA_HOME=C:\Program Files\Java\jdk1.5.0_22
goto End

:Java6
echo Setting up the environment for JDK 6
set JAVA_HOME=C:\Program Files\Java\jdk1.6.0_45
goto End

:Java7
echo Setting up the environment for JDK 7
set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_60
goto End

:JavaLatest
echo Setting up the environment for JDK 8
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_131
goto End

:End
PATH=%JAVA_HOME%\bin;%PATH%
echo JAVA_HOME has been set to %JAVA_HOME% and inserted into the PATH.
 
:Exit
java -version
