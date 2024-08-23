@echo off
echo --- FFMPEG CONCAT BAT SCRIPT FOR MP4 WITH EXACT SAME PARAMETERS ---
echo - creating list.txt -
(for %%i in (*.mp4) do @echo file '%%i') > list.txt
echo done.
echo - showing list.txt - 
type list.txt
echo - concating - 
REM ffmpeg -safe 0 -f concat -i list.txt -c copy output.mp4
ffmpeg -safe 0 -f concat -i list.txt -c:v libx264 -preset slow -crf 23 -c:a copy output.mp4
echo done.
pause