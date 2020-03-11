class adobepro {
  include adobepro::acrgpo

  package{'AdobePro':
    ensure   =>latest,
    provider =>chocolatey,
  } -> 

  package{'AdobePro-Patch':
    ensure   =>latest,
    provider =>chocolatey,
  }

  #Load Adobe ADMX GPO Templates
  file { 'c:\Windows\PolicyDefinitions\AcrobatProDCContinuous.admx':
    ensure => 'file',
    mode   => '0660',
    group  => 'BUILTIN\\Administrators',
    source => 'puppet:///modules/adobepro/AcrobatProDCContinuous.admx',
  }

  file { 'c:\Windows\PolicyDefinitions\en-US\AcrobatProDCContinuous.adml':
    ensure => 'file',
    mode   => '0660',
    group  => 'BUILTIN\\Administrators',
    source => 'puppet:///modules/adobepro/AcrobatProDCContinuous.adml',
  }

  file{'c:/programdata/patching/acrobatstig':
    ensure  => absent,
    force   => true,
  } 

  file { 'c:\ProgramData\patching\acrobat-stig.ps1':
    ensure => file,
    source => 'puppet:///modules/adobepro/acrobat-stig.ps1',
  }

  exec { 'AcrobatSTIG' :
    command   =>  'powershell.exe -file "c:\programdata\patching\acrobat-stig.ps1"',
    unless    =>  'powershell.exe -Command "if ((Get-ItemProperty -path HKLM:\software\dcgs\patches).hkuctacrobat -ne (gci -path registry::hkey_users).count) { exit 1 } else { exit 0 }"',
    provider  =>  powershell,
    require   =>  File['c:\ProgramData\patching\acrobat-stig.ps1'],
    logoutput =>  true,
  }
}
