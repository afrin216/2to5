REM cerner_2^5_2017
REM This restarts wireless interface in case of any connectivity issues
REM If the folder where this script resides is part of global PATH variable
REM This can be run as 
REM WIN_KEY + R (open run command)
REM Type wireless and press enter
netsh interface set interface name="Wireless Network Connection" admin=disabled
netsh interface set interface name="Wireless Network Connection" admin=enabled