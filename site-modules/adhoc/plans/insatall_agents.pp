plan mzboltproject::insatall_agents(
  TargetSpec $hosts
) {
  out::message('starting install agents')

  get_targets($hosts).each |Target $host| {
    run_task('puppet_agent::install',$host)
  }
}
