"%R%" CMD INSTALL --configure-args="--with-xml-config='%LIBRARY_PREFIX%/mingw-w64/bin/xml2-config --prefix=%LIBRARY_PREFIX%/mingw-w64'" --build .
IF %ERRORLEVEL% NEQ 0 exit 1
