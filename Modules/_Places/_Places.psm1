# Import
Import-Module Nav_Functions.psm1;
Import-Module FavoriteDirectories.psm1;

# Fuzzy Navigate
Set-Alias -name goto -value go

# Specific Destinations
Set-Alias -name web -value WEBDEV
Set-Alias -name downloads -value ENTERTAINMENT

# EXPORT
Export-ModuleMember -Alias *