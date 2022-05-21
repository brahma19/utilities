@ECHO OFF
@ECHO "This will show the SSID name followed by the password in plain text"
for /f "tokens=*" %%a in ('netsh wlan show profiles ^| findstr "All"') do (
        for /f "tokens=2 delims=:" %%C in ( "%%a" ) Do ( netsh wlan show profile %%C key=clear | findstr "Name | Key Content")		
)
@ECHO Press any key to Exit
PAUSE>nul