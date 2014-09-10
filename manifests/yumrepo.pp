# == Define: types::yumrepo
#
define types::yumrepo (
  $baseurl,
  $descr    = undef,
  $enabled  = undef,
  $gpgcheck = undef,
  $gpgkey   = undef,
  $priority = undef,
  $exclude  = undef,
  $proxy    = undef,
) {

  yumrepo { $name:
    baseurl  => $baseurl,
    descr    => $descr,
    enabled  => $enabled,
    gpgcheck => $gpgcheck,
    gpgkey   => $gpgkey,
    priority => $priority,
    exclude  => $exclude,
    proxy    => $proxy,
  }
}
