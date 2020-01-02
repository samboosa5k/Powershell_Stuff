Import-Module _Navigation 3>$null;
Import-Module _Places 3>$null;
Import-Module _Special 3>$null;

# Alias collection
    $special = Get-Alias | Where {$_.source -Match "_Special"}
    $navigation = Get-Alias | Where {$_.source -Match "_Navigation"}
    $places = Get-Alias | Where {$_.source -Match "_Places"}

function nrRows{
    $arr=@(
        $special.Count,
        $navigation.Count,
        $places.Count
    )
    $max = ($arr | Measure-Object -Maximum).Maximum
    #Write-Host $max
    return $max
}

function tableBuilder($maxlen){
    # Write-Host "tableBuilder has received $maxlen"
   
    # Full Credit for Custom Table : https://blogs.msdn.microsoft.com/rkramesh/2012/02/01/creating-table-using-powershell/
    $table = New-Object system.Data.DataTable “Commands”

    # Columns
    $col_Places = New-Object system.Data.DataColumn Places,([string])
    $col_Special = New-Object system.Data.DataColumn Special,([string])
    $col_Navigation = New-Object system.Data.DataColumn Navigation,([string])

    #Add the Columns to Table
    $table.columns.add($col_Places)
    $table.columns.add($col_Special)
    $table.columns.add($col_Navigation)

    ## FOR LOOP START
    For($i=0;$i -le $maxlen; $i++){
        #Create a row
        $row = $table.NewRow()

        #Enter data in the row
        $row.Places = $places[$i].Name
        $row.Special = $special[$i].Name
        $row.Navigation = $navigation[$i].Name

        #Add the row to the table
        $table.Rows.Add($row)
    }
    ## FOR LOOP END
    $table | Format-Table
}

function build(){
   $x = nrRows
   tableBuilder($x)
}
