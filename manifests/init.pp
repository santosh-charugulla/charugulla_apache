class apache (
  $package_name = $::apache::params::package_name,
  $service_name = $::apache::params::service_name,
  $webpage_text = $::apache::params::webpage_text,
  ) inherits apache::params {

    class { '::apache::install':} ->
    class { '::apache::config': } ~>
    class { '::apache::service': } ->
    class ['::apache']
  }
