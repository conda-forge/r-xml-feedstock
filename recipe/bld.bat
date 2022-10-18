del %LIBRARY_LIB%\xml2.lib
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
