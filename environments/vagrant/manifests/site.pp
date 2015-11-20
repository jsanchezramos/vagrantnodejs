class { 'nodejs':
   repo_url_suffix     => 'node_5.x',
   manage_package_repo => true,
   nodejs_package_ensure  => 'latest',
}->package { 'pm2':
   ensure   => 'present',
   provider => 'npm',
}

class {'::mongodb::server':
  auth => true,
}

mongodb::db { 'testdb':
  user          => 'user1',
  password_hash => 'a15fbfca5e3a758be80ceaf42458bcd8',
}
