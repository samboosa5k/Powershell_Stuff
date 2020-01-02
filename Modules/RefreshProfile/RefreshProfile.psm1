# Crude refresh profile
function RefreshProfile{
    cmd.exe /c start powershell.exe -c { Set-Location $PWD } -NoExit
    Stop-Process -Id $PID
}

Export-ModuleMember -Function *;