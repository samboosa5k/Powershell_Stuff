# Import
Import-Module Nav_Functions.psm1;
Import-Module NoneDrive.psm1;
Import-Module InternetBlock.psm1;
Import-Module RefreshProfile.psm1;
Import-Module FavoriteDirectories.psm1;

# Folder navigation
Set-Alias -name .. -value CD1
Set-Alias -name ... -value CD2
Set-Alias -name .... -value CD3
Set-Alias -name ..... -value CD4
Set-Alias -name ...... -value CD5
Set-Alias -name ....... -value CD5
Set-Alias -name ........ -value CD6
Set-Alias -name ......... -value CD7
Set-Alias -name .......... -value CD8
Set-Alias -name ........... -value CD9
Set-Alias -name ............ -value CD10
Set-Alias -name ............. -value CD11

# Fuzzy Navigate
Set-Alias -name goto -value Go

# Specific Destinations
Set-Alias -name web -value WEBDEV
Set-Alias -name downloads -value ENTERTAINMENT

# NoneDrive
Set-Alias -Name byeOneDrive -value NoneDrive 

# FireWall App Blocking
Set-Alias -Name block -value InternetBlock

# Powershell refresh
Set-Alias -Name refresh -value RefreshProfile

# EXPORT
Export-ModuleMember -Alias *