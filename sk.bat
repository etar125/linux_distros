rem код дала нейросетка, хз работает ли

@echo off

set files=debian.txt arch.txt gentoo.txt slackware.txt other.txt

for %%f in (%files%) do (
    type "%%f" | find /c /v ""
    echo %%f: %errorlevel%
)

set total_lines=0
for %%f in (%files%) do (
    for /f %%i in ('type "%%f" ^| find /c /v ""') do set /a total_lines+=%%i
)
echo "total: %total_lines%"
