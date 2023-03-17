class profile::windowsfirewall{
    windows_firewall::exception {'Local Firewall RDP':
	    ensure                                  => present,
  	    direction                               => 'in',
  	    action                                  => 'allow',
  	    enabled                                 => false,
  	    protocol                                => 'TCP',
  	    allow_edge_traversal                    => false,
  	    local_port                              => '3389',
  	    remote_port                             => 'any',
	    #remote_ip								=> '10.2.164.0/24',
  	    display_name                            => 'ITP-CUSTOM-RDP_TCP',
  	    description                             => 'Allow RDP access for teams from a specified subnet on TCP protocol',
    }
}
