@echo off
title 小型cmd（winhpj编）
echo cmd版权归微软所有！出事winhpj不负责！
echo同意继续
pause
:1
cls
set /p cmd=输入cmd原有命令
%cmd%
pause
goto 1
