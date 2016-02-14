class snmp::install {
	
	package {'snmpd':
		ensure => present,
		name   => "${snmp::params::package}",
	}
}
