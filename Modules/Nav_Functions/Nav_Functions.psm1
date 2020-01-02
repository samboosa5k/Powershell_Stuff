# Lazy search and GO
function Go{
    Param(
        [Parameter()]
        $to
    ),
    [array]$excludes = @('Data4You','*git','*laravel','node_modules','vendor','vendors');
    [string]$loc = Get-Location;
    $foundLoc = Get-ChildItem -Directory -Path $loc -Exclude $excludes -Name -Filter $to* -Recurse -Depth 2 | Select-Object -First 1;
    
    if (!$foundLoc){
        Write-Error 'could not find';
    } else {
        Set-Location $foundLoc;
    }
}


# Moving back
function CD1 {Set-Location ..}
function CD2 {Set-Location ..\..}
function CD3 {Set-Location ..\..\..}
function CD4 {Set-Location ..\..\..\..}
function CD5 {Set-Location ..\..\..\..\..}
function CD5 {Set-Location ..\..\..\..\..\..}
function CD6 {Set-Location ..\..\..\..\..\..\..}
function CD7 {Set-Location ..\..\..\..\..\..\..\..}
function CD8 {Set-Location ..\..\..\..\..\..\..\..\..}
function CD9 {Set-Location ..\..\..\..\..\..\..\..\..\..}
function CD10 {Set-Location ..\..\..\..\..\..\..\..\..\..\..}
function CD11 {Set-Location ..\..\..\..\..\..\..\..\..\..\..\..}


# EXPORT
Export-ModuleMember -Function *;