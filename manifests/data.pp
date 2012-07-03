#
# == Class: cron::data
#
# The cron::data class holds the defaults for all
# variables and parameters used in the cron class.
#
# === Parameters
#
# This class does not take parameters.
#
# === Variables
#
# [*cron_package*]
#   Default cron package name.
#
# [*cron_service*]
#   Default cron service name.
#
# [*cron_service_enable*]
#   Enable or disable cron.
#
# === Examples
#
#  class { 'cron::data': }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class cron::data
{
  $cron_service_enable = 'true' # MUST be single-quoted!
  case $::operatingsystem
  {
    centos, redhat: {
      $cron_package = 'cronie-anacron'
      $cron_service = 'crond'
    }
    ubuntu, debian: {
      $cron_package = 'cron'
      $cron_service = 'crond'
    }
    default:
    {
      fail("Unsupported OS: $::operatingsystem")
    }
  }
}
