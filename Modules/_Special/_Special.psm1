# Import
Import-Module NoneDrive.psm1;
Import-Module InternetBlock.psm1;
Import-Module RefreshProfile.psm1;

# NoneDrive
Set-Alias -Name byeOneDrive -value NoneDrive 

# FireWall App Blocking
Set-Alias -Name block -value InternetBlock

# Powershell refresh
Set-Alias -Name refresh -value RefreshProfile

# EXPORT
Export-ModuleMember -Alias *