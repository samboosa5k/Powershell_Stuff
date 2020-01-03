# Lazy search and GO
function go(){
    [array]$excludes = @('Data4You','*git','*laravel','node_modules','vendor','vendors');
    [string]$loc = Get-Location;
    # Optional parameters
    [string]$dest = if(!$args[0]){
        Write-Error 'Folder name not provided, example use: go MyFolder 4 (search depth optional)';
    } else {
        $args[0];
    }

    [Int]$depth = if(!$args[1]){
        2;
    } else {
        $args[1];
    };
    
    $foundLoc = Get-ChildItem -Directory -Path $loc -Exclude $excludes -Name -Filter *$dest* -Recurse -Depth $depth | Select-Object -First 1;
    
    if (!$foundLoc){
        Write-Error 'could not find';
    } else {
        Set-Location $foundLoc;
    }
}

function test{
    if($args.Length -eq 0){
        Write-Host 'No parameters given';
    } else {
        foreach($arg in $args){
            Write-Host $arg
        }
    }
}

# Moving back
function CD1 {Set-Location ..}
function CD2 {Set-Location ..\..}
function CD3 {Set-Location ..\..\..}
function CD4 {Set-Location ..\..\..\..}
function CD5 {Set-Location ..\..\..\..\..}
function CD6 {Set-Location ..\..\..\..\..\..}
function CD7 {Set-Location ..\..\..\..\..\..\..}
function CD8 {Set-Location ..\..\..\..\..\..\..\..}
function CD9 {Set-Location ..\..\..\..\..\..\..\..\..}
function CD10 {Set-Location ..\..\..\..\..\..\..\..\..\..}
function CD11 {Set-Location ..\..\..\..\..\..\..\..\..\..\..}
function CD12 {Set-Location ..\..\..\..\..\..\..\..\..\..\..\..}


# EXPORT
Export-ModuleMember -Function *;