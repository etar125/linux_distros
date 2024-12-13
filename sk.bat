@echo off

set files=debian.txt arch.txt gentoo.txt slackware.txt other.txt

for %%f in (%files%) do (
    for /f %%i in ('type "%%f" ^| find /c /v ""') do set /a lines_in_file=%%i
    echo %%f: %lines_in_file%
)

echo total:
for %%f in (%files%) do ( 
    for /f %%i in ('type "%%f" ^| find /c /v ""') do set /a total_lines+=%%i
)
echo %total_lines%

pause
