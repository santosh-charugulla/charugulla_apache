class apache::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'httpd'
      $service_name = 'httpd'
     }
    'RedHat','Amazon': {
      $package_name = 'httpd'
      $service_name = 'httpd'
     }
     default: {
      fail("${::operatingsystem} not supported")
     }
  }

  $webpage_text = 'Puppet is here 2016'

}
