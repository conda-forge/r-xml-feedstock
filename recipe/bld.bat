for %%e in (win ucrt) do (
    move src\Makevars.%%e src\Makevars.%%e.orig
    (
        echo LIB_XML = "%LIBRARY_PREFIX:\=/%"
        type src\Makevars.win.orig
    ) > src\Makevars.%%e
)
"%R%" CMD INSTALL --build .
IF %ERRORLEVEL% NEQ 0 exit 1
