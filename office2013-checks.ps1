#Office 2013 STIG checker
#Version - 0.4
$outfile = ".\$env:computername-office2013.txt"

echo "V-17173 Word" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17173 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17173 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE\powerpt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE")."powerpt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17173 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17174 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17174 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17174 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT\powerpt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT")."powerpt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17175 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17175 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17175 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK\powerpt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK")."powerpt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17183 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17183 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17183 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL\powerpt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL")."powerpt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17184 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17184 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17184 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT\powerpt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT")."powerpt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17187" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security\NoTBPromptUnsignedAddin" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security")."NoTBPromptUnsignedAddin" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17187 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\NoTBPromptUnsignedAddin" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security")."NoTBPromptUnsignedAddin" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17187 - powerpt" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\powerpoint\security\NoTBPromptUnsignedAddin" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\powerpoint\security")."NoTBPromptUnsignedAddin" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17322 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\excel12betafilesfromconverters" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."excel12betafilesfromconverters" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17322 - powerpt" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\powerpoint\security\fileblock\powerpoint12betafilesfromconverters" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\powerpoint\security\fileblock")."powerpoint12betafilesfromconverters" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17471" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\trusted locations\AllLocationsDisabled" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\trusted locations")."AllLocationsDisabled" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17471 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\trusted locations\AllLocationsDisabled" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\trusted locations")."AllLocationsDisabled" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17471 - powerpt" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\powerpoint\security\trusted locations\AllLocationsDisabled" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\powerpoint\security\trusted locations")."AllLocationsDisabled" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17473" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\WordBypassEncryptedMacroScan" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."WordBypassEncryptedMacroScan" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17473 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\ExcelBypassEncryptedMacroScan" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\")."ExcelBypassEncryptedMacroScan" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17473 - powerpt" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\powerpoint\security\PowerPointBypassEncryptedMacroScan" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\powerpoint\security\")."PowerPointBypassEncryptedMacroScan" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17520" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\trusted locations\AllowNetworkLocations" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\trusted locations")."AllowNetworkLocations" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17520 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\trusted locations\AllowNetworkLocations" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\trusted locations")."AllowNetworkLocations" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17520 - powerpt- vicki" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\trusted locations\AllowNetworkLocations" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\trusted locations")."AllowNetworkLocations" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17521 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options\DefaultFormat" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options")."DefaultFormat" >> $outfile 
echo "Closed if value is DWORD = 51" >> $outfile 
echo " " >> $outfile 


echo "V-17521 - powerpt" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\options\DefaultFormat" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\options")."DefaultFormat" >> $outfile 
echo "Closed if value is DWORD = 27" >> $outfile 
echo " " >> $outfile 


echo "V-17522" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\AccessVBOM" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."AccessVBOM" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17522 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\AccessVBOM" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security")."AccessVBOM" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17522 - powerpt" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\AccessVBOM" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."AccessVBOM" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17545 - access" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\access\security\vbawarnings" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\access\security")."vbawarnings" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-17545 - powerpt" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\VBAWarnings" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."VBAWarnings" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 



