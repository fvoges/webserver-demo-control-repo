class profile::web_server {
  $web_site_fqdn    = hiera('web_site_fqdn')
  $web_site_repo    = hiera('web_site_repo')
  $web_site_version = hiera('web_site_version')
  
  include ::nginx

  file { "${::nginx::params::nx_conf_dir}/conf.d/default.conf":
    ensure  => absent,
    before  => Service['nginx'],
    notify  => Service['nginx'],
  }

  nginx::resource::vhost { 'web_server':
    server_name => $web_site_fqdn,
    www_root    => '/var/www',
  }

  class { '::static_web_site': 
    repodir => '/var/www',
    remote  => $web_site_repo,
    owner   => 'root',
    group   => 'root',
    version => $web_site_version,
  }
}
