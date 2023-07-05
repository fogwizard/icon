if exist %1 (
   echo "dir already exist"
) else (
   mkdir %1
)
if exist %4 (
   inkscape -w %2  -h %3  %4 --export-filename %1/%4.png
   exit
)

for /f "delims=" %%i in ('dir /a-d /b *.svg') ^
do (
      echo %%i
      inkscape -w %2  -h %3 %%i --export-filename %1/%%i.png
)

