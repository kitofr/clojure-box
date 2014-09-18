class git($user="vagrant") {
  package { "git":
    ensure => present,
  }  

  file { "git/create-remote-directory":
    ensure => directory,
    path => "/home/$user/git",
    owner => $user,
    group => $user,
    mode => '755',
  }

  exec { "git/initialize-repo":
    user => $user,
    group => $user,
    path => ["/bin", "/usr/bin", "/usr/local/bin"],
    cwd => "/home/$user/git",
    command => "git --bare init",
    require => [File["git/create-remote-directory"]],
    before => File["/home/$user/git/hooks/post-receive"]
  }

  file { "/home/$user/git/hooks/post-receive":
    ensure => present,
    owner => $user,
    group => $user,
    mode => '755',
    source => "puppet:///modules/git/post-receive",
  }
}
