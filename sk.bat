@echo off
set files=debian.txt arch.txt gentoo.txt slackware.txt fedora.txt other.txt
for %%f in (%files%) do (
    for /f %%i in ('type "%%f" ^| find /c /v ""') do echo %%f: %%i
)
for %%f in (%files%) do ( 
    for /f %%i in ('type "%%f" ^| find /c /v ""') do set /a total_lines+=%%i
)
echo total: %total_lines%
pause
