@echo off

if exist out\vimstuff.txt (
	set /p vimstuff=<out\vimstuff.txt
)
if not %vimstuff%=="" (
	rmdir /S /Q %vimstuff%
)

del /Q "%USERPROFILE%\vimfiles\plugin\bqq_vimrc.vim"
rmdir /S /Q "%USERPROFILE%\vimfiles\bundle\bqq_vundle"

