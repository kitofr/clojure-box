class users {

  user { "intelliplan":
    ensure => "present",
    shell => "/bin/bash",
    managehome => true,
  }

}
