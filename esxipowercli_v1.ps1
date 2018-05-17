#esxi 6stig checker

Param (
	[string] $esxiIP = $( throw "`n`n`n-esxi IP is required`n`n`n" )
)
disconnect-viserver -server * -force -confirm:$false
connect-viserver $esxiIP


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must limit the number of concurrent sessions to ten for all accounts and/or account types by enabling lockdown mode.
#STIG ID: ESXI-06-000001  Rule ID: SV-77637r1_rule  
echo "Vuln ID: V-63147"
#Severity: CAT II Class: Unclass

Get-VMHost | Select Name,@{N="Lockdown";E={$_.Extensiondata.Config.LockdownMode}}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must verify the DCUI.Access list.
#STIG ID: ESXI-06-000002  Rule ID: SV-77663r1_rule  
echo "Vuln ID: V-63173"
#Severity: CAT III Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name DCUI.Access


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must verify the exception users list for lockdown mode.
#STIG ID: ESXI-06-000003  Rule ID: SV-77665r1_rule  
echo "Vuln ID: V-63175"
#Severity: CAT III Class: Unclass

$vmhost = Get-VMHost | Get-View
$lockdown = Get-View $vmhost.ConfigManager.HostAccessManager
echo "Exception list is:" $lockdown.QueryLockdownExceptions()


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  Remote logging for ESXi hosts must be configured.
#STIG ID: ESXI-06-000004  Rule ID: SV-77667r1_rule  
echo "Vuln ID: V-63177"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logHost


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must enforce the limit of three consecutive invalid logon attempts by a user.
#STIG ID: ESXI-06-000005  Rule ID: SV-77669r1_rule  
echo "
echo "Vuln ID: V-63179""
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Security.AccountLockFailures


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must enforce the unlock timeout of 15 minutes after a user account is locked out.
#STIG ID: ESXI-06-000006  Rule ID: SV-77671r1_rule  
echo "Vuln ID: V-63181"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Security.AccountUnlockTime


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must display the Standard Mandatory DoD Notice and Consent Banner before granting access to the system.
#STIG ID: ESXI-06-000007  Rule ID: SV-77673r1_rule  
echo "
echo "Vuln ID: V-63183""
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Annotations.WelcomeMessage


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The SSH daemon must display the Standard Mandatory DoD Notice and Consent Banner before granting access to the system.
#STIG ID: ESXI-06-000008  Rule ID: SV-77675r1_rule  
echo "Vuln ID: V-63185"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Config.Etc.issue


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must produce audit records containing information to establish what type of events occurred.
#STIG ID: ESXI-06-000030  Rule ID: SV-77719r1_rule  
echo "Vuln ID: V-63229"
#Severity: CAT III Class: Unclass
echo "log level is set to " (Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.log.level).value
echo "Status is:"
if ((Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.log.level).value -eq "info") {echo "Closed"} 
else {echo "Open"}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must enforce password complexity by requiring that at least one upper-case character be used.
#STIG ID: ESXI-06-000031  Rule ID: SV-77721r1_rule  
echo "Vuln ID: V-63231"
#Severity: CAT II Class: Unclass

