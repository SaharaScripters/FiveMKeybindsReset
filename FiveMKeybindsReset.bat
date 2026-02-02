@echo off
setlocal

title Sahara Scripters FiveM Keybinds Reset
color 6

echo Starting resetting...
timeout /t 3 /nobreak >nul

set "CITIZENFX=%appdata%\CitizenFX"
set "CFG=%CITIZENFX%\fivem.cfg"

echo [Checking CitizenFX Directory]
if exist "%CITIZENFX%\" (
    echo [CitizenFX found]

    if exist "%CFG%" (
        echo [Deleting FiveM CFG File]
        del /f /q "%CFG%"
        if exist "%CFG%" (
            color 4
            echo Failed to delete: "%CFG%"
            timeout /t 5 /nobreak >nul
            exit /b 1
        )

        echo FiveM CFG File has been deleted successfully.
        timeout /t 2 /nobreak >nul
        cls
        color 2

        echo.
        echo  +------------------------------------+
        echo  ^|                                    ^|
        echo  ^|  [FiveM CFG File Has Been Deleted] ^|
        echo  ^|                                    ^|
        echo  +------------------------------------+
        timeout /t 5 /nobreak >nul
    ) else (
        color 3
        echo FiveM CFG file not found: "%CFG%"
        timeout /t 5 /nobreak >nul
        exit /b 0
    )
) else (
    color 4
    echo CitizenFX directory does not exist: "%CITIZENFX%"
    timeout /t 5 /nobreak >nul
    exit /b 0
)

exit /b 0
