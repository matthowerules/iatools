class adobereader {
  include adobereader::rdrgpo

  package{'AdobeReader':
    ensure   =>latest,
    provider =>chocolatey,
  } -> 

  package{'AdobeReader-Patch':
    ensure   =>latest,
    provider =>chocolatey,
  }

  registry_value{[
    'HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run\Adobe Reader Speed Launcher',
    'HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run\Adobe ARM',
  ]:
    ensure=>absent,
  }

  file {'c:\program files (x86)\adobe\acrobat dc\plug_ins\preflight\preflight.p12':
    ensure  =>  absent,
  }

  file{'c:/programdata/patching/readerstig':
    ensure  => absent,
    force   => true,
  }

  file { 'c:\ProgramData\patching\reader-stig.ps1':
    ensure => file,
    source => 'puppet:///modules/adobereader/reader-stig.ps1',
  }

  exec { 'ReaderSTIG' :
    command     =>  'powershell.exe -file "c:\programdata\patching\reader-stig.ps1"',
    unless      =>  'powershell.exe -Command "if ((Get-ItemProperty -path HKLM:\software\dcgs\patches).hkuctreader -ne (gci -path registry::hkey_users).count) { exit 1 } else { exit 0 }"',
    provider    =>  powershell,
    require     =>  File['c:\ProgramData\patching\reader-stig.ps1'],
    logoutput   =>  true,
  }
}