(Get-VMHost | Get-AdvancedSetting -Name Security.PasswordQualityControl).value 


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must disable the Managed Object Browser (MOB).
#STIG ID: ESXI-06-000034  Rule ID: SV-77727r1_rule  
echo "Vuln ID: V-63237"
#Severity: CAT II Class: Unclass
echo "(Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.plugins.solo.enableMob).value is:" (Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.plugins.solo.enableMob).value
echo "Status is:"
if ((Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.plugins.solo.enableMob).value -like "False") {echo "Closed"} 
else {echo "Open"}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must be configured to disable non-essential capabilities by disabling SSH.
#STIG ID: ESXI-06-000035  Rule ID: SV-77729r1_rule  
echo "Vuln ID: V-63239"
#Severity: CAT II Class: Unclass
echo "(Get-VMHost | Get-VMHostService | Where {$_.Label -eq `"SSH`"}).Running is:"  (Get-VMHost | Get-VMHostService | Where {$_.Label -eq "SSH"}).Running
if ((Get-VMHost | Get-VMHostService | Where {$_.Label -eq "SSH"}).Running -like "False") {echo "SSH service is not running. Status: Closed"} 
else {echo "SSH service is running. Status: Open"}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must disable ESXi Shell unless needed for diagnostics or troubleshooting.
#STIG ID: ESXI-06-000036  Rule ID: SV-77731r1_rule  
echo "Vuln ID: V-63241"
#Severity: CAT II Class: Unclass
echo "(Get-VMHost | Get-VMHostService | Where {$_.Label -eq `"ESXi Shell`"}).Running is" (Get-VMHost | Get-VMHostService | Where {$_.Label -eq "ESXi Shell"}).Running
if ((Get-VMHost | Get-VMHostService | Where {$_.Label -eq "ESXi Shell"}).Running -like "False") {echo "Closed"} 
else {echo "Open"}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must set a timeout to automatically disable idle sessions after a predetermined period.
#STIG ID: ESXI-06-000041  Rule ID: SV-77741r1_rule  
echo "Vuln ID: V-63251"
#Severity: CAT II Class: Unclass
$checkval= (Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellInteractiveTimeOut).Value
Echo "(Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellInteractiveTimeOut).Value is:" $checkval
if ($checkval -eq 600) { echo closed} else {echo open}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must terminate shell services after a predetermined period.
#STIG ID: ESXI-06-000042  Rule ID: SV-77743r1_rule  
echo "Vuln ID: V-63253"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellTimeOut


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must logout of the console UI after a predetermined period.
#STIG ID: ESXI-06-000043  Rule ID: SV-77745r1_rule  
echo "Vuln ID: V-63255"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name UserVars.DcuiTimeOut


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must enable kernel core dumps.
#STIG ID: ESXI-06-000044  Rule ID: SV-77747r1_rule  
echo "Vuln ID: V-63257"
#Severity: CAT III Class: Unclass


$esxcli = Get-EsxCli
$esxcli.system.coredump.partition.get()
$esxcli.system.coredump.network.get()


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must enable a persistent log location for all locally stored logs.
#STIG ID: ESXI-06-000045  Rule ID: SV-77749r1_rule  
echo "Vuln ID: V-63259"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logDir

#or

$esxcli = Get-EsxCli
$esxcli.system.syslog.config.get() | Select LocalLogOutput,LocalLogOutputIsPersistent


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must configure NTP time synchronization.
#STIG ID: ESXI-06-000046  Rule ID: SV-77751r1_rule  
echo "Vuln ID: V-63261"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-VMHostNTPServer
Get-VMHost | Get-VMHostService | Where {$_.Label -eq "NTP Daemon"}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The Image Profile and VIB Acceptance Levels must be verified.
#STIG ID: ESXI-06-000047  Rule ID: SV-77753r1_rule  
echo "Vuln ID: V-63263"
#Severity: CAT I Class: Unclass

$esxcli = Get-EsxCli
$esxcli.software.acceptance.get()


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  SNMP must be configured properly.
#STIG ID: ESXI-06-000053  Rule ID: SV-77765r1_rule  
echo "Vuln ID: V-63275"
#Severity: CAT II Class: Unclass

Get-VMHostSnmp | Select *

echo "*****************************************************"
echo "*****************************************************"
#Rule Title: The system must enable bidirectional CHAP authentication for iSCSI traffic.
#STIG ID:	ESXI-06-000054 Rule ID:	SV-77767r1_rule  
echo "Vuln ID: V-63277"
#Severity: CAT III Class: Unclass

Get-VMHost | Get-VMHostHba | Where {$_.Type -eq "iscsi"} | Select AuthenticationProperties -ExpandProperty AuthenticationProperties


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must disable Inter-VM transparent page sharing.
#STIG ID: ESXI-06-000055  Rule ID: SV-77769r1_rule  
echo "Vuln ID: V-63279"
#Severity: CAT III Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Mem.ShareForceSalting


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must configure the firewall to restrict access to services running on the host.
#STIG ID: ESXI-06-000056  Rule ID: SV-77771r1_rule  
echo "Vuln ID: V-63281"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-VMHostFirewallException | Where {$_.Enabled -eq $true} | Select Name,Enabled,@{N="AllIPEnabled";E={$_.ExtensionData.AllowedHosts.AllIP}}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must configure the firewall to block network traffic by default.
#STIG ID: ESXI-06-000057  Rule ID: SV-77773r1_rule  
echo "Vuln ID: V-63283"
#Severity: CAT II Class: Unclass

