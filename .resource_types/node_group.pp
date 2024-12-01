# This file was automatically generated on 2024-10-26 12:12:35 +0200.
# Use the 'puppet generate types' command to regenerate this file.

# The node_group type creates and manages node groups for the PE Node Manager
Puppet::Resource::ResourceType3.new(
  'node_group',
  [
    # The basic property that the resource should be in.
    # 
    # Valid values are `present`, `absent`.
    Puppet::Resource::Param(Enum['present', 'absent'], 'ensure'),

    # The ID of the group
    Puppet::Resource::Param(Any, 'id'),

    # Override parent environments
    Puppet::Resource::Param(Any, 'override_environment'),

    # The ID of the parent group
    Puppet::Resource::Param(Any, 'parent'),

    # Variables set this group's scope
    Puppet::Resource::Param(Any, 'variables'),

    # Match conditions for this group
    Puppet::Resource::Param(Any, 'rule'),

    # Environment for this group
    Puppet::Resource::Param(Any, 'environment'),

    # Classes applied to this group
    Puppet::Resource::Param(Any, 'classes'),

    # Data applied to this group
    Puppet::Resource::Param(Any, 'data'),

    # Description of this group
    Puppet::Resource::Param(Any, 'description')
  ],
  [
    # This is the common name for the node group
    Puppet::Resource::Param(Any, 'name', true),

    # Whether or not to remove data or class parameters not specified
    # 
    # Valid values are `none`, `data`, `classes`, `rule`, `all`.
    Puppet::Resource::Param(Enum['none', 'data', 'classes', 'rule', 'all'], 'purge_behavior'),

    # The specific backend to use for this `node_group`
    # resource. You will seldom need to specify this --- Puppet will usually
    # discover the appropriate provider for your platform.Available providers are:
    # 
    # https
    # : * Default for `feature` == `posix`.
    # 
    # puppetclassify
    # :
    Puppet::Resource::Param(Any, 'provider')
  ],
  {
    /(?m-ix:(.*))/ => ['name']
  },
  true,
  false)
