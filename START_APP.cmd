@echo.
@set PATH=%~dp0;%PATH%

::  ����ð����ע�ͣ�ɾ���������׿�������

::  ���� WireGuard �ͻ��� TunSafe
::  CD /D  C:\soft\TunSafe\
::  start TunSafe.exe

::  ���� Shadowsocks �ͻ���
::  CD /D  C:\soft\Shadowsocks
::  start Shadowsocks.exe


::  �� Brook �ͻ��˷���
::  set IP_URL=1.2.3.4
::  set PASSWORD=1234
::  set PORT=1234
::  CD /D  C:\soft\Brook
::  start /b  brook client -l 127.0.0.1:2080 -i 127.0.0.1 -s %IP_URL%:%PORT% -p %PASSWORD%


@set SERVER_IP=144.202.95.95

@route add %SERVER_IP% mask 255.255.255.0 default METRIC default IF default

@start /b speederv2 -c -l0.0.0.0:9009 -r%SERVER_IP%:8888 -f20:10 -k "passwd" --mode 0