echo "V-17621 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\ExtensionHardening" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security")."ExtensionHardening" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17650 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options\AutoHyperlink" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options")."AutoHyperlink" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17652 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options\DisableAutoRepublish" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options")."DisableAutoRepublish" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17732 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options\binaryoptions\fupdateext_78_1" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options\binaryoptions")."fupdateext_78_1" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17744 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options\DisableAutoRepublishWarning" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options")."DisableAutoRepublishWarning" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17751 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\internet\DoNotLoadPictures" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\internet")."DoNotLoadPictures" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17752 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\options\MarkupOpenSave" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\options")."MarkupOpenSave" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17788 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\RunPrograms" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."RunPrograms" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17804 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options\binaryoptions\fGlobalSheet_37_1" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options\binaryoptions")."fGlobalSheet_37_1" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17809 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\DownLoadImages" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."DownLoadImages" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26584 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26584 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26584 - PowerPoint" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT\PowerPnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT")."PowerPnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26585 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26585 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26585 - PowerPoint" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\powerpnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION")."powerpnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26586 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26586 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26586 - PowerPoint" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\PowerPnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL")."PowerPnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26587 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26587 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26587 - PowerPoint" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\PowerPnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD")."PowerPnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26588 - ol" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\outlook.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS")."outlook.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26588 - excel" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\excel.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS")."excel.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26588 - PowerPoint" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\PowerPnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS")."PowerPnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26589" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security\RequireAddinSig" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security")."RequireAddinSig" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26589 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\RequireAddinSig" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security")."RequireAddinSig" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26592" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation\EnableOnLoad" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation")."EnableOnLoad" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26592 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\filevalidation\EnableOnLoad" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\filevalidation")."EnableOnLoad" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26592 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation\EnableOnLoad" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation")."EnableOnLoad" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26595 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\DBaseFiles" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."DBaseFiles" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26596 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\DifandSylkFiles" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."DifandSylkFiles" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26597 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\XL2Macros" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."XL2Macros" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26598 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\XL2Worksheets" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."XL2Worksheets" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26599 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\XL3Macros" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."XL3Macros" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26601 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\XL3Worksheets" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."XL3Worksheets" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26607 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\XL4Macros" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."XL4Macros" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26608 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\XL4Workbooks" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."XL4Workbooks" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26609 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\XL4Worksheets" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."XL4Worksheets" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26610 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\XL95Workbooks" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."XL95Workbooks" >> $outfile 
echo "Closed if value is DWORD = 5" >> $outfile 
echo " " >> $outfile 


echo "V-26611 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\XL9597WorkbooksandTemplates" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."XL9597WorkbooksandTemplates" >> $outfile 
echo "Closed if value is DWORD = 5" >> $outfile 
echo " " >> $outfile 


