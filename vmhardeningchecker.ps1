#Run script via vmware PowerCLI on syscon
#Connects to VC at 10.6.70.4 and checks all VMs for settings from VMX Stig
#VC credentials are required for this script. 
function check-vmhardening ($VM) {

	$outputfile=$global:scripthome+"\"+$VM.name+"-settings.txt"
	foreach($setting in $settingarray) {
		$chksetting=$setting.split(",")[0]
		$chkval=$setting.split(",")[1]
		$vulnid=$setting.split(",")[2]
	
		$vmset= $VM | get-advancedsetting -name $chksetting
		
		if ($vmset.value -like $chkval) {$vulnstatus="CLOSED"}
		else {$vulnstatus="OPEN"}
		
		$vulnstate= "V-"+$vulnid+ "is:" + $vulnstatus
		if ([string]::IsNullOrEmpty($vmset.value)) {$outval="NULL"} else {$outval=$vmset.value}
		$outstring= "Output of " + $chksetting + " is: " + $outval
		"*************************************************" >> $outputfile
		" " >> $outputfile
		$vulnstate >> $outputfile
		$outstring >> $outputfile
		" " >> $outputfile
	}	
	
	"*************************************************" >> $outputfile
	" " >> $outputfile
	"V-64051 MANUAL review" >> $outputfile
	get-vm $vm.name |Get-HardDisk | Select Parent, Name, DiskType, Persistence | FT -AutoSize >> $outputfile
	" " >> $outputfile

	"*************************************************" >> $outputfile
	" " >> $outputfile
	"V-64093 MANUAL review" >> $outputfile
	$getvar= get-vm $vm.name | Get-FloppyDrive | Select Parent,Name,ConnectionState 
    if ($getvar) { $getvar >> $outputfile} else {"Output was NULL, no device attached" >> $outputfile}
	" " >> $outputfile
	"*************************************************" >> $outputfile
	" " >> $outputfile
	"V-64095 MANUAL review" >> $outputfile
	$getvar=  get-vm $vm.name |Get-CDDrive | Where {$_.extensiondata.connectable.connected -eq $true}
if ($getvar) { $getvar >> $outputfile} else {"Output was NULL, no device attached" >> $outputfile}
	" " >> $outputfile
	" " >> $outputfile
	"*************************************************" >> $outputfile
	" " >> $outputfile
	"V-64097 MANUAL review" >> $outputfile
	$getvar= get-vm $vm.name |Where {$_.ExtensionData.Config.Hardware.Device.DeviceInfo.Label -match "parallel"}
if ($getvar) { $getvar >> $outputfile} else {"Output was NULL, no device attached" >> $outputfile}
	" " >> $outputfile
	" " >> $outputfile
	"*************************************************" >> $outputfile
	" " >> $outputfile
	"V-64099 MANUAL review" >> $outputfile
	$getvar=  get-vm $vm.name |Where {$_.ExtensionData.Config.Hardware.Device.DeviceInfo.Label -match "serial"}
if ($getvar) { $getvar >> $outputfile} else {"Output was NULL, no device attached" >> $outputfile}
	" " >> $outputfile
	" " >> $outputfile
	"*************************************************" >> $outputfile
	" " >> $outputfile
	"V-64101 MANUAL review" >> $outputfile
	$getvar= get-vm $vm.name |Where {$_.ExtensionData.Config.Hardware.Device.DeviceInfo.Label -match "usb"}
if ($getvar) { $getvar >> $outputfile} else {"Output was NULL, no device attached" >> $outputfile}
	" " >> $outputfile
	$getvar=  get-vm $vm.name |Get-UsbDevice >> $outputfile
	" " >> $outputfile
	"*************************************************" >> $outputfile
	" " >> $outputfile
	"V-64119 MANUAL review" >> $outputfile
	$getvar= get-vm $vm.name | get-advancedsetting -name "ethernet*.filter*.name*" 
if ($getvar) { $getvar >> $outputfile} else {"Output was NULL, no device attached" >> $outputfile}
	" " >> $outputfile
	
}


$settingarray=@()
$settingarray+="isolation.tools.copy.disable,true,63151"
$settingarray+="isolation.tools.dnd.disable,true,64041"
$settingarray+="isolation.tools.setGUIOptions.enable,false,64043"
$settingarray+="isolation.tools.paste.disable,true,64045"
$settingarray+="isolation.tools.diskShrink.disable,true,64047"
$settingarray+="isolation.tools.diskWiper.disable,true,64049"
$settingarray+="isolation.tools.hgfsServerSet.disable,true,64053"
$settingarray+="isolation.tools.ghi.autologon.disable,true,64055"
$settingarray+="isolation.bios.bbs.disable,true,64057"
$settingarray+="isolation.tools.getCreds.disable,true,64059"
$settingarray+="isolation.tools.ghi.launchmenu.change,true,64061"
$settingarray+="isolation.tools.memSchedFakeSampleStats.disable,true,64063"
$settingarray+="isolation.tools.ghi.protocolhandler.info.disable,true,64065"
$settingarray+="isolation.ghi.host.shellAction.disable,true,64067"
$settingarray+="isolation.tools.dispTopoRequest.disable,true,64069"
$settingarray+="isolation.tools.trashFolderState.disable,true,64071"
$settingarray+="isolation.tools.ghi.trayicon.disable,true,64073"
$settingarray+="isolation.tools.unity.disable,true,64075"
$settingarray+="isolation.tools.unityInterlockOperation.disable,true,64077"
$settingarray+="isolation.tools.unity.push.update.disable,true,64079"
$settingarray+="isolation.tools.unity.taskbar.disable,true,64081"
$settingarray+="isolation.tools.unityActive.disable,true,64083"
$settingarray+="isolation.tools.unity.windowContents.disable,true,64085"
$settingarray+="isolation.tools.vmxDnDVersionGet.disable,true,64087"
$settingarray+="isolation.tools.guestDnDVersionSet.disable,true,64089"
$settingarray+="isolation.tools.vixMessage.disable,true,64091"
$settingarray+="RemoteDisplay.maxConnections,1,64103"
$settingarray+="RemoteDisplay.vnc.enabled,false,64105"
$settingarray+="isolation.tools.autoInstall.disable,true,64107"
$settingarray+="tools.setinfo.sizeLimit,1048576,64109"
$settingarray+="isolation.device.connectable.disable,true,64111"
$settingarray+="isolation.device.edit.disable,true,64113"
$settingarray+="tools.guestlib.enableHostInfo,false,64115"
$settingarray+="sched.mem.pshare.salt,$null,64117"

$global:scripthome= split-path -parent $myinvocation.mycommand.path

Set-PowerCLIConfiguration -invalidcertificateaction ignore -scope session -confirm:$false
if ($global:DefaultVIServers.Count -gt 1) { disconnect-viserver -server * -confirm:$false -force -ea silentlycontinue}
connect-viserver 10.6.70.4


$VMs=get-vm

foreach ($indivVM in $VMs) {
	check-vmhardening $indivVM
}

#**********************************************************************************

