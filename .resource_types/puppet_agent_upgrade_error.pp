# This file was automatically generated on 2024-10-26 12:12:35 +0200.
# Use the 'puppet generate types' command to regenerate this file.

# Fails when a previous background installation failed. The type
# will check for the existance of an installation failure log
# and raise an error with the contents of the log if it exists
Puppet::Resource::ResourceType3.new(
  'puppet_agent_upgrade_error',
  [
    # whether or not the error log exists
    Puppet::Resource::Param(Any, 'ensure_notexist')
  ],
  [
    # The name of the failure log to check for in puppet's $statedir. If this log exists the resource will fail.
    Puppet::Resource::Param(Any, 'name', true),

    # The specific backend to use for this `puppet_agent_upgrade_error`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # puppet_agent_upgrade_error
    # : @summary This provider checks an error log from a previous puppet agent
    #   installation and will fail if the error log exists. The provider will delete
    #   the existing error log before failing so that after the failed puppet run the
    #   user can attempt the upgrade again.
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
