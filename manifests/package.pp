#
# == Class: cron::package
#
# The cron::package class takes care of installing the cron package as needed
#
# === Parameters
#
#   The defaults are fetched via hiera from cron::data.
#   They can also be set in any other hiera data file.
#
# [*package_name*]
#   This parameter specifies the name of the package to install.
#
# === Variables
#
# No variables are used in the cron base class
#
# === Examples
#
#  class { 'cron::package': }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class cron::package( $package_name = hiera('cron_package') )
{
  package { $package_name:
      ensure => installed,
  }
}
