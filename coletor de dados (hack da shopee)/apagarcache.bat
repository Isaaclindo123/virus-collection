@echo off
title apagador
erase lock.tmp
echo Deseja limpar o colector.log tbm?
pause
type nul > colector.log
exit
