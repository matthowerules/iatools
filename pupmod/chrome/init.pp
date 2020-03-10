class chrome {
  package{'GoogleChrome':
    ensure  =>latest,
    provider=>chocolatey,
  }

  # 3 layer map, Keypath\Type\Keyname\Value
  $gpos = {
    'Software\Policies\Google\Chrome' => {
      'DWORD' => {
        'RemoteAccessHostFirewallTraversal'=>0,
        'DefaultNotificationsSetting'=>2,
        'DefaultPopupsSetting'=>2,
        'DefaultGeolocationSetting'=>2,
        'DefaultSearchProviderEnabled'=>1,
        'PasswordManagerEnabled'=>0,
        'AllowOutdatedPlugins'=>0,
        'BlockThirdPartyCookies'=>1,
        'BackgroundModeEnabled'=>0,
        # Enabling 3D APIs for Maven Smart System, which requires WebGL APIs
        #'Disable3DAPIs'=>1,
        'Disable3DAPIs'=>0,
        'SyncDisabled'=>1,
        'CloudPrintProxyEnabled'=>0,
        'MetricsReportingEnabled'=>0,
        'SearchSuggestEnabled'=>0,
        'ImportSavedPasswords'=>0,
        'IncognitoModeAvailability'=>1,
        'EnableOnlineRevocationChecks'=>1,
        'SafeBrowsingEnabled'=>1,
        'SavingBrowserHistoryDisabled'=>0,
        'DefaultPluginsSetting'=>3,
        'AllowDeletingBrowserHistory'=>0,
        'PromptForDownloadLocation'=>1,
        'DownloadRestrictions'=>1,
        'AutoplayAllowed'=>0,
        'SafeBrowsingExtendedReportingEnabled'=>0,
        'DefaultWebUsbGuardSetting'=>2,
        'ChromeCleanupEnabled'=>0,
        'ChromeCleanupReportingEnabled'=>0,
        'EnableMediaRouter'=>0,
        'UrlKeyedAnonymizedDataCollectionEnabled'=>0,
        'WebRtcEventLogCollectionAllowed'=>0,
        'NetworkPredictionOptions'=>2,
        'DeveloperToolsAvailability'=>2,
      },
      'SZ' => {
        'DefaultSearchProviderName'=>'Google Encrypted',
        'DefaultSearchProviderSearchURL'=>'https://www.google.com/#q={searchTerms}',
        'SSLVersionMin'=>'tls1.1',
      },
    },
    'Software\Policies\Google\Chrome\AutoplayWhitelist' => {
      'SZ' => {
        '1'=>'[*.]mil',
        '2'=>'[*.]gov',
      },
    },
    'Software\Policies\Google\Chrome\ExtensionInstallBlacklist' => {
      'SZ' => {
        '1'=>'*',
      },
    },
    'Software\Policies\Google\Chrome\ExtensionInstallWhitelist' => {
      'SZ' => {
        '1'=>'oiigbmnaadbkfbmpbfijlflahbdbdgdf',
      },
    },
    'Software\Policies\Google\Chrome\PluginsAllowedForUrls' => {
      'SZ' => {
        '1'=>'[*.]mil',
        '2'=>'[*.]gov',
      },
    },
    'Software\Policies\Google\Chrome\URLBlacklist' => {
      'SZ' => {
        '1'=>'javascript://*',
      },
    },
  }

  $gpos.each |$path, $types| {
    $types.each |$type, $keys| {
      $keys.each |$key, $value| {
        windows::gpo {"${path}\\${key}":
          scope    => 'Computer',
          keypath  => $path,
          keyname  => $key,
          keytype  => $type,
          keyvalue => $value,
        }
      }
    }
  }
}
