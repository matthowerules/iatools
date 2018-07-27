#Syntax:
#a. without duplicate plugins on same host: .\ccri_calc_v2.ps1 <path to nessus generated csv file"
#. with duplicate plugins on same host: .\ccri_calc_v2.ps1 <path to nessus generated csv file" -dupes
# Results are dumped to script invocation location
#

Param (
    [string] $csvpath= $(throw "CSV Path is required!"),
    [switch] $dupes= $false
    )
function ccriscore ($crit=0,$high=0,$med=0,$low=0,$hostcount=1) {
    $computedscore= (($crit+$high)*10 + $med*4 + $low)/($hostcount * 15)
    return [math]::Round($computedscore,1)

}

    if (-not (Test-Path $csvpath)) {throw "CSV Path not valid!"}
$relevant=$orig | ft -Property "Plugin ID", Risk, Host
$hostarr=@()
$uniqueip=0;
$count=0



    $uniquehost= New-Object psobject
        $uniquehost | Add-Member -MemberType NoteProperty -Name IP -Value $row.Host

$rawcsv= import-csv $csvpath
$lastip=$rawcsv[0].Host
$lastplugin=$rawcsv[0].'Plugin ID'
$lastport=$rawcsv[0].Port
$uniqueplugin=""
$uniquehost_low,$uniquehost_med,$uniquehost_high,$uniquehost_crit = 0
foreach ($row in $rawcsv) {
    if ($row.Host -eq $lastip) {
        if ($dupes) {$dupeplugin="99999999"}
        #if ($row.'Plugin ID' -like "55472") {$hostname=([regex]::Match($row.'Plugin Output',"(?<=Hostname : )\S+").captures).value}
        if ($row.'Plugin ID' -like "55472") {$row.'Plugin Output' -match "(?<=Hostname : )\S+" | Out-Null ; $hostname=$($Matches.Values)}
        if ((($row."Plugin ID" -notlike $dupeplugin) -and ($row.Risk -notmatch "None")) -and (-not (($lastplugin -eq $row.'Plugin ID') -and ($lastport -eq $row.Port)))) {
           # if ($dupes) {$uniqueplugin+= " "+$row."Plugin ID"; echo $uniqueplugin}
             switch ($row.Risk) {
                "Low" {$uniquehost_low++}
                "Medium" {$uniquehost_med++}
                "High" {$uniquehost_high++}
                "Critical" {$uniquehost_crit++}
            }

        }
        if ($row -eq $rawcsv[-1]) { $writerow=$true}
    } else {
        $writerow=$true
    }

    if ($writerow -or ($row -eq $rawcsv[-1])) {

        $uniquehost= New-Object psobject
        $uniquehost | Add-Member -MemberType NoteProperty -Name Hostname -Value $hostname
        $uniquehost | Add-Member -MemberType NoteProperty -Name IP -Value $lastip

        if (!$uniquehost_crit) {$uniquehost_crit=0}
        if (!$uniquehost_high) {$uniquehost_high=0}
        if (!$uniquehost_med) {$uniquehost_med=0}
        if (!$uniquehost_low) {$uniquehost_low=0}
        #echo "ayyyyyyyyyyyyyyyyyyy"
        #echo $uniquehost_crit
        $uniquehost | Add-Member -MemberType NoteProperty -Name Crit -Value $uniquehost_crit
        $uniquehost | Add-Member -MemberType NoteProperty -Name High -Value $uniquehost_high
        $uniquehost | Add-Member -MemberType NoteProperty -Name Med -Value $uniquehost_med
        $uniquehost | Add-Member -MemberType NoteProperty -Name Low -Value $uniquehost_low
        $host_ccri= ccriscore $uniquehost_crit $uniquehost_high $uniquehost_med $uniquehost_low
        $uniquehost | Add-Member -MemberType NoteProperty -Name CCRIScore -Value $host_ccri

        $hostarr+= $uniquehost

        $uniquehost_low,$uniquehost_med,$uniquehost_high,$uniquehost_crit = 0

        $writerow=$false
        $hostname=""
        #still need to start count for new host if last host\row is written
        if ($dupes) {$dupeplugin="99999999"}
        #if ($row.'Plugin ID' -like "55472") {$hostname=([regex]::Match($row.'Plugin Output',"(?<=Hostname : )\S+").captures).value}
        if ($row.'Plugin ID' -like "55472") {$row.'Plugin Output' -match "(?<=Hostname : )\S+" | Out-Null ; $hostname=$($Matches.Values)}
        if ((($row."Plugin ID" -notlike $dupeplugin) -and ($row.Risk -notmatch "None")) -and (-not (($lastplugin -eq $row.'Plugin ID') -and ($lastport -eq $row.Port)))) {
          #  if ($dupes) {$uniqueplugin+= " "+$row."Plugin ID"}
            switch ($row.Risk) {
                "Low" {$uniquehost_low++}
                "Medium" {$uniquehost_med++}
                "High" {$uniquehost_high++}
                "Critical" {$uniquehost_crit++}
            }

        }
    }



      #special case if last row is a single item for given IP
      if (($row -eq $rawcsv[-1]) -and ($row.host -notmatch $lastip)) {
        $uniquehost= New-Object psobject
         switch ($row.Risk) {
                "Low" {$uniquehost_low++}
                "Medium" {$uniquehost_med++}
                "High" {$uniquehost_high++}
                "Critical" {$uniquehost_crit++}
            }
        $uniquehost | Add-Member -MemberType NoteProperty -Name Hostname -Value $hostname
        $uniquehost | Add-Member -MemberType NoteProperty -Name IP -Value $row.Host


        $uniquehost | Add-Member -MemberType NoteProperty -Name Crit -Value $uniquehost_crit
        $uniquehost | Add-Member -MemberType NoteProperty -Name High -Value $uniquehost_high
        $uniquehost | Add-Member -MemberType NoteProperty -Name Med -Value $uniquehost_med
        $uniquehost | Add-Member -MemberType NoteProperty -Name Low -Value $uniquehost_low
        $host_ccri= ccriscore $uniquehost_crit $uniquehost_high $uniquehost_med $uniquehost_low
        $uniquehost | Add-Member -MemberType NoteProperty -Name CCRIScore -Value $host_ccri
        $hostarr+= $uniquehost

      }

      $dupeplugin=$row.'Plugin ID'
      $lastip= $row.Host
      $lastplugin= $row.'Plugin ID'
      $lastport=$row.Port

}

