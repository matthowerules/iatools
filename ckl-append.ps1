param([String]$SourceChecklist,[String]$DestinationChecklist);

Write-Host ""

if ([String]::IsNullOrEmpty($SourceChecklist)) {
	write-host -ForegroundColor Red "Source checklist must be specified";
	write-host -ForegroundColor Red "Exiting Script";
	exit 1;
}

if ([String]::IsNullOrEmpty($DestinationChecklist)) {
	write-host -ForegroundColor Red "Destination checklist must be specified";
	write-host -ForegroundColor Red "Exiting Script";
	exit 1;
}

if (Test-Path $SourceChecklist) {
	Write-Host "Found source checklist."
	Write-Host ""
} else {
	write-host -ForegroundColor Red "Source checklist must be specified";
	write-host -ForegroundColor Red "Exiting Script";
	exit 1;
}

if (Test-Path $DestinationChecklist) {
	Write-Host "Found destination checklist."
	Write-Host ""
} else {
	write-host -ForegroundColor Red "Destination checklist must be specified";
	write-host -ForegroundColor Red "Exiting Script";
	exit 1;
}

Write-Host "Content of source checklist being transferred."
Write-Host ""

[xml]$SourceSTIGChecklistData = Get-Content $SourceChecklist
$DestinationSTIGChecklistData = New-Object xml
$DestinationSTIGChecklistData.psbase.PreserveWhitespace = $true
$DestinationSTIGChecklistData.Load($DestinationChecklist)

[System.Xml.XmlElement] $srcchecklist = $SourceSTIGChecklistData.CHECKLIST
[System.Xml.XmlElement] $destchecklist = $DestinationSTIGChecklistData.CHECKLIST

foreach($vuln in $srcchecklist.STIGS.iSTIG.ChildNodes) {
	foreach($stigdata in $vuln.ChildNodes) {   
		if ($stigdata.VULN_ATTRIBUTE -eq "Vuln_Num") {
			[string] $vulnid = $stigdata.ATTRIBUTE_DATA
		}
	}
	
	[string] $status = $vuln.STATUS	
	[string] $findingdetails = $vuln.FINDING_DETAILS
	[string] $comments = $vuln.COMMENTS
	[string] $severityoverride = $vuln.SEVERITY_OVERRIDE
	[string] $severityjustification = $vuln.SEVERITY_JUSTIFICATION
	
	foreach($destvuln in $destchecklist.STIGS.iSTIG.ChildNodes) {
		foreach($deststigdata in $destvuln.ChildNodes) {   
			if ($deststigdata.VULN_ATTRIBUTE -eq "Vuln_Num") {
				if ($deststigdata.ATTRIBUTE_DATA -eq $vulnid) {
					#$destvuln.STATUS = $status
					#$destvuln.FINDING_DETAILS = $findingdetails
					#$destvuln.COMMENTS = $comments
					#$destvuln.SEVERITY_OVERRIDE = $severityoverride
					#$destvuln.SEVERITY_JUSTIFICATION = $severityjustification
					$destvuln.COMMENTS = $destvuln.COMMENTS + $comments
					Write-Host "ID = $vulnid STATUS = $status"
				}
			}
		}
	}
}

$DestinationSTIGChecklistData.Save($DestinationChecklist)

$MyFile = Get-Content $DestinationChecklist
$Utf8NoBomEncoding = New-Object System.Text.UTF8Encoding($False)
[System.IO.File]::WriteAllLines($DestinationChecklist, $MyFile, $Utf8NoBomEncoding)

Write-Host ""
Write-Host "Contents of $SourceChecklist have been transferred to $DestinationChecklist."
Write-Host ""