echo "V-26612" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\OpenInProtectedView" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."OpenInProtectedView" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26612 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock\OpenInProtectedView" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\fileblock")."OpenInProtectedView" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26612 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\fileblock\OpenInProtectedView" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\fileblock")."OpenInProtectedView" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26614" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview\DisableInternetFilesInPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview")."DisableInternetFilesInPV" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26614 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\protectedview\DisableInternetFilesInPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\protectedview")."DisableInternetFilesInPV" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26614 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview\DisableInternetFilesInPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview")."DisableInternetFilesInPV" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26615" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview\DisableUnsafeLocationsInPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview")."DisableUnsafeLocationsInPV" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26615 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\protectedview\DisableUnsafeLocationsInPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\protectedview")."DisableUnsafeLocationsInPV" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26615 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview\DisableUnsafeLocationsInPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview")."DisableUnsafeLocationsInPV" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26616 - 1" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation\OpenInProtectedView" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation")."OpenInProtectedView" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26616 - 2" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation\DisableEditFromPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation")."DisableEditFromPV" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26616a - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\filevalidation\OpenInProtectedView" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\filevalidation\")."OpenInProtectedView" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26616b - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\filevalidation\DisableEditFromPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\filevalidation\")."DisableEditFromPV" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26616a - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation\OpenInProtectedView" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation\")."OpenInProtectedView" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26616b - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation\DisableEditFromPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation\")."DisableEditFromPV" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26617" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview\DisableAttachmentsInPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview")."DisableAttachmentsInPV" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26617 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\protectedview\DisableAttachmentsInPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\protectedview")."DisableAttachmentsInPV" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26617 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview\DisableAttachmentsInPV" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview")."DisableAttachmentsInPV" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26625" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\access\noextensibilitycustomizationfromdocument" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\access")."noextensibilitycustomizationfromdocument" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26625 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\toolbars\excel\noextensibilitycustomizationfromdocument" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\toolbars\excel")."noextensibilitycustomizationfromdocument" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26625 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\toolbars\PowerPoint\noextensibilitycustomizationfromdocument" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\toolbars\PowerPoint")."noextensibilitycustomizationfromdocument" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26639 - PowerPoint" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\slide libraries\DisableSlideUpdate" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\slide libraries")."DisableSlideUpdate" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-41344 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\webservicefunctionwarnings" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security")."webservicefunctionwarnings" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-41346 - excel" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options\extractdatadisableui" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\options")."extractdatadisableui" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42327 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42328 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42329 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42330 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42331 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42332 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42333 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42334 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42335 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-42336 - powerpt" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT\PPTVIEW.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT")."PPTVIEW.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17759" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet\OpenDocumentsReadWriteWhileBrowsing" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet")."OpenDocumentsReadWriteWhileBrowsing" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17773" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet\RelyOnVML" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet")."RelyOnVML" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17561" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet\AllowPNG" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet")."AllowPNG" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17627" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\ptwatson\PTWOptIn" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\ptwatson")."PTWOptIn" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17664" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\general\ShownFirstRunOptin" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\general")."ShownFirstRunOptin" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17612" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\QMEnable" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common")."QMEnable" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17740" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\UpdateReliabilityData" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common")."UpdateReliabilityData" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17590" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\trustcenter\TrustBar" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\trustcenter")."TrustBar" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17769" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\DRMEncryptProperty" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."DRMEncryptProperty" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17741" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Security\AutomationSecurity" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Security")."AutomationSecurity" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-17659" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\DisableHyperLinkWarning" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."DisableHyperLinkWarning" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17665" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\DisablePasswordUI" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."DisablePasswordUI" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17560" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\trusted locations\Allow User Locations" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\trusted locations")."Allow User Locations" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17669" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Smart Tag\NeverLoadManifests" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Smart Tag")."NeverLoadManifests" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17661" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\services\fax\NoFax" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\services\fax")."NoFax" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17765" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm\DisableCreation" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm")."DisableCreation" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17583" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm\IncludeHTML" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm")."IncludeHTML" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17731" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm\RequireConnection" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm")."RequireConnection" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17749" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\signatures\EnableCreationOfWeakXPSignatures" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\signatures")."EnableCreationOfWeakXPSignatures" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17805" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\signatures\SuppressExtSigningSvcs" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\signatures")."SuppressExtSigningSvcs" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17660" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\fixedformat\DisableFixedFormatDocProperties" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\fixedformat")."DisableFixedFormatDocProperties" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17605" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\documentinformationpanel\Beaconing" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\documentinformationpanel")."Beaconing" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17670" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\portal\LinkPublishingDisabled" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\portal")."LinkPublishingDisabled" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17581" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Blog\DisableBlog" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Blog")."DisableBlog" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26704" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\EncryptDocProps" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."EncryptDocProps" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26630" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet\UseOnlineContent" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet")."UseOnlineContent" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-40860" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\firstrun\disablemovie" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\firstrun")."disablemovie" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40861" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\firstrun\bootedrtm" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\firstrun")."bootedrtm" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40862" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\signin\signinoptions" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\signin")."signinoptions" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-40863" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\gfx\disablescreenshotautohyperlink" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\gfx")."disablescreenshotautohyperlink" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40864" >> $outfile 
echo "hkcu:\software\Policies\Microsoft\office\15.0\common\general\SkyDriveSignInOption" >> $outfile  
(get-itemproperty "hkcu:\software\Policies\Microsoft\office\15.0\common\general")."SkyDriveSignInOption" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-40875" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\broadcast\disabledefaultservice" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\broadcast")."disabledefaultservice" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40879" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\broadcast\disableprogrammaticaccess" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\broadcast")."disableprogrammaticaccess" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40880" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\feedback\includescreenshot" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\feedback")."includescreenshot" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-40881" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\feedback\enabled" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\feedback")."enabled" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-40882" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\wef\trustedcatalogs\requireserververification" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\wef\trustedcatalogs")."requireserververification" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40883" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\wef\trustedcatalogs\disableomexcatalogs" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\wef\trustedcatalogs")."disableomexcatalogs" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40884" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\roaming\roamingsettingsdisabled" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\roaming")."roamingsettingsdisabled" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40885" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\osm\enableupload" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\osm")."enableupload" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-40886" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\osm\enablefileobfuscation" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\osm")."enablefileobfuscation" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40887" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\osm\enablelogging" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\osm")."enablelogging" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


#;!Individual Components

