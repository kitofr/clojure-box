class leiningen::install($user) {
  include jdk

  $executable_url = "https://raw.github.com/technomancy/leiningen/preview/bin/lein"

  package { "leiningen/install-wget":
    name => "wget",
    ensure => present,
  }

  file { "leiningen/create-local-bin-folder":
    ensure => directory,
    path => "/home/$user/bin",
    owner => $user,
    group => $user,
    mode => '755',
  }

  exec { "leiningen/install-script":
    user => $user,
    group => $user,
    path => ["/bin", "/usr/bin", "/usr/local/bin"],
    cwd => "/home/$user/bin",
    command => "wget ${executable_url} && chmod 755 lein",
    creates => ["/home/$user/bin/lein",
                "/home/$user/.lein"],
    require => [File["leiningen/create-local-bin-folder"],
                Package["leiningen/install-wget"]],
  }

}