$total_crit,$total_high, $total_med, $total_low,$total_count =0
foreach ($system in $hostarr) {
    $total_high+= $system.High
    $total_crit+= $system.Crit
    $total_med+= $system.Med
    $total_low+= $system.Low
    $total_count+=1
}

$total_ccri= ccriscore $total_crit $total_high $total_med $total_low $total_count

      $totalhost= New-Object psobject
      $totalhost | Add-Member -MemberType NoteProperty -Name Hostname -Value "TOTAL - $total_count"
      $totalhost | Add-Member -MemberType NoteProperty -Name Crit -Value $total_crit
      $totalhost | Add-Member -MemberType NoteProperty -Name High -Value $total_high
      $totalhost | Add-Member -MemberType NoteProperty -Name Med -Value $total_med
      $totalhost | Add-Member -MemberType NoteProperty -Name Low -Value $total_low
      $totalhost | Add-Member -MemberType NoteProperty -Name CCRIScore -Value $total_ccri

$hostarr+= $totalhost

$filename_capture=$csvpath -replace "^.*\\"
$filename_ccricsv= $filename_capture.Insert($filename_capture.Length-4,"-CCRI_Score")
$outpath=$PSScriptRoot+"\"+$filename_ccricsv


$hostarr | Export-Csv -Path $outpath -NoTypeInformation
