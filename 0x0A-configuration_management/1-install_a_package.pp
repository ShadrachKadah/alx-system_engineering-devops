# Ensure python3-pip is installed
package { 'python3-pip':
  ensure => installed,
}

# Define a package resource for Flask version 2.1.0
package { 'Flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  => Package['python3-pip'],
}
