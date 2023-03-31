@echo off

rem  Vivado (TM)
rem  runme.bat: a Vivado-generated Script
rem  Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.


set HD_SDIR=%~dp0
cd /d "%HD_SDIR%"
<<<<<<< HEAD
=======
set PATH=%SYSTEMROOT%\system32;%PATH%
>>>>>>> 52af1fa826306e8084a8722fa077dc0e9adaf89f
cscript /nologo /E:JScript "%HD_SDIR%\rundef.js" %*
