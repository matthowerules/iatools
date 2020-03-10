#Acrobat STIG hardening
#version 04

#TODO: NEED TO CROSS CHECK ALL HKU KEYS WITH EVERY NTUSER.DAT, THEN ADD:
## reg load HKU\missinguser c:\users\missinguser\ntuser.dat
#Commenting out the HKLM items as these are handled by Puppet directly

#New-PSDrive -Name HKLM -PSProvider Registry -Root Registry::HKEY_LOCAL_MACHINE
New-PSDrive -Name HKU -PSProvider Registry -Root Registry::HKEY_USERS
$Sids = (Get-ChildItem HKU: | where { $_.Name -notlike "*Classes*" }).PSChildName

#$SetArray=@()
$SetArrayU=@()

#ACROBAT
#Computer
#V-79359
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,bEnhancedSecurityStandalone,REG_DWORD,1"
#V-79361
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,bEnhancedSecurityInBrowser,REG_DWORD,1"
#V-79363
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,iFileAttachmentPerms,REG_DWORD,1"
#V-79365
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchURLPerms\,iUnknownURLPerms,REG_DWORD,3"
#V-79367
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchURLPerms\,iURLPerms,REG_DWORD,1"
#V-79369  
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,bEnableFlash,REG_DWORD,0"
#V-79371
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud,bAdobeSendPluginToggle,REG_DWORD,1"
#V-79373
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,bDisableTrustedFolders,REG_DWORD,1"
#V-79379
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,bProtectedMode,REG_DWORD,1"
#V-79381
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,iProtectedView,REG_DWORD,2"
#V-79385  
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,bDisablePDFHandlerSwitching,REG_DWORD,1"
#V-79387  
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud,bDisableADCFileStore,REG_DWORD,1"
#V-79389
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices,bTogglePrefsSync,REG_DWORD,1"
#V-79391  
#$SetArray += "SOFTWARE\Wow6432Node\Adobe\Adobe Acrobat\DC\Installer,DisableMaintenance,REG_DWORD,1"
#V-79393  
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices,bToggleWebConnectors,REG_DWORD,1"
#V-79395  
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cWebmailProfiles,bDisableWebmail,REG_DWORD,1"
#V-79397
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cWelcomeScreen,bShowWelcomeScreen,REG_DWORD,0"
#V-79399
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cSharePoint,bDisableSharePointFeatures,REG_DWORD,1"
#V-79403
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,bDisableTrustedSites,REG_DWORD,1"
#V-79405
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,bDisableOSTrustedSites,REG_DWORD,1"
#V-79407
#$SetArray += "Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown,bEnableCertificateBasedTrust,REG_DWORD,0"

#User
#V-79375
$SetArrayU += "Software\Adobe\Adobe Acrobat\DC\AVGeneral,bFIPSMode,REG_DWORD,1"
#V-79377
$SetArrayU += "Software\Adobe\Adobe Acrobat\DC\Security\cDigSig\cEUTLDownload,bLoadSettingsFromURL,REG_DWORD,0"
#V-79401
$SetArrayU += "Software\Adobe\Adobe Acrobat\DC\Security\cDigSig\cAdobeDownload,bLoadSettingsFromURL,REG_DWORD,0"



#if (!(Test-Path "HKLM:\Software\Policies\Adobe\Adobe Acrobat\DC")) {
#  New-Item -Path "HKLM:\Software\Policies\Adobe\Adobe Acrobat\DC" -Name security -Force
#}

#foreach($setting in $SetArray) {
#  $regset = "HKLM\" + $setting.split(",")[0]
#  $regotherthing = $setting.split(",")[1]
#  $regtype = $setting.split(",")[2]
#  $regval = $setting.split(",")[3]
    
#  cmd /c reg add `"$regset`" /t $regtype /v $regotherthing /d `"$regval`" /f
#  echo "cmd /c reg add $regset /t $regtype /v $regotherthing /d $regval /f"
#}

foreach ($sid in $Sids) {
  if (!(Test-Path "HKU:\$sid\Software\Adobe\Adobe Acrobat\DC")) {
    New-Item -Path "HKU:\$sid\Software\Adobe\Adobe Acrobat\DC" -Name security -Force
  }

  foreach($setting in $SetArrayU) {
    $regset = "HKU\" + $sid + "\" + $setting.split(",")[0]
    $regotherthing = $setting.split(",")[1]
    $regtype = $setting.split(",")[2]
    $regval = $setting.split(",")[3]
    
    cmd /c reg add `"$regset`" /t $regtype /v $regotherthing /d `"$regval`" /f
    echo "cmd /c reg add $regset /t $regtype /v $regotherthing /d $regval /f"

  } 
}

$usercount=(gci -path registry::hkey_users).count
New-ItemProperty -path HKLM:\software\dcgs\patches -name hkuctacrobat -value $usercount -propertytype dword -force

