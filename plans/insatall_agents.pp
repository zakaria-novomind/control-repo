plan mzboltproject::insatall_agents(
  TargetSpec $targets
) {
  out::message('starting install agents')

  get_targets($targets).each |Target $host| {
    run_task('puppet_agent::install',$host)
  }
}
