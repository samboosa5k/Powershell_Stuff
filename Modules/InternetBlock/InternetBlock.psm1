function InternetBlock{
    Param(
    [string] $loc,
    [string] $name
    )

    $displayName = "$name -> blocked!"
    $description = "$name has been blocked!"

    if ($loc.IsNotPresent -or $name.IsNotPresent){
        Write-Error 'Missing parameters, example: block -loc C:\Folder\App.exe -name NameOfApp'
    } else {
        New-NetFirewallRule -Program '$loc' -Action Block -Profile Domain, Private -DisplayName "$displayName" -Description “$description” -Direction Outbound
        New-NetFirewallRule -Program '$loc' -Action Block -Profile Domain, Private -DisplayName "$displayName" -Description “$description” -Direction Inbound
        Write-Host 'Blocking success!'
    }
    
}

Export-ModuleMember -Function *