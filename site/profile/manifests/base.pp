class profiles::base {
  $ntp_servers = hiera('ntp_servers')

  class { '::ntp':
    servers => $ntp_servers,
  }
}

