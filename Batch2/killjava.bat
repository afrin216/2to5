REM cerner_2^5_2017
REM This kills any lingering java processes. Replace java.exe with any process lingering processes you encounter occassionally in your work
REM If the folder where this script resides is part of global PATH variable
REM This can be run as 
REM WIN_KEY + R (open run command)
REM Type killjava and press enter
Taskkill /IM java.exe /F