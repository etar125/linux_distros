@echo off
for /f %%i in ('type "list.txt" ^| find /c /v ""') do echo total: %%i
pause