echo "V-17810" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\internet\DoNotUnderlineHyperlinks" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\internet")."DoNotUnderlineHyperlinks" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17757" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security\ModalTrustDecisionOnly" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security")."ModalTrustDecisionOnly" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17584" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings\Default File Format" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings")."Default File Format" >> $outfile 
echo "Closed if value is DWORD = 12" >> $outfile 
echo " " >> $outfile 


echo "V-17603" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings\NoConvertDialog" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings")."NoConvertDialog" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26589" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\RequireAddinSig" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."RequireAddinSig" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17187" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\NoTBPromptUnsignedAddin" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."NoTBPromptUnsignedAddin" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17545 - publisher" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\VBAWarnings" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."VBAWarnings" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26625" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\publisher\noextensibilitycustomizationfromdocument" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\publisher")."noextensibilitycustomizationfromdocument" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26707" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\PromptForBadFiles" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher")."PromptForBadFiles" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26708" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Security\AutomationSecurityPublisher" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Security")."AutomationSecurityPublisher" >> $outfile 
echo "Closed if value is DWORD = 3" >> $outfile 
echo " " >> $outfile 


echo "V-17770" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\ReadAsPlain" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."ReadAsPlain" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17771" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\ReadSignedAsPlain" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."ReadSignedAsPlain" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17774" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\FileExtensionRemoveLevel1" >> $outfile  
#need to test-path(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."FileExtensionRemoveLevel1" >> $outfile 
echo "Closed if value is DELETE" >> $outfile 
echo " " >> $outfile 


echo "V-17775" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\FileExtensionRemoveLevel2" >> $outfile  
#need to test-path(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."FileExtensionRemoveLevel2" >> $outfile 
echo "Closed if value is DELETE" >> $outfile 
echo " " >> $outfile 


echo "V-17763" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\DisableOfficeOnline" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."DisableOfficeOnline" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17762" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\DisableDav" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."DisableDav" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17776" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\PublishCalendarDetailsPolicy" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."PublishCalendarDetailsPolicy" >> $outfile 
echo "Closed if value is DWORD = 16384" >> $outfile 
echo " " >> $outfile 


echo "V-17546" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\RestrictedAccessOnly" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."RestrictedAccessOnly" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17777" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\SingleUploadOnly" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."SingleUploadOnly" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17624" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\DisableAntiSpam" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook")."DisableAntiSpam" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17807" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\JunkMailTrustContacts" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."JunkMailTrustContacts" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17558" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\JunkMailTrustOutgoingRecipients" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."JunkMailTrustOutgoingRecipients" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17673" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\mailsettings\DisableSignatures" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\mailsettings")."DisableSignatures" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17761" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\mailsettings\PlainWrapLen" >> $outfile 
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\mailsettings")."PlainWrapLen" >> $outfile 
echo "Closed if value is DWORD = 132" >> $outfile 
echo " " >> $outfile 

echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\Message Plain Format Mime" >> $outfile 
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."Message Plain Format Mime" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile
echo " " >> $outfile 

echo "V-17753" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\general\Check Default Client" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\general")."Check Default Client" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17674" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\NonDefaultStoreScript" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."NonDefaultStoreScript" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17812" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\general\MSGFormat" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\general")."MSGFormat" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17676" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\SharedFolderScript" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."SharedFolderScript" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17675" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PublicFolderScript" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PublicFolderScript" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17559" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AllowActiveXOneOffForms" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AllowActiveXOneOffForms" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17566" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AddinTrust" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AddinTrust" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17587" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\EnableRememberPwd" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."EnableRememberPwd" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17766" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\DisallowAttachmentCustomization" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook")."DisallowAttachmentCustomization" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17760" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AdminSecurityMode" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AdminSecurityMode" >> $outfile 
echo "Closed if value is DWORD = 3" >> $outfile 
echo " " >> $outfile 


echo "V-17672" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\mail\BlockExtContent" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\mail")."BlockExtContent" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17671" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\ShowLevel1Attach" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."ShowLevel1Attach" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17569" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AllowUsersToLowerAttachments" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AllowUsersToLowerAttachments" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17602" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\DontPromptLevel1AttachSend" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."DontPromptLevel1AttachSend" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17601" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\DontPromptLevel1AttachClose" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."DontPromptLevel1AttachClose" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17562" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\EnableOneOffFormScripts" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."EnableOneOffFormScripts" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17802" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMCustomAction" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMCustomAction" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17574" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMSend" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMSend" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17568" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMAddressBookAccess" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMAddressBookAccess" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17572" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMAddressInformationAccess" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMAddressInformationAccess" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17573" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMMeetingTaskRequestResponse" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMMeetingTaskRequestResponse" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17571" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMSaveAs" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMSaveAs" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17570" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMFormulaAccess" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMFormulaAccess" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17790" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\ExternalSMime" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."ExternalSMime" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17755" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\MsgFormats" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."MsgFormats" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17787 FIPS" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\FIPSMode" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."FIPSMode" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17800" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\ClearSign" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."ClearSign" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17803" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\WarnAboutInvalid" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."WarnAboutInvalid" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17795" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\RespondToReceiptRequests" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."RespondToReceiptRequests" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-17778" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\UseCRLChasing" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."UseCRLChasing" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17756" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\SigStatusNoTrustDecision" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."SigStatusNoTrustDecision" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-17739" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\UnblockSpecificSenders" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."UnblockSpecificSenders" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17470" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\UnblockSafeZone" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."UnblockSafeZone" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17564" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\TrustedZone" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."TrustedZone" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17630" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\Internet" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."Internet" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17634" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\Intranet" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."Intranet" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17798" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\Level" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."Level" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-17613" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\JunkMailEnableLinks" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."JunkMailEnableLinks" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17615" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\rpc\EnableRPCEncryption" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\rpc")."EnableRPCEncryption" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17734" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AuthenticationService" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AuthenticationService" >> $outfile 
echo "Closed if value is DWORD = 9" >> $outfile 
echo " " >> $outfile 


echo "V-17806" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss\SyncToSysCFL" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss")."SyncToSysCFL" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17808 - outlook" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss\Disable" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss")."Disable" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17610" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss\EnableFullTextHTML" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss")."EnableFullTextHTML" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17738 - outlook" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\webcal\EnableAttachments" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\webcal")."EnableAttachments" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17678" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\webcal\Disable" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\webcal")."Disable" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17944" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\meetings\profile\ServerUI" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\meetings\profile")."ServerUI" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26625" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\outlook\noextensibilitycustomizationfromdocument" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\outlook")."noextensibilitycustomizationfromdocument" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26632" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss\EnableAttachments" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss")."EnableAttachments" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26634" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\EditorPreference" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."EditorPreference" >> $outfile 
echo "Closed if value is DWORD = 65536 (dec)" >> $outfile 
echo " " >> $outfile 


echo "V-26635" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\ForceDefaultProfile" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."ForceDefaultProfile" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26636 - outlook" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\MinEncKey" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."MinEncKey" >> $outfile 
echo "Closed if value is DWORD = 168" >> $outfile 
echo " " >> $outfile 


echo "V-26637" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\NoCheckOnSessionSecurity" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."NoCheckOnSessionSecurity" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26702" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\SupressNameChecks" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."SupressNameChecks" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-41492" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\outlook\options\calendar\disableweather" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\outlook\options\calendar")."disableweather" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-41493" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\outlook\options\autoformat\pgrfafo_25_1" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\outlook\options\autoformat")."pgrfafo_25_1" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 




echo "V-26589 Publisher StartUser" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\RequireAddinSig" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."RequireAddinSig" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17187" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\NoTBPromptUnsignedAddin" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."NoTBPromptUnsignedAddin" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26625" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\publisher\noextensibilitycustomizationfromdocument" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\publisher")."noextensibilitycustomizationfromdocument" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26707" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\PromptForBadFiles" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher")."PromptForBadFiles" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26708" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Security\AutomationSecurityPublisher" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Security")."AutomationSecurityPublisher" >> $outfile 
echo "Closed if value is DWORD = 3" >> $outfile 
echo " " >> $outfile 


echo "V-17187" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\NoTBPromptUnsignedAddin" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."NoTBPromptUnsignedAddin" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17811" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options\DontUpdateLinks" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options")."DontUpdateLinks" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17813" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options\WarnRevisions" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options")."WarnRevisions" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17545 - word" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\VBAWarnings" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."VBAWarnings" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26625" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\word\noextensibilitycustomizationfromdocument" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\toolbars\word")."noextensibilitycustomizationfromdocument" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26648" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\research\translation\useonline" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\research\translation")."useonline" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26653" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word2Files" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word2Files" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26654" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word2000Files" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word2000Files" >> $outfile 
echo "Closed if value is DWORD = 5" >> $outfile 
echo " " >> $outfile 


echo "V-26656" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word60Files" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word60Files" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-26657" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word95Files" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word95Files" >> $outfile 
echo "Closed if value is DWORD = 5" >> $outfile 
echo " " >> $outfile 


echo "V-26658" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word97Files" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word97Files" >> $outfile 
echo "Closed if value is DWORD = 5" >> $outfile 
echo " " >> $outfile 


echo "V-26659" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\WordXPFiles" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."WordXPFiles" >> $outfile 
echo "Closed if value is DWORD = 5" >> $outfile 
echo " " >> $outfile 


echo "V-41147" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options\custommarkupwarning" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options")."custommarkupwarning" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17733" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\OutlookSecureTempFolder\EnableAttachments" >> $outfile  
#need to test-path(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\OutlookSecureTempFolder")."EnableAttachments" >> $outfile 
echo "Closed if value is DELETE" >> $outfile 
echo " " >> $outfile 


#;!Originally omitted - Lync STIG... Here for posterity
echo "V-40776" >> $outfile 
echo "hklm:\Software\Policies\Microsoft\office\15.0\lync\savepassword" >> $outfile  
(get-itemproperty "hklm:\Software\Policies\Microsoft\office\15.0\lync")."savepassword" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-40777" >> $outfile 
echo "hklm:\Software\Policies\Microsoft\office\15.0\lync\enablesiphighsecuritymode" >> $outfile  
(get-itemproperty "hklm:\Software\Policies\Microsoft\office\15.0\lync")."enablesiphighsecuritymode" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40778" >> $outfile 
echo "hklm:\Software\Policies\Microsoft\office\15.0\lync\disablehttpconnect" >> $outfile  
(get-itemproperty "hklm:\Software\Policies\Microsoft\office\15.0\lync")."disablehttpconnect" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


#;! new from apr2017 stigs
echo "V-72831" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security\blockcontentexecutionfrominternet" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\excel\security")."blockcontentexecutionfrominternet" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17173" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17174" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17175" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17183" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17184" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26584" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26585" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26586" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26587" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26588" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\onenote.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS")."onenote.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17672" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\BlockExtContent" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."BlockExtContent" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26633 - outlook" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\Message RTF Format" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."Message RTF Format" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17173" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE\powerpnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE")."powerpnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17174" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT\powerpnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT")."powerpnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17175" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK\powerpnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK")."powerpnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17183" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL\powerpnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL")."powerpnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17184" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT\powerpnt.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT")."powerpnt.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-72839" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\blockcontentexecutionfrominternet" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."blockcontentexecutionfrominternet" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40858" >> $outfile 
echo "hklm:\software\policies\Microsoft\office\15.0\common\officeupdate\EnableAutomaticUpdates" >> $outfile  
(get-itemproperty "hklm:\software\policies\Microsoft\office\15.0\common\officeupdate")."EnableAutomaticUpdates" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40859" >> $outfile 
echo "hklm:\software\policies\Microsoft\office\15.0\common\officeupdate\HideEnableDisableUpdates" >> $outfile  
(get-itemproperty "hklm:\software\policies\Microsoft\office\15.0\common\officeupdate")."HideEnableDisableUpdates" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-40881" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\common\feedback\enabled" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\common\feedback")."enabled" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17174" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17175" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17183" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17184" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17521" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options\DefaultFormat" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options")."DefaultFormat" >> $outfile 
echo "Closed if value is SZ = " >> $outfile 
echo " " >> $outfile 


echo "V-26584" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26585" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26586" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26587" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26588" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\winword.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS")."winword.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-72829" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\blockcontentexecutionfrominternet" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."blockcontentexecutionfrominternet" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-72837" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\Outlook\security\blockcontentexecutionfrominternet" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\Outlook\security")."blockcontentexecutionfrominternet" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17617 - For every users profile hive under HKEY_Users, navigate to the following key:" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\DefaultEncryption12" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."DefaultEncryption12" >> $outfile 
echo "Closed if value is SZ = "Microsoft Enhanced RSA and AES Cryptographic Provider, AES 256,256"" >> $outfile 
echo " " >> $outfile 


echo "V-17619 - For every users profile hive under HKEY_Users, navigate to the following key:" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\OpenXMLEncryption" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."OpenXMLEncryption" >> $outfile 
echo "Closed if value is SZ = "Microsoft Enhanced RSA and AES Cryptographic Provider, AES 256,256"" >> $outfile 
echo " " >> $outfile 


echo "V-17768 - For every users profile hive under HKEY_Users, navigate to the following key:" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\OpenXMLEncryptProperty" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."OpenXMLEncryptProperty" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17750 - For every users profile hive under HKU, also, the STIG is broken" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\vbasecurity\LoadControlsInForms" >> $outfile  
#need to test-path(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\vbasecurity")."LoadControlsInForms" >> $outfile 
echo "Closed if value is DELETE" >> $outfile 
echo " " >> $outfile 

#;! ACCESS
echo "V-17173" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17174" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_SAFE_BINDTOOBJECT")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17175  " >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_UNC_SAVEDFILECHECK")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17183" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_VALIDATE_NAVIGATE_URL")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17184" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WEBOC_POPUPMANAGEMENT")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17187" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security\NoTBPromptUnsignedAddin" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security")."NoTBPromptUnsignedAddin" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-17545" >> $outfile 
echo "hkcu:\software\policies\Microsoft\office\15.0\access\security\vbawarnings" >> $outfile  
(get-itemproperty "hkcu:\software\policies\Microsoft\office\15.0\access\security")."vbawarnings" >> $outfile 
echo "Closed if value is DWORD = 2" >> $outfile 
echo " " >> $outfile 


echo "V-17584  " >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings\Default File Format" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings")."Default File Format" >> $outfile 
echo "Closed if value is DWORD = 12" >> $outfile 
echo " " >> $outfile 


echo "V-17603  " >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings\NoConvertDialog" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings")."NoConvertDialog" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17757" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security\ModalTrustDecisionOnly" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security")."ModalTrustDecisionOnly" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-17810  " >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\internet\DoNotUnderlineHyperlinks" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\internet")."DoNotUnderlineHyperlinks" >> $outfile 
echo "Closed if value is DWORD = 0" >> $outfile 
echo " " >> $outfile 


echo "V-26584" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ADDON_MANAGEMENT")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26585" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_ZONE_ELEVATION")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26586  " >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_ACTIVEXINSTALL")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26587" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_RESTRICT_FILEDOWNLOAD")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26588" >> $outfile 
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS\msaccess.exe" >> $outfile  
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_WINDOW_RESTRICTIONS")."msaccess.exe" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 


echo "V-26589" >> $outfile 
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security\RequireAddinSig" >> $outfile  
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security")."RequireAddinSig" >> $outfile 
echo "Closed if value is DWORD = 1" >> $outfile 
echo " " >> $outfile 

echo "fin!" >> $outfile

#!======================================================

#;V-26589 - Word
#User
#Software\Policies\Microsoft\Office\15.0\word\security
#RequireAddinSig
#DWORD:0

#;V-26589 - Powerpoint
#User
#Software\Policies\Microsoft\Office\15.0\PowerPoint\security
#RequireAddinSig
#DWORD:0

#;V-17545 - Powerpoint
#User
#Software\Policies\Microsoft\Office\15.0\PowerPoint\security
#VBAWarnings
#DWORD:3

#;V-26613 - Excel
#User
#Software\Policies\Microsoft\Office\15.0\excel\security\fileblock
#HtmlandXmlssFiles
#DWORD:0

#;V-17545 - outlook
#;!User
#;!Software\Policies\Microsoft\Office\15.0\outlook\security
#;!trustedaddins
#;!DELETE
