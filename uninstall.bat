@echo off

if exist out\vimstuff.txt (
	set /p vimstuff=<out\vimstuff.txt
)
if not %vimstuff%=="" (
	rmdir /S /Q %vimstuff%
)

del /Q "%USERPROFILE%\_vimrc_bqq" && vim -u NONE "%USERPROFILE%\_vimrc"
rmdir /S /Q "%USERPROFILE%\vimfiles\bundle\bqq_vundle"

