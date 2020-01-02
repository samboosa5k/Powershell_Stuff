# Import
Import-Module Nav_Functions.psm1;

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

# EXPORT
Export-ModuleMember -Alias *