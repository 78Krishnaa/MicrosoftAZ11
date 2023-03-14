# @summary This profile installs IIS
    class profile::iis {

        $iis_features = ['Web-WebServer','Web-Scripting-Tools','Web-Mgmt-Console','Web-Server','Web-Http-Redirect','Web-Mgmt-Tools']

            iis_feature { $iis_features:
                ensure => 'present',
	}
}