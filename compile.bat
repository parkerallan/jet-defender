@del jetdef.o
@del jetdef.nes
@echo.
@echo Compiling...
\cc65\bin\ca65 jetdef.s -g -o jetdef.o
@IF ERRORLEVEL 1 GOTO failure
@echo.
@echo Linking...
\cc65\bin\ld65 -o jetdef.nes -C jetdef.cfg jetdef.o
@IF ERRORLEVEL 1 GOTO failure
@echo.
@echo Success!
\fceux-2.6.6-win64\fceux64.exe jetdef.nes
@GOTO endbuild
:failure
@echo.
@echo Build error!
:endbuild