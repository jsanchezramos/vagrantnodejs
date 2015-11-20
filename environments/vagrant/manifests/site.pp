class { 'nodejs':
   repo_url_suffix     => 'node_5.x',
   manage_package_repo => true,
   nodejs_package_ensure  => 'latest',
}->

package { 'pm2':
   ensure   => 'present',
   provider => 'npm',
}
