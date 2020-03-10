#Reader STIG hardening
#version 04

#TODO: NEED TO CROSS CHECK ALL HKU KEYS WITH EVERY NTUSER.DAT, THEN ADD:
## reg load HKU\missinguser c:\users\missinguser\ntuser.dat
#Commenting out the HKLM items since Puppet now handles those keys directly

#New-PSDrive -Name HKLM -PSProvider Registry -Root Registry::HKEY_LOCAL_MACHINE
New-PSDrive -Name HKU -PSProvider Registry -Root Registry::HKEY_USERS
$Sids = (Get-ChildItem HKU: | where { $_.Name -notlike "*Classes*" }).PSChildName

#$SetArray=@()
$SetArrayU=@()

#READER
#Computer
#V-64919
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bEnhancedSecurityStandalone,REG_DWORD,1"
#V-64921
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bEnhancedSecurityInBrowser,REG_DWORD,1"
#V-64923
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bProtectedMode,REG_DWORD,1"
#V-64925
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,iProtectedView,REG_DWORD,2"
#V-64927
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cDefaultLaunchURLPerms,iURLPerms,REG_DWORD,1"
#0 - only with a documented ISSO risk acceptance.
#If the value for “iURLPerms” is set to “0” and a documented ISSO risk acceptance approving access to websites is provided, this is not a finding.
#If the value for “iURLPerms” is not set to “1” and “Type” configured to “REG_DWORD” or does not exist, this is a finding.
#V-64929
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cDefaultLaunchURLPerms,iUnknownURLPerms,REG_DWORD,3"
#V-64931
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,iFileAttachmentPerms,REG_DWORD,1"
#V-64933
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bEnableFlash,REG_DWORD,0"
#V-64935
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bDisablePDFHandlerSwitching,REG_DWORD,1"
#V-64937
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cCloud,bAdobeSendPluginToggle,REG_DWORD,1"
#V-64939
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices,bToggleAdobeDocumentServices,REG_DWORD,1"
#V-64941
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices,bTogglePrefsSync,REG_DWORD,1"
#V-64943
#$SetArray += "SOFTWARE\Wow6432Node\Adobe\Acrobat Reader\DC\Installer,DisableMaintenance,REG_DWORD,1"
#V-64945
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices,bToggleWebConnectors,REG_DWORD,1"
#V-64947
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices,bToggleAdobeSign,REG_DWORD,1"
#V-64949
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cWebmailProfiles,bDisableWebmail,REG_DWORD,1"
#V-64951
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cSharePoint,bDisableSharePointFeatures,REG_DWORD,1"
#V-64953
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cWelcomeScreen,bShowWelcomeScreen,REG_DWORD,0"
#V-64955
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices,bUpdater,REG_DWORD,0"
#V-65665
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bDisableOSTrustedSites,REG_DWORD,1"
#V-65667
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bDisableTrustedFolders,REG_DWORD,1"
#V-65669
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bDisableTrustedSites,REG_DWORD,1"
#V-65671
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bEnableCertificateBasedTrust,REG_DWORD,0"
#V-66049
#$SetArray += "Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown,bAcroSuppressUpsell,REG_DWORD,1"

#User
#V-65673
$SetArrayU += "Software\Adobe\Acrobat Reader\DC\Security\cDigSig\cEUTLDownload,bLoadSettingsFromURL,REG_DWORD,0"
#V-65675
$SetArrayU += "Software\Adobe\Acrobat Reader\DC\Security\cDigSig\cAdobeDownload,bLoadSettingsFromURL,REG_DWORD,0"
#V-65679
$SetArrayU += "Software\Adobe\Acrobat Reader\DC\AVGeneral,bFIPSMode,REG_DWORD,1"


#if (!(Test-Path "HKLM:\Software\Policies\Adobe\Acrobat Reader\DC")) {
#  New-Item -Path "HKLM:\Software\Policies\Adobe\Acrobat Reader\DC" -Name security -Force
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
  if (!(Test-Path "HKU:\$sid\Software\Adobe\Acrobat Reader\DC")) {
    New-Item -Path "HKU:\$sid\Software\Adobe\Acrobat Reader\DC" -Name security -Force
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
New-ItemProperty -path HKLM:\software\dcgs\patches -name hkuctreader -value $usercount -propertytype dword -force

