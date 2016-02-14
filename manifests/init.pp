class snmp {

	Package['net-snmp'] -> File['/etc/snmp/snmpd.conf'] ~> Service['snmpd']

	package { 'net-snmp':
		ensure => installed,
	}
	file {'/etc/snmp/snmpd.conf':
		ensure => file,
		owner  => root,
		group  => root,
		mode   => "0444",
		source => 'puppet:///modules/snmp/snmpd.conf',
	}
	service {'snmpd':
		ensure => running,
	}

}
