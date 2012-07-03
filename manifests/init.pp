#
# == Class: cron
#
# The cron class manges the crontab entries based on data stored in hiera
#
# === Parameters
#
# This class does not take parameters as all parameters are fetched via hiera
# The parameter defaults are stored in the cron::data class
#
# === Variables
#
# No variables are used in the cron base class
#
# === Examples
#
#  class { cron: }
#
# === Authors
#
# Stefan Goethals <stefan.goethals@super-visions.com>
#
# === Copyright
#
# Copyright 2012 Super-Visions, unless otherwise noted.
#
class cron
{
    anchor { 'cron::start': }->
    class { 'cron::package': }->
    class { 'cron::config': }~>
    class { 'cron::service': }->
    class { 'cron::entries': }->
    anchor { 'cron::end': }
}
