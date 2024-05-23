@echo off
setlocal EnableDelayedExpansion

REM Definir os comandos diretamente no script
set commands[0]=winget install -e --id Google.Chrome
set commands[1]=winget install -e --id Microsoft.VisualStudioCode
set commands[2]=winget install -e --id RARLab.WinRAR
set commands[3]=winget install -e --id EpicGames.EpicGamesLauncher
set commands[4]=winget install -e --id Valve.Steam
set commands[5]=winget install -e --id WhatsApp.WhatsApp
set commands[6]=winget install -e --id Discord.Discord
set commands[7]=winget install -e --id=Guru3D.Afterburner
set commands[8]=winget install -e --id Microsoft.PowerShell
set commands[9]=winget install -e --id Python.Python.3.12
set commands[10]=winget install -e --id Git.Git
set commands[11]=winget install -e --id Unigine.HeavenBenchmark
set commands[12]=winget install -e --id CPUID.CPU-Z
set commands[13]=winget install -e --id Nvidia.GeForceExperience
set commands[14]=winget install -e --id OBSProject.OBSStudio
set commands[15]=winget install -e --id Rufus.Rufus
set commands[16]=winget install -e --id Microsoft.WindowsTerminal

REM Número de comandos
set count=17

REM Loop através dos comandos
for /L %%i in (0,1,%count%-1) do (
    set "cmd=!commands[%%i]!"
    echo.
    echo Executar: !cmd!
    choice /c sn /n /m "Voce deseja executar este comando? (s/n): "
    if !errorlevel! equ 1 (
        echo Executando: !cmd!
        !cmd!
    ) else (
        echo Comando ignorado.
    )
    echo.
)

endlocal
pause
