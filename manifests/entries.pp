#
# == Class: cron::entries
#
# The cron::entries class adds, modifies or removes the cron entries as needed
#
# === Parameters
#
#   The defaults are fetched via hiera from cron::data.
#   They can also be set in any other hiera data file.
#
# [*cron_entries*]
#   A hash specifying all needed params for the cron type
#
# === Variables
#
# No variables are used in the cron base class
#
# === Examples
#
#  class { 'cron::entries': }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class cron::entries( $cron_entries = hiera('cron_entries', {} ) )
{
  if( $cron_entries )
  {
    create_resources( cron, $cron_entries )
  }
}
