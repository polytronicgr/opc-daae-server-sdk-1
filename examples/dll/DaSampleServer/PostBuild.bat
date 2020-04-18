if %1[==[ goto default

if exist ..\..\..\..\Win32\OpcDllDaAeServer.exe 		copy ..\..\..\..\Win32\OpcDllDaAeServer.exe %2\OpcDllDaAeServer.exe
if exist ..\..\..\Win32\OpcDllDaAeServer.exe    		copy ..\..\..\Win32\OpcDllDaAeServer.exe %2\OpcDllDaAeServer.exe

if exist %2\OpcDllDaAeServer.exe 						copy %2\OpcDllDaAeServer.exe %2%1\OpcDllDaAeServer.exe
goto done

:default
if exist ..\..\..\..\Win32\OpcDllDaAeServer.exe 		copy ..\..\..\..\Win32\OpcDllDaAeServer.exe OpcDllDaAeServer.exe
if exist ..\..\..\Win32\OpcDllDaAeServer.exe    		copy ..\..\..\Win32\OpcDllDaAeServer.exe OpcDllDaAeServer.exe

if exist OpcDllDaAeServer.exe 							copy OpcDllDaAeServer.exe win32\debug

:done