$computer = [ADSI]"WinNT://$($env:COMPUTERNAME)"
$groups= $computer.psbase.Children | where {$_.psbase.schemaclassname -eq 'group'} 
  foreach ( $group in $groups) {
    $grouplist= $group.psbase.invoke("Members") | %{$_.GetType().InvokeMember("Name",'GetProperty',$null,$_,$null)}
	  foreach ($user in $grouplist) {
		  if ($user -match "S-1-5") {
		    $removesid="WinNT://"+$user
		    $group.Remove($removesid)
      }
    }  
  }
 
