#Syntax:
#a. without duplicate plugins on same host: .\ccri_calc_v2.ps1 <path to nessus generated csv file"
#. with duplicate plugins on same host: .\ccri_calc_v2.ps1 <path to nessus generated csv file> -dupes
# Results are dumped to script invocation location
#If plugins need to be excluded from count, pass a csv with excluded plugin IDs in first column with Column heading 'Plugin ID'
#.\ccri_calc_v2.ps1 <path to nessus generated csv file> <path to excluded plugins csv"

Param (
    [string] $csvpath= $(throw "CSV Path is required!"),
    [string] $excludepath=  $(throw "Scan CSV Path is required!")

    )


    if (-not (Test-Path $csvpath)) {throw "Scan CSV Path not valid!"}
$relevant=$orig | ft -Property "Plugin ID", Risk, Host
$rawarr=@()
$uniqueip=0;
$count=0

$rawcsv= import-csv $csvpath

    if (-not (Test-Path $excludepath)) {throw "Excluded CSV Path not valid!"}
    $excludedcsv= import-csv $excludepath
    $excludedplugins=$excludedcsv.'Plugin ID'


foreach ($excludedplugin in $excludedplugins) {
echo $excludedplugin
    (Import-Csv $csvpath)| where {$_.'plugin id' -notcontains $excludedplugin} | Export-Csv $csvpath -NoTypeInformation

}

<#
$filename_capture=$csvpath -replace "^.*\\"
$filename_filtered= $filename_capture.Insert($filename_capture.Length-4,"-filtered")
if (-not $PSScriptRoot) {$PSScriptRoot = split-path $myinvocation.mycommand.path -parent}
$outpath=$PSScriptRoot+"\"+$filename_filtered


$rawcsv | Export-Csv -Path $outpath -NoTypeInformation  #>