Get-VMHostFirewallDefaultPolicy


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must enable BPDU filter on the host to prevent being locked out of physical switch ports with Portfast and BPDU Guard enabled.
#STIG ID: ESXI-06-000058  Rule ID: SV-77775r1_rule  
echo "Vuln ID: V-63285"
#Severity: CAT III Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Net.BlockGuestBPDU


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The virtual switch Forged Transmits policy must be set to reject.
#STIG ID: ESXI-06-000059  Rule ID: SV-77777r1_rule  
echo "Vuln ID: V-63287"
#Severity: CAT II Class: Unclass


Get-VirtualSwitch | Get-SecurityPolicy
Get-VirtualPortGroup | Get-SecurityPolicy


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The virtual switch MAC Address Change policy must be set to reject.
#STIG ID: ESXI-06-000060  Rule ID: SV-77779r1_rule  
echo "Vuln ID: V-63289"
#Severity: CAT I Class: Unclass

Get-VirtualSwitch | Get-SecurityPolicy
Get-VirtualPortGroup | Get-SecurityPolicy


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The virtual switch Promiscuous Mode policy must be set to reject.
#STIG ID: ESXI-06-000061  Rule ID: SV-77781r1_rule  
echo "Vuln ID: V-63291"
#Severity: CAT II Class: Unclass

Get-VirtualSwitch | Get-SecurityPolicy
Get-VirtualPortGroup | Get-SecurityPolicy


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must prevent unintended use of the dvFilter network APIs.
#STIG ID: ESXI-06-000062  Rule ID: SV-77783r1_rule  
echo "Vuln ID: V-63293"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Net.DVFilterBindIpAddress


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  All port groups must be configured to a value other than that of the native VLAN.
#STIG ID: ESXI-06-000063  Rule ID: SV-77785r1_rule  
echo "Vuln ID: V-63295"
#Severity: CAT II Class: Unclass
#Rule Title:  All port groups must not be configured to VLAN 4095 unless Virtual Guest Tagging (VGT) is required.
#STIG ID: ESXI-06-000064  Rule ID: SV-77787r1_rule  
echo "Vuln ID: V-63297"
#Severity: CAT II Class: Unclass
#Rule Title:  All port groups must not be configured to VLAN values reserved by upstream physical switches.
#STIG ID: ESXI-06-000065  Rule ID: SV-77789r1_rule  
echo "Vuln ID: V-63299"
#Severity: CAT II Class: Unclass



<# DEPRECATED CHECK
echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must not use the IPv6 network stack unless needed.
#STIG ID: ESXI-06-000069  Rule ID: SV-77797r1_rule  
echo "Vuln ID: V-63307"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-VMHostNetwork | Select VMHost,IPv6Enabled

#>
echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must enable lockdown mode to restrict remote access.
#STIG ID: ESXI-06-100001  Rule ID: SV-77955r1_rule  
echo "Vuln ID: V-63465"
#Severity: CAT II Class: Unclass

Get-VMHost | Select Name,@{N="Lockdown";E={$_.Extensiondata.Config.LockdownMode}}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must support the capability to centrally review and analyze audit records from multiple components within the system by configuring remote logging.
#STIG ID: ESXI-06-100004  Rule ID: SV-77967r1_rule  
echo "Vuln ID: V-63477"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logHost


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must retain the Standard Mandatory DoD Notice and Consent Banner on the screen until users acknowledge the usage conditions and take explicit actions to log on for further access.
#STIG ID: ESXI-06-100007  Rule ID: SV-77975r1_rule  
echo "Vuln ID: V-63485"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Annotations.WelcomeMessage


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must allow only the ISSM (or individuals or roles appointed by the ISSM) to select which auditable events are to be audited.
#STIG ID: ESXI-06-100030  Rule ID: SV-77999r1_rule  
echo "Vuln ID: V-63509"
#Severity: CAT III Class: Unclass


Get-VMHost | Get-AdvancedSetting -Name Config.HostAgent.log.level


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must enforce password complexity by requiring that at least one lower-case character be used.
#STIG ID: ESXI-06-100031  Rule ID: SV-78021r1_rule  
echo "Vuln ID: V-63531"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Security.PasswordQualityControl


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The system must disable SSH.
#STIG ID: ESXI-06-100035  Rule ID: SV-78043r1_rule  
echo "Vuln ID: V-63553"
#Severity: CAT II Class: Unclass

