# Sample Usage:
#
#  Manage Apache:
class { 'gitolite':
  server        => 'true',
  site_name     => 'Frymanet.com Git Repository',
  ssh_key       => 'ssh-rsa AAAA....',
  vhost         => 'git.frymanet.com',
  manage_apache => true,
}
#
#  Use and External Apache Module:
class { 'gitolite':
  server               => 'true',
  site_name            => 'Frymanet.com Git Repository',
  ssh_key              => 'ssh-rsa AAAA....',
  vhost                => 'git.frymanet.com',
  write_apache_conf_to => '/opt/git/git-apache.conf',
  apache_notify        => Service['apache2'],
  manage_apache        => true,
}
#
#  Do not manage Apache:
class { 'gitolite':
  server        => 'true',
  site_name     => 'Frymanet.com Git Repository',
  ssh_key       => 'ssh-rsa AAAA....',
}
#
#  Only install Git Client Binaries:
class { 'gitolite': }
