# @api private
# @summary Defines configuration needed for converting PE 2018
#
class peadm::setup::convert_pre20197 {
  # This is needed so that compiler certs can be signed. It's included by
  # default in 2019.7 and newer, but isn't present in 2018.1. It would be
  # preferable to use the hocon_setting resource, but we can't because it
  # requires a gem not present by default. It would be preferable to use the
  # pe_hocon_setting resource, but we can't because there's no Forge module
  # that provides it for Bolt to use. So this is what we are reduced to.
  $caconf = @(EOF)
    # CA-related settings
    certificate-authority: {
      allow-subject-alt-names: true
      allow-authorization-extensions: true
    }
    | EOF

  file { '/etc/puppetlabs/puppetserver/conf.d/ca.conf':
    ensure  => file,
    content => $caconf,
    notify  => Service['pe-puppetserver'],
  }

  service { 'pe-puppetserver': }
}