(Get-VMHost | Get-VMHostService | Where {$_.Label -eq "SSH"}).Running


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must automatically terminate a user session after inactivity timeouts have expired or at shutdown by setting an idle timeout.
#STIG ID: ESXI-06-100041  Rule ID: SV-78263r1_rule  
echo "Vuln ID: V-63773"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellInteractiveTimeOut


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must automatically terminate a user session after inactivity timeouts have expired or at shutdown by setting an idle timeout on shell services.
#STIG ID: ESXI-06-100042  Rule ID: SV-78265r1_rule  
echo "Vuln ID: V-63775"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name UserVars.ESXiShellTimeOut


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must automatically terminate a user session after inactivity timeouts have expired or at shutdown.
#STIG ID: ESXI-06-100043  Rule ID: SV-78267r1_rule  
echo "Vuln ID: V-63777"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name UserVars.DcuiTimeOut


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must synchronize internal information system clocks to the authoritative time source when the time difference is greater than one second.
#STIG ID: ESXI-06-100046  Rule ID: SV-78269r1_rule  
echo "Vuln ID: V-63779"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-VMHostNTPServer
Get-VMHost | Get-VMHostService | Where {$_.Label -eq "NTP Daemon"}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must employ a deny-all, permit-by-exception policy to allow the execution of authorized software programs and guest VMs by verifying Image Profile and VIP Acceptance Levels.
#STIG ID: ESXI-06-100047  Rule ID: SV-78313r1_rule  
echo "Vuln ID: V-63823"
#Severity: CAT I Class: Unclass

$esxcli = Get-EsxCli
$esxcli.software.acceptance.get()


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must protect audit information from unauthorized modification by configuring remote logging.
#STIG ID: ESXI-06-200004  Rule ID: SV-78323r1_rule  
echo "Vuln ID: V-63833"
#Severity: CAT II Class: Unclass


Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logHost


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must enforce password complexity by requiring that at least one numeric character be used.
#STIG ID: ESXI-06-200031  Rule ID: SV-78357r1_rule  
echo "Vuln ID: V-63867"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Security.PasswordQualityControl


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must provide the capability to immediately disconnect or disable remote access to the information system by disabling SSH.
#STIG ID: ESXI-06-200035  Rule ID: SV-78375r1_rule  
echo "Vuln ID: V-63885"
#Severity: CAT II Class: Unclass


Get-VMHost | Get-VMHostService | Where {$_.Label -eq "SSH"}


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must implement cryptographic mechanisms to prevent unauthorized modification of all information at rest on all VMM components by verifying Image Profile and VIP Acceptance Levels.
#STIG ID: ESXI-06-200047  Rule ID: SV-78391r1_rule  
echo "Vuln ID: V-63901"
#Severity: CAT I Class: Unclass

$esxcli = Get-EsxCli
$esxcli.software.acceptance.get()


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must protect audit information from unauthorized deletion by configuring remote logging.
#STIG ID: ESXI-06-300004  Rule ID: SV-78393r1_rule  
echo "Vuln ID: V-63903"
#Severity: CAT II Class: Unclass


Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logHost


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must require the change of at least 8 of the total number of characters when passwords are changed.
#STIG ID: ESXI-06-300031  Rule ID: SV-78395r1_rule  
echo "Vuln ID: V-63905"
#Severity: CAT II Class: Unclass


Get-VMHost | Get-AdvancedSetting -Name Security.PasswordQualityControl


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must off-load audit records onto a different system or media than the system being audited by configuring remote logging.
#STIG ID: ESXI-06-400004  Rule ID: SV-78405r1_rule  
echo "Vuln ID: V-63915"
#Severity: CAT II Class: Unclass


Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logHost


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must enforce a minimum 15-character password length.
#STIG ID: ESXI-06-400031  Rule ID: SV-78409r1_rule  
echo "Vuln ID: V-63919"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Security.PasswordQualityControl


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must, at a minimum, off-load interconnected systems in real time and off-load standalone systems weekly by configuring remote logging.
#STIG ID: ESXI-06-500004  Rule ID: SV-78411r1_rule  
echo "Vuln ID: V-63921"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logHost


echo "*****************************************************"
echo "*****************************************************"
#Rule Title:  The VMM must enforce password complexity by requiring that at least one special character be used.
#STIG ID: ESXI-06-500031  Rule ID: SV-78413r1_rule  
echo "Vuln ID: V-63923"
#Severity: CAT II Class: Unclass

Get-VMHost | Get-AdvancedSetting -Name Security.PasswordQualityControl

#Get-VMHost | Get-AdvancedSetting -Name Syslog.global.logHost













