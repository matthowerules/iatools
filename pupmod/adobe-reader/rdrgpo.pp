class adobereader::rdrgpo {
  windows::gpo {'V-64919':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bEnhancedSecurityStandalone',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64921':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bEnhancedSecurityInBrowser',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64923':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bProtectedMode',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64925':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'iProtectedView',
    keytype  => 'DWORD',
    keyvalue => '2',
  }

  windows::gpo {'V-64927':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cDefaultLaunchURLPerms',
    keyname  => 'iURLPerms',
    keytype  => 'DWORD',
    keyvalue => '1',
  }
  #;0 - only with a documented ISSO risk acceptance.
  #;If the value for “iURLPerms” is set to “0” and a documented ISSO risk acceptance approving access to websites is provided, this is not a finding.
  #;If the value for “iURLPerms” is not set to “1” and “Type” configured to “DWORD” or does not exist, this is a finding.

  windows::gpo {'V-64929':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cDefaultLaunchURLPerms',
    keyname  => 'iUnknownURLPerms',
    keytype  => 'DWORD',
    keyvalue => '3',
  }

  windows::gpo {'V-64931':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'iFileAttachmentPerms',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64933':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bEnableFlash',
    keytype  => 'DWORD',
    keyvalue => '0',
  }

  windows::gpo {'V-64935':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bDisablePDFHandlerSwitching',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64937':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cCloud',
    keyname  => 'bAdobeSendPluginToggle',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64939':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices',
    keyname  => 'bToggleAdobeDocumentServices',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64941':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices',
    keyname  => 'bTogglePrefsSync',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64943':
    scope    => 'Computer',
    keypath  => 'SOFTWARE\Wow6432Node\Adobe\Acrobat Reader\DC\Installer',
    keyname  => 'DisableMaintenance',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64945':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices',
    keyname  => 'bToggleWebConnectors',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64947':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices',
    keyname  => 'bToggleAdobeSign',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64949':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cWebmailProfiles',
    keyname  => 'bDisableWebmail',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64951':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cSharePoint',
    keyname  => 'bDisableSharePointFeatures',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-64953':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cWelcomeScreen',
    keyname  => 'bShowWelcomeScreen',
    keytype  => 'DWORD',
    keyvalue => '0',
  }

  windows::gpo {'V-64955':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown\cServices',
    keyname  => 'bUpdater',
    keytype  => 'DWORD',
    keyvalue => '0',
  }

  windows::gpo {'V-65665':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bDisableOSTrustedSites',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-65667':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bDisableTrustedFolders',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-65669':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bDisableTrustedSites',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'V-65671':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bEnableCertificateBasedTrust',
    keytype  => 'DWORD',
    keyvalue => '0',
  }

  windows::gpo {'V-66049':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown',
    keyname  => 'bAcroSuppressUpsell',
    keytype  => 'DWORD',
    keyvalue => '1',
  }
}
