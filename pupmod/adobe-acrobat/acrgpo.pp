class adobepro::acrgpo {
  windows::gpo {'79359':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'bEnhancedSecurityStandalone',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79361':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'bEnhancedSecurityInBrowser',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79363':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'iFileAttachmentPerms',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79365':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchURLPerms',
    keyname  => 'iUnknownURLPerms',
    keytype  => 'DWORD',
    keyvalue => '3',
  }

  windows::gpo {'79367':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cDefaultLaunchURLPerms',
    keyname  => 'iURLPerms',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79369  ':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'bEnableFlash',
    keytype  => 'DWORD',
    keyvalue => '0',
  }

  windows::gpo {'79371':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud',
    keyname  => 'bAdobeSendPluginToggle',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79373':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'bDisableTrustedFolders',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79379':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'bProtectedMode',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79381':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'iProtectedView',
    keytype  => 'DWORD',
    keyvalue => '2',
  }

  windows::gpo {'79385  ':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'bDisablePDFHandlerSwitching',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79387  ':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cCloud',
    keyname  => 'bDisableADCFileStore',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79389':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices',
    keyname  => 'bTogglePrefsSync',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79391  ':
    scope    => 'Computer',
    keypath  => 'SOFTWARE\Wow6432Node\Adobe\Adobe Acrobat\DC\Installer',
    keyname  => 'DisableMaintenance',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79393  ':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cServices',
    keyname  => 'bToggleWebConnectors',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79395  ':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cWebmailProfiles',
    keyname  => 'bDisableWebmail',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79397':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cWelcomeScreen',
    keyname  => 'bShowWelcomeScreen',
    keytype  => 'DWORD',
    keyvalue => '0',
  }

  windows::gpo {'79399':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown\cSharePoint',
    keyname  => 'bDisableSharePointFeatures',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79403':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'bDisableTrustedSites',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79405':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'bDisableOSTrustedSites',
    keytype  => 'DWORD',
    keyvalue => '1',
  }

  windows::gpo {'79407':
    scope    => 'Computer',
    keypath  => 'Software\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown',
    keyname  => 'bEnableCertificateBasedTrust',
    keytype  => 'DWORD',
    keyvalue => '0',
  }
}
