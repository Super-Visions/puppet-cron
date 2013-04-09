#
# == Class: cron::service
#
# The cron::service starts, stops or restarts the cron service as needed.
#
# === Parameters
#
#   The defaults are fetched via hiera from cron::data.
#   They can also be set in any other hiera data file.
#
# [*cron_service*]
#   The service name to use.
#
# [*cron_service_enable*]
#   Enable or disable the service.
#
# === Variables
#
# No variables are used in the cron base class
#
# === Examples
#
#  class { 'cron::service': }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class cron::service(
  $cron_service = hiera('cron_service', 'crond' ),
  $cron_service_enable = hiera('cron_service_enable', true)
)
{
  service { $cron_service:
    ensure     => $cron_service_enable,
    enable     => $cron_service_enable,
    hasstatus  => $cron_service_enable,
    hasrestart => $cron_service_enable,
  }
}
