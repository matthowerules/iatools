#W2012R2 SCAP deficiency checker
$outfile = "c:\$env:computername-missingitems.txt"


echo "*************V-1080************" >> $outfile
Auditpol /resourceSACL /type:File /view >> $outfile
echo " " >> $outfile

echo "*************V-1088************" >> $outfile
Auditpol /resourceSACL /type:Key /view >> $outfile
echo " " >> $outfile

echo "*************V-1152************" >> $outfile
(get-acl HKLM:\System\CurrentControlSet\Control\SecurePipeServers\Winreg).AccessToString >> $outfile
echo " " >> $outfile

echo "*************V-3481************" >> $outfile
get-item hkcu:\Software\Policies\Microsoft\WindowsMediaPlayer >> $outfile
echo " " >> $outfile

echo "*****V-14268\v-14269\V-14270******" >> $outfile
get-item hkcu:\Software\Microsoft\Windows\CurrentVersion\Policies\Attachments >> $outfile
echo " " >> $outfile

echo "*************V-15727************" >> $outfile
get-item hkcu:\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer >> $outfile
echo " " >> $outfile

echo "*************V-15823************" >> $outfile
dir c:\ -File -recurse | where{$_.Pspath -match ".*p(12|fx)$"} >> $outfile
echo "******************************* " >> $outfile
echo " " >> $outfile


echo "*************V-16021\V-16048************" >> $outfile
get-item hkcu:\Software\Policies\Microsoft\Assistance\Client\1.0 >> $outfile
echo " " >> $outfile

echo "*************V-26070************" >> $outfile
(get-acl "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon").AccessToString >>$outfile
echo " " >> $outfile

echo "*************V-26486************" >> $outfile
$accesschkpath="c:\program files (x86)\windows resource kits\Tools\accesschk.exe"
if (test-path $accesschkpath) { cmd /c "`"$accesschkpath`" -q -a SeDenyRemoteInteractiveLogonRight" >>$outfile} else {echo "Could not check user right"}
echo " " >> $outfile	


echo "*************V-32282************" >> $outfile
(get-acl "HKLM:\SOFTWARE\Microsoft\Active Setup\Installed Components").AccessToString >>$outfile
(get-acl "HKLM:\SOFTWARE\wow6432node\Microsoft\Active Setup\Installed Components").AccessToString >>$outfile
echo " " >> $outfile

echo "*************V-36656\V-36657\V-36774************" >> $outfile
get-item 'HKCU:\Software\policies\Microsoft\Windows\Control Panel\Desktop' >> $outfile
echo " " >> $outfile

echo "*************V-36775************" >> $outfile
get-itemproperty 'HKCU:\Software\Microsoft\Windows\currentversion\policies\system' -Name NoDispSCRSavPage >> $outfile
echo " " >> $outfile

echo "*************V-36667\V-36668************" >> $outfile
auditpol /get /subcategory:"Removable Storage" >> $outfile
echo " " >> $outfile

echo "*************V-36710\V-36711************" >> $outfile
if ( -not (test-path "$env:windir\Winstore")) { echo "Directory does not exist, this is NA" >> $outfile }
else { get-item HKlm:\SOFTWARE\Policies\Microsoft\WindowsStore >> $outfile }
echo " " >> $outfile

echo "*****V-36722\v-36723\V-36724******" >> $outfile
icacls C:\windows\system32\winevt\Logs\System.evtx >> $outfile
icacls C:\windows\system32\winevt\Logs\Security.evtx >> $outfile
icacls C:\windows\system32\winevt\Logs\Application.evtx >> $outfile
echo " " >> $outfile

echo "********V-36776\V-36777*********" >> $outfile
get-item HKCU:\SOFTWARE\Policies\Microsoft\Windows\CurrentVersion\PushNotifications >> $outfile
echo " " >> $outfile

echo "******V-40177\V-40178\V-40179*******" >> $outfile
icacls 'C:\Program Files' >> $outfile
icacls 'C:\Program Files (x86)' >> $outfile
icacls C:\ >> $outfile
icacls $env:windir >> $outfile
echo " " >> $outfile

echo "*************V-40200\V-40202************" >> $outfile
auditpol /get /subcategory:"Central Policy Staging" >> $outfile
echo " " >> $outfile

echo "*************V-40204************" >> $outfile
get-item 'HKLM:\SOFTWARE\policies\Microsoft\Windows NT\Terminal Services' >>$outfile
echo " " >> $outfile

echo "*************V-43238************" >> $outfile
get-item 'HKLM:\SOFTWARE\policies\Microsoft\Windows\Personalization' >>$outfile
echo " " >> $outfile

echo "*************V-43239************" >> $outfile
get-item 'HKLM:\SOFTWARE\microsoft\windows\currentversion\policies\System\Audit' >>$outfile
echo " " >> $outfile

echo "*************V-43240************" >> $outfile
get-item 'HKLM:\SOFTWARE\policies\microsoft\Windows\system' >>$outfile
echo " " >> $outfile

echo "*************V-43241***********" >> $outfile
get-itemproperty 'HKLM:\SOFTWARE\microsoft\Windows\currentversion\policies\system' -name MSAOptional >>$outfile
echo " " >> $outfile

echo "*************43245***********" >> $outfile
get-itemproperty 'HKLM:\SOFTWARE\microsoft\Windows\currentversion\policies\system' -name DisableAutomaticRestartSignOn  >>$outfile
echo " " >> $outfile

echo "*************V-57457************" >> $outfile
get-item 'HKLM:\SOFTWARE\policies\microsoft\Windows\Windows Error Reporting' >>$outfile
echo " " >> $outfile

echo "*************V-57459\V-57461************" >> $outfile
echo "if the check above shows CorporateWerServer as blank, these two are NA" >> $outfile

echo "*************V-57633\V-57635************" >> $outfile
auditpol /get /subcategory:"Authorization Policy Change" >> $outfile
echo " " >> $outfile

echo "*************V-57639************" >> $outfile
get-item 'HKLM:\SOFTWARE\Policies\Microsoft\Cryptography' >>$outfile
echo " " >> $outfile

echo "*************V-57721************" >> $outfile
icacls "$env:windir\system32\eventvwr.exe" >>$outfile
echo " " >> $outfile