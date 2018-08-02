#Office 2013 STIG checker
#Version - 0.2
$outfile = ".\$env:computername-office2013.txt"


#echo "*************V-16021\V-16048************" >> $outfile
#echo "hkcu:\Software\Policies\Microsoft\Assistance\Client\1.0 >> $outfile\echo " "" >> $outfile
#(get-itemproperty hkcu:\Software\Policies\Microsoft\Assistance\Client\1.0 >> $outfile).echo " " >> $outfile

#echo "*************V-26070************" >> $outfile
#(get-acl "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon").AccessToString >>$outfile
#echo " " >> $outfile


echo "*************V-17759************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet\OpenDocumentsReadWriteWhileBrowsing" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet")."OpenDocumentsReadWriteWhileBrowsing" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17773************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet\RelyOnVML" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet")."RelyOnVML" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17561************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet\AllowPNG" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet")."AllowPNG" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17627************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\ptwatson\PTWOptIn" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\ptwatson")."PTWOptIn" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17664************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\general\ShownFirstRunOptin" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\general")."ShownFirstRunOptin" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17612************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\QMEnable" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common")."QMEnable" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17740************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\UpdateReliabilityData" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common")."UpdateReliabilityData" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17590************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\trustcenter\TrustBar" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\trustcenter")."TrustBar" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17769************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\DRMEncryptProperty" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."DRMEncryptProperty" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17619************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\OpenXMLEncryption" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."OpenXMLEncryption" >> $outfile
echo "Closed if STRING value is Microsoft Enhanced...RSA and AES,AES 256,256" >> $outfile
echo " " >> $outfile

echo "*************V-17617************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\DefaultEncryption12" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."DefaultEncryption12" >> $outfile
echo "Closed if STRING value is Microsoft Enhanced...RSA and AES,AES 256,256" >> $outfile
echo " " >> $outfile

echo "*************V-17741************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Security\AutomationSecurity" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Security")."AutomationSecurity" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-17659************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\DisableHyperLinkWarning" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."DisableHyperLinkWarning" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17665************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\DisablePasswordUI" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."DisablePasswordUI" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17560************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\trusted locations\Allow User Locations" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\trusted locations")."Allow User Locations" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17669************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Smart Tag\NeverLoadManifests" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Smart Tag")."NeverLoadManifests" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17661************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\services\fax\NoFax" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\services\fax")."NoFax" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17765************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm\DisableCreation" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm")."DisableCreation" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17583************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm\IncludeHTML" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm")."IncludeHTML" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17731************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm\RequireConnection" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\drm")."RequireConnection" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17749************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\signatures\EnableCreationOfWeakXPSignatures" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\signatures")."EnableCreationOfWeakXPSignatures" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17805************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\signatures\SuppressExtSigningSvcs" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\signatures")."SuppressExtSigningSvcs" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17660************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\fixedformat\DisableFixedFormatDocProperties" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\fixedformat")."DisableFixedFormatDocProperties" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17605************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\documentinformationpanel\Beaconing" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\documentinformationpanel")."Beaconing" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17670************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\portal\LinkPublishingDisabled" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\portal")."LinkPublishingDisabled" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17581************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Blog\DisableBlog" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Blog")."DisableBlog" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26704************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security\EncryptDocProps" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\security")."EncryptDocProps" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26630************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet\UseOnlineContent" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\internet")."UseOnlineContent" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-40860************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\firstrun\disablemovie" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\firstrun")."disablemovie" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-40861************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\firstrun\bootedrtm" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\firstrun")."bootedrtm" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-40862************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\signin\signinoptions" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\signin")."signinoptions" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-40863************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\gfx\disablescreenshotautohyperlink" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\gfx")."disablescreenshotautohyperlink" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-40864************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\office\15.0\common\general\SkyDriveSignInOption" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\office\15.0\common\general")."SkyDriveSignInOption" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-40875************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\broadcast\disabledefaultservice" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\broadcast")."disabledefaultservice" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-40879************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\broadcast\disableprogrammaticaccess" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\broadcast")."disableprogrammaticaccess" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-40880************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\feedback\includescreenshot" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\feedback")."includescreenshot" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-40881************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\feedback" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common")."feedback" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-40882************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\wef\trustedcatalogs\requireserververification" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\wef\trustedcatalogs")."requireserververification" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-40883************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\wef\trustedcatalogs\disableomexcatalogs" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\wef\trustedcatalogs")."disableomexcatalogs" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-40884************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\roaming\roamingsettingsdisabled" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\roaming")."roamingsettingsdisabled" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-40885************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\osm\enableupload" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\osm")."enableupload" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-40886************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\osm\enablefileobfuscation" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\osm")."enablefileobfuscation" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-40887************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\osm\enablelogging" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\osm")."enablelogging" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************Individual Components************" >> $outfile
echo " " >> $outfile

echo "*************V-26589************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security\RequireAddinSig" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security")."RequireAddinSig" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17810************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\internet\DoNotUnderlineHyperlinks" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\internet")."DoNotUnderlineHyperlinks" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17187************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security\NoTBPromptUnsignedAddin" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security")."NoTBPromptUnsignedAddin" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17757************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security\ModalTrustDecisionOnly" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\security")."ModalTrustDecisionOnly" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17584************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings\Default File Format" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings")."Default File Format" >> $outfile
echo "Closed if DWORD value is 12" >> $outfile
echo " " >> $outfile

echo "*************V-17603************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings\NoConvertDialog" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\access\settings")."NoConvertDialog" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17545************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\access\security\vbawarnings" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\access\security")."vbawarnings" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-26625************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\access\noextensibilitycustomizationfromdocument" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\access")."noextensibilitycustomizationfromdocument" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26589************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\RequireAddinSig" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."RequireAddinSig" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17187************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\NoTBPromptUnsignedAddin" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."NoTBPromptUnsignedAddin" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17545************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\VBAWarnings" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."VBAWarnings" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-26625************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\publisher\noextensibilitycustomizationfromdocument" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\publisher")."noextensibilitycustomizationfromdocument" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26707************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\PromptForBadFiles" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher")."PromptForBadFiles" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26708************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Security\AutomationSecurityPublisher" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Security")."AutomationSecurityPublisher" >> $outfile
echo "Closed if DWORD value is 3" >> $outfile
echo " " >> $outfile

echo "*************V-17770************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\ReadAsPlain" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."ReadAsPlain" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17771************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\ReadSignedAsPlain" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."ReadSignedAsPlain" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17763************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\DisableOfficeOnline" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."DisableOfficeOnline" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17762************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\DisableDav" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."DisableDav" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17776************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\PublishCalendarDetailsPolicy" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."PublishCalendarDetailsPolicy" >> $outfile
echo "Closed if DWORD value is 16384" >> $outfile
echo " " >> $outfile

echo "*************V-17546************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\RestrictedAccessOnly" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."RestrictedAccessOnly" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17777************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal\SingleUploadOnly" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\pubcal")."SingleUploadOnly" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17624************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\DisableAntiSpam" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook")."DisableAntiSpam" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17807************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\JunkMailTrustContacts" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."JunkMailTrustContacts" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17558************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\JunkMailTrustOutgoingRecipients" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."JunkMailTrustOutgoingRecipients" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17673************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\mailsettings\DisableSignatures" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\mailsettings")."DisableSignatures" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17761************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\common\mailsettings\PlainWrapLen" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\common\mailsettings")."PlainWrapLen" >> $outfile
echo "Closed if DWORD value is 132 (decimal)" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\Message Plain Format Mime" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."Message Plain Format Mime" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17753************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\general\Check Default Client" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\general")."Check Default Client" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17674************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\NonDefaultStoreScript" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."NonDefaultStoreScript" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17812************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\general\MSGFormat" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\general")."MSGFormat" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17676************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\SharedFolderScript" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."SharedFolderScript" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17675************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PublicFolderScript" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PublicFolderScript" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17559************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AllowActiveXOneOffForms" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AllowActiveXOneOffForms" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17566************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AddinTrust" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AddinTrust" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17587************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\EnableRememberPwd" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."EnableRememberPwd" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17766************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\DisallowAttachmentCustomization" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook")."DisallowAttachmentCustomization" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17760************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AdminSecurityMode" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AdminSecurityMode" >> $outfile
echo "Closed if DWORD value is 3" >> $outfile
echo " " >> $outfile

echo "*************V-17671************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\ShowLevel1Attach" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."ShowLevel1Attach" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17569************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AllowUsersToLowerAttachments" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AllowUsersToLowerAttachments" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17602************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\DontPromptLevel1AttachSend" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."DontPromptLevel1AttachSend" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17601************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\DontPromptLevel1AttachClose" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."DontPromptLevel1AttachClose" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17562************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\EnableOneOffFormScripts" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."EnableOneOffFormScripts" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17802************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMCustomAction" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMCustomAction" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17574************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMSend" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMSend" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17568************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMAddressBookAccess" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMAddressBookAccess" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17572************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMAddressInformationAccess" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMAddressInformationAccess" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17573************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMMeetingTaskRequestResponse" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMMeetingTaskRequestResponse" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17571************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMSaveAs" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMSaveAs" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17570************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\PromptOOMFormulaAccess" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."PromptOOMFormulaAccess" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17790************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\ExternalSMime" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."ExternalSMime" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17755************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\MsgFormats" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."MsgFormats" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17787 FIPS************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\FIPSMode" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."FIPSMode" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17800************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\ClearSign" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."ClearSign" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17803************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\WarnAboutInvalid" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."WarnAboutInvalid" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17795************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\RespondToReceiptRequests" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."RespondToReceiptRequests" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-17778************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\UseCRLChasing" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."UseCRLChasing" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17756************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\SigStatusNoTrustDecision" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."SigStatusNoTrustDecision" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-17739************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\UnblockSpecificSenders" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."UnblockSpecificSenders" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17470************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\UnblockSafeZone" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."UnblockSafeZone" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17564************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\TrustedZone" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."TrustedZone" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17630************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\Internet" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."Internet" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17634************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\Intranet" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."Intranet" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17798************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\Level" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."Level" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-17613************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\JunkMailEnableLinks" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."JunkMailEnableLinks" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17615************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\rpc\EnableRPCEncryption" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\rpc")."EnableRPCEncryption" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17734************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\AuthenticationService" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."AuthenticationService" >> $outfile
echo "Closed if DWORD value is 9" >> $outfile
echo " " >> $outfile

echo "*************V-17806************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss\SyncToSysCFL" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss")."SyncToSysCFL" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17808************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss\Criteria\Disable" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss\Criteria")."Disable" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17610************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss\EnableFullTextHTML" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss")."EnableFullTextHTML" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17738************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\webcal\EnableAttachments" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\webcal")."EnableAttachments" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17678************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\webcal\Disable" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\webcal")."Disable" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17944************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\meetings\profile\ServerUI" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\meetings\profile")."ServerUI" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-26625************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\outlook\noextensibilitycustomizationfromdocument" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\outlook")."noextensibilitycustomizationfromdocument" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26632************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss\EnableAttachments" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\rss")."EnableAttachments" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26634************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\EditorPreference" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail")."EditorPreference" >> $outfile
echo "Closed if DWORD value is 65536 (dec)" >> $outfile
echo " " >> $outfile

echo "*************V-26635************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\ForceDefaultProfile" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."ForceDefaultProfile" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26636************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\MinEncKey" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."MinEncKey" >> $outfile
echo "Closed if DWORD value is 168" >> $outfile
echo " " >> $outfile

echo "*************V-26637************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\NoCheckOnSessionSecurity" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."NoCheckOnSessionSecurity" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26702************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security\SupressNameChecks" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\security")."SupressNameChecks" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26633************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\Message RTF\Format" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\outlook\options\mail\Message RTF")."Format" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-41492************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\outlook\options\calendar\disableweather" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\outlook\options\calendar")."disableweather" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-41493************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\outlook\options\autoformat\pgrfafo_25_1" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\outlook\options\autoformat")."pgrfafo_25_1" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26612 PPT************" >> $outfileStart
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\fileblock\OpenInProtectedView" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\fileblock")."OpenInProtectedView" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26592************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation\EnableOnLoad" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation")."EnableOnLoad" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26614************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview\DisableInternetFilesInPV" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview")."DisableInternetFilesInPV" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26589************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\RequireAddinSig" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."RequireAddinSig" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17187************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\powerpoint\security\notbpromptunsignedaddin" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\powerpoint\security")."notbpromptunsignedaddin" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17471************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\trusted locations\AllLocationsDisabled" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\trusted locations")."AllLocationsDisabled" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17520************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\trusted locations\AllowNetworkLocations" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\trusted locations")."AllowNetworkLocations" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17521************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\options\DefaultFormat" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\options")."DefaultFormat" >> $outfile
echo "Closed if DWORD value is 27" >> $outfile
echo " " >> $outfile

echo "*************V-17473************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\PowerPointBypassEncryptedMacroScan" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."PowerPointBypassEncryptedMacroScan" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17522************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\AccessVBOM" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."AccessVBOM" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17322************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\PowerPoint\security\fileblock\powerpoint12betafilesfromconverters" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\PowerPoint\security\fileblock")."powerpoint12betafilesfromconverters" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26615************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview\DisableUnsafeLocationsInPV" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview")."DisableUnsafeLocationsInPV" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17788************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\RunPrograms" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."RunPrograms" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17752************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\options\MarkupOpenSave" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\options")."MarkupOpenSave" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17809************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\DownloadImages" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."DownloadImages" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26616************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation\OpenInProtectedView" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation")."OpenInProtectedView" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation\DisableEditFromPV" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\filevalidation")."DisableEditFromPV" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26617************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview\DisableAttachmentsInPV" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\protectedview")."DisableAttachmentsInPV" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17545************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security\VBAWarnings" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\security")."VBAWarnings" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-26625************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\PowerPoint\noextensibilitycustomizationfromdocument" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\PowerPoint")."noextensibilitycustomizationfromdocument" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26639************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\slide libraries\DisableSlideUpdate" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\PowerPoint\slide libraries")."DisableSlideUpdate" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26589 Publisher Start************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\RequireAddinSig" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."RequireAddinSig" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17187************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\NoTBPromptUnsignedAddin" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."NoTBPromptUnsignedAddin" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17545************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security\VBAWarnings" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\security")."VBAWarnings" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-26625************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\publisher\noextensibilitycustomizationfromdocument" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\publisher")."noextensibilitycustomizationfromdocument" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26707************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher\PromptForBadFiles" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\publisher")."PromptForBadFiles" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26708************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\Common\Security\AutomationSecurityPublisher" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\Common\Security")."AutomationSecurityPublisher" >> $outfile
echo "Closed if DWORD value is 3" >> $outfile
echo " " >> $outfile

echo "*************V-17173 Word************" >> $outfile
echo "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE\winword.exe" >> $outfile
(get-itemproperty "hklm:\Software\Microsoft\Internet Explorer\Main\FeatureControl\FEATURE_HTTP_USERNAME_PASSWORD_DISABLE")."winword.exe" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26612************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\OpenInProtectedView" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."OpenInProtectedView" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26592************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation\EnableOnLoad" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation")."EnableOnLoad" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26614************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview\DisableInternetFilesInPV" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview")."DisableInternetFilesInPV" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26589************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\RequireAddinSig" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."RequireAddinSig" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17187************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\NoTBPromptUnsignedAddin" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."NoTBPromptUnsignedAddin" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17471************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\trusted locations\AllLocationsDisabled" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\trusted locations")."AllLocationsDisabled" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17520************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\trusted locations\AllowNetworkLocations" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\trusted locations")."AllowNetworkLocations" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17521************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options\DefaultFormat" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options")."DefaultFormat" >> $outfile
echo "Closed if STRING value is (blank)" >> $outfile
echo " " >> $outfile

echo "*************V-17473************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\WordBypassEncryptedMacroScan" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."WordBypassEncryptedMacroScan" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17522************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\AccessVBOM" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."AccessVBOM" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26615************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview\DisableUnsafeLocationsInPV" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview")."DisableUnsafeLocationsInPV" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26616.1**********" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation\OpenInProtectedView" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation")."OpenInProtectedView" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26616.2**********" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation\DisableEditFromPV" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\filevalidation")."DisableEditFromPV" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26617************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview\DisableAttachmentsInPV" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\protectedview")."DisableAttachmentsInPV" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-17811************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options\DontUpdateLinks" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options")."DontUpdateLinks" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17813************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options\WarnRevisions" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options")."WarnRevisions" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-17545************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\VBAWarnings" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security")."VBAWarnings" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-26625************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\word\noextensibilitycustomizationfromdocument" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\toolbars\word")."noextensibilitycustomizationfromdocument" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "*************V-26648************" >> $outfile
echo "hkcu:\Software\policies\Microsoft\office\15.0\common\research\translation\useonline" >> $outfile
(get-itemproperty "hkcu:\Software\policies\Microsoft\office\15.0\common\research\translation")."useonline" >> $outfile
echo "Closed if DWORD value is 0" >> $outfile
echo " " >> $outfile

echo "*************V-26653************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word2Files" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word2Files" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-26654************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word2000Files" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word2000Files" >> $outfile
echo "Closed if DWORD value is 5" >> $outfile
echo " " >> $outfile

echo "*************V-26656************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word60Files" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word60Files" >> $outfile
echo "Closed if DWORD value is 2" >> $outfile
echo " " >> $outfile

echo "*************V-26657************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word95Files" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word95Files" >> $outfile
echo "Closed if DWORD value is 5" >> $outfile
echo " " >> $outfile

echo "*************V-26658************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\Word97Files" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."Word97Files" >> $outfile
echo "Closed if DWORD value is 5" >> $outfile
echo " " >> $outfile

echo "*************V-26659************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock\WordXPFiles" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\security\fileblock")."WordXPFiles" >> $outfile
echo "Closed if DWORD value is 5" >> $outfile
echo " " >> $outfile

echo "*************V-41147************" >> $outfile
echo "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options\custommarkupwarning" >> $outfile
(get-itemproperty "hkcu:\Software\Policies\Microsoft\Office\15.0\word\options")."custommarkupwarning" >> $outfile
echo "Closed if DWORD value is 1" >> $outfile
echo " " >> $outfile

echo "fin!" >> $outfile
