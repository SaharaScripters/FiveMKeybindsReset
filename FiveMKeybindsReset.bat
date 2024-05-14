@echo off 

title Sahara Scripters FiveM Keybinds Reset

color 6
echo Starting Resetting...
timeout /t 3

::FiveM CFG File Deleting
echo [Checking CitizenFX Directory]
IF EXIST "%appdata%\CitizenFX\" (
    echo [Deleting FiveM CFG File]
    cd /d "%appdata%\CitizenFX\
    del fivem.cfg
    echo FiveM CFG File Has Been Deleted Successfully.
    timeout /t 3
    cls
    color 2
    ::Final messages to show
    echo.
    echo  +------------------------------------+
    echo  ^|                        		 ^|
    echo  ^|[FiveM CFG File Has Been Deleted]^|
    echo  ^|                        		 ^|
    echo  +------------------------------------+
    timeout /t 5
) ELSE (
    echo FiveM CFG File Does Not Exist.
    timeout /t 3
    exit
)

exit